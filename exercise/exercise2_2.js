const fs = require('fs').promises;
const path = require('path');
const util = require('util');

const dirsearch = async(current) =>{
    const list = await fs.readdir(current,{withFileTypes:true});
    for(const entry of list){
        const fullPath = path.join(current, entry.name);
        if(entry.isDirectory()){
            await dirsearch(fullPath);
        }else{
            if(path.extname(fullPath) === '.js'){
                console.log(fullPath);
            }
        }
    }
}

dirsearch('./test');