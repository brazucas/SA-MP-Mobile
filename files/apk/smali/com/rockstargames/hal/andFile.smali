.class public Lcom/rockstargames/hal/andFile;
.super Ljava/lang/Object;
.source "andFile.java"


# static fields
.field private static checkedForObbVersion:Z

.field public static obbMainVersion:I

.field public static obbPatchVersion:I

.field private static zipFileSoftRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/vending/expansion/zipfile/ZipResourceFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/andFile;->zipFileSoftRef:Ljava/lang/ref/SoftReference;

    .line 22
    sget v0, Lcom/rockstargames/hal/DEFINES;->OBB_MAIN_VERSION:I

    sput v0, Lcom/rockstargames/hal/andFile;->obbMainVersion:I

    .line 23
    sget v0, Lcom/rockstargames/hal/DEFINES;->OBB_PATCH_VERSION:I

    sput v0, Lcom/rockstargames/hal/andFile;->obbPatchVersion:I

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/andFile;->checkedForObbVersion:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkObbFiles()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "found":Z
    sget-object v0, Lcom/rockstargames/hal/DEFINES;->OBBS:[Lcom/rockstargames/hal/DEFINES$ObbInfo;

    .local v0, "arr$":[Lcom/rockstargames/hal/DEFINES$ObbInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 32
    .local v5, "o":Lcom/rockstargames/hal/DEFINES$ObbInfo;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget v8, v5, Lcom/rockstargames/hal/DEFINES$ObbInfo;->version:I

    invoke-static {v7, v10, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "filename":Ljava/lang/String;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, v5, Lcom/rockstargames/hal/DEFINES$ObbInfo;->size:J

    invoke-static {v7, v1, v8, v9, v10}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    iget v7, v5, Lcom/rockstargames/hal/DEFINES$ObbInfo;->version:I

    sput v7, Lcom/rockstargames/hal/andFile;->obbMainVersion:I

    .line 37
    iget v7, v5, Lcom/rockstargames/hal/DEFINES$ObbInfo;->version:I

    sput v7, Lcom/rockstargames/hal/andFile;->obbPatchVersion:I

    .line 38
    const/4 v2, 0x1

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "filename":Ljava/lang/String;
    .end local v5    # "o":Lcom/rockstargames/hal/DEFINES$ObbInfo;
    :cond_1
    const/4 v6, 0x0

    .line 44
    .local v6, "ret":Z
    if-eqz v2, :cond_3

    .line 46
    sget v7, Lcom/rockstargames/hal/andFile;->obbMainVersion:I

    sget v8, Lcom/rockstargames/hal/DEFINES;->OBB_MAIN_VERSION:I

    if-eq v7, v8, :cond_2

    .line 48
    const-string v7, "andFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using OBB version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/rockstargames/hal/andFile;->obbMainVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_1
    const/4 v6, 0x1

    .line 62
    :goto_2
    sput-boolean v10, Lcom/rockstargames/hal/andFile;->checkedForObbVersion:Z

    .line 64
    return v6

    .line 52
    :cond_2
    const-string v7, "andFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using OBB version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/rockstargames/hal/andFile;->obbMainVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 59
    :cond_3
    const-string v7, "andFile"

    const-string v8, "No OBB file found!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getAssetFileDescriptor(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "forceAPK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "forceAPK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, "useApkAssets":Z
    :try_start_0
    const-string v8, "xml"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 116
    const-string p0, "xml"

    .line 117
    const/4 v7, 0x1

    .line 132
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_0
    const-string v8, ""

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 137
    .local v4, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/high16 v8, 0x20000

    new-array v1, v8, [B

    .line 140
    .local v1, "buffer":[B
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_5

    .line 141
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 150
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "andFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem loading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v6, 0x0

    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    return-object v6

    .line 119
    :cond_1
    :try_start_1
    const-string v8, "json"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    const-string p0, "json"

    .line 122
    const/4 v7, 0x1

    goto :goto_0

    .line 124
    :cond_2
    const-string v8, "png"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 126
    const-string p0, "images"

    .line 127
    const/4 v7, 0x1

    goto :goto_0

    .line 130
    :cond_3
    const-string p0, ""

    goto :goto_0

    .line 132
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 143
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 144
    .local v6, "ret":[B
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private static getZipFile()Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v1, Lcom/rockstargames/hal/andFile;->checkedForObbVersion:Z

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lcom/rockstargames/hal/andFile;->checkObbFiles()Z

    .line 74
    :cond_0
    sget-object v1, Lcom/rockstargames/hal/andFile;->zipFileSoftRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/rockstargames/hal/andFile;->zipFileSoftRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-object v0, v1

    .line 76
    .local v0, "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :goto_0
    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/rockstargames/hal/andFile;->obbMainVersion:I

    sget v3, Lcom/rockstargames/hal/andFile;->obbPatchVersion:I

    invoke-static {v1, v2, v3}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/rockstargames/hal/andFile;->zipFileSoftRef:Ljava/lang/ref/SoftReference;

    .line 82
    :cond_1
    return-object v0

    .line 74
    .end local v0    # "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readUserFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 192
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 194
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 197
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const v4, 0x8000

    new-array v1, v4, [B

    .line 198
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 200
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "read":I
    :catch_0
    move-exception v4

    .line 211
    if-eqz v2, :cond_0

    .line 215
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 224
    :cond_0
    :goto_1
    const/4 v4, 0x0

    :cond_1
    :goto_2
    return-object v4

    .line 203
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "read":I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 211
    if-eqz v2, :cond_1

    .line 215
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 217
    :catch_1
    move-exception v5

    goto :goto_2

    .line 211
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "read":I
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 215
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 220
    :cond_3
    :goto_3
    throw v4

    .line 217
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method public static writeUserFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 162
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 165
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v2, :cond_0

    .line 177
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v2, :cond_0

    .line 177
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 177
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    :cond_1
    :goto_1
    throw v3

    .line 179
    :catch_3
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method
