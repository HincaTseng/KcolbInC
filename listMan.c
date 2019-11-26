//
//  listMan.c
//  TestPRJ
//
//  Created by  on 2019/11/26.
//  Copyright © 2019 . All rights reserved.
//

#include "listMan.h"
#include <stdlib.h>


void addList(int cmd) {
   
//    FILE * pFile;
//       int buffer[] = {1, 2, 3, 4};
//     pFile = fopen ("myfile", "wb+");
//       if(pFile == NULL)
//       {
//           printf("cant open the file");
//           exit(0);
//      }
//      //可以写多个连续的数据(这里一次写4个)
//      fwrite (buffer , sizeof(int), 4, pFile);
//      fclose (pFile);
    
    
    
}

void inits () {
   FILE * fp=NULL;

     fp=fopen("/Users/ze/Desktop/TestPRJ/TestPRJ/telbook", "wb");

     int count=0;

     if (fp==NULL)   //没有这个文件就把这个文件创建出来

     {
         fp=fopen("/Users/ze/Desktop/TestPRJ/TestPRJ/telbook", "wb");

         fwrite(&count, sizeof(count), 1, fp);

         fclose(fp);

     }
  
}

//文件写入

void write_file(int cmd){

        FILE* fp;

        fp=fopen("/Users/ze/Desktop/TestPRJ/TestPRJ/telbook","wb");

        fwrite(&cmd, sizeof(int), 1, fp);


        fclose(fp);

 

}

void read_file(){
    FILE * fp;
          int buffer;
          if((fp=fopen("/Users/ze/Desktop/TestPRJ/TestPRJ/telbook","rb"))==NULL)
        {
        printf("cant open the file");
           exit(0);
         }
         if(fread(&buffer,sizeof(int),1,fp)!=1)   //可以一次读取
         {
             printf("file read error\n");
             exit(0);
         }
    
//        for(int i=0;i<4;i++)
            printf("%d\n",buffer);
}
