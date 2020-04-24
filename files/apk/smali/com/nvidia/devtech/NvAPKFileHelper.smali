.class public Lcom/nvidia/devtech/NvAPKFileHelper;
.super Ljava/lang/Object;
.source "NvAPKFileHelper.java"


# static fields
.field private static instance:Lcom/nvidia/devtech/NvAPKFileHelper;

.field private static final logAssetFiles:Z


# instance fields
.field apkCount:I

.field apkFiles:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field hasAPKFiles:Z

.field myApkCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/nvidia/devtech/NvAPKFileHelper;

    invoke-direct {v0}, Lcom/nvidia/devtech/NvAPKFileHelper;-><init>()V

    sput-object v0, Lcom/nvidia/devtech/NvAPKFileHelper;->instance:Lcom/nvidia/devtech/NvAPKFileHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    .line 54
    iput v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    .line 55
    iput v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    .line 57
    iput-boolean v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->hasAPKFiles:Z

    return-void
.end method

.method private findInAPKFiles(Ljava/lang/String;)I
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 61
    iget v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    if-nez v3, :cond_1

    move v0, v2

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "mp3Test":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 64
    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 72
    goto :goto_0
.end method

.method public static getInstance()Lcom/nvidia/devtech/NvAPKFileHelper;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nvidia/devtech/NvAPKFileHelper;->instance:Lcom/nvidia/devtech/NvAPKFileHelper;

    return-object v0
.end method


# virtual methods
.method AddAssetFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    iget v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    aput-object p1, v0, v1

    .line 81
    return-void
.end method

.method GetAssetList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 123
    :try_start_0
    iget-object v6, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "assetfile.txt"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 124
    .local v2, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v5, "r":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "line":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 129
    .local v4, "listCount":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    .line 130
    if-lez v4, :cond_0

    .line 131
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 132
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v6, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    iget v7, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->myApkCount:I

    aput-object v3, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "listCount":I
    .end local v5    # "r":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 139
    .local v0, "assets":Landroid/content/res/AssetManager;
    const-string v6, ""

    invoke-virtual {p0, v0, v6, v9}, Lcom/nvidia/devtech/NvAPKFileHelper;->getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 140
    const-string v6, ""

    iget v7, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    invoke-virtual {p0, v0, v6, v7}, Lcom/nvidia/devtech/NvAPKFileHelper;->getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 142
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public closeFileAndroid(Lcom/nvidia/devtech/NvAPKFile;)V
    .locals 1
    .param p1, "strm"    # Lcom/nvidia/devtech/NvAPKFile;

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->data:[B

    .line 244
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    .line 245
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 8
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "listCount"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "count":I
    :try_start_0
    iget-object v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    if-nez v5, :cond_0

    if-lez p3, :cond_0

    new-array v5, p3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 88
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "myFiles":[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_4

    .line 91
    if-lez p3, :cond_2

    .line 92
    invoke-virtual {p0, p2}, Lcom/nvidia/devtech/NvAPKFileHelper;->AddAssetFile(Ljava/lang/String;)V

    .line 102
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 104
    aget-object v5, v3, v2

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "newFile":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, p1, v4, p3}, Lcom/nvidia/devtech/NvAPKFileHelper;->getDirectoryListing(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 102
    .end local v4    # "newFile":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v2    # "i":I
    :cond_2
    iget v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v3    # "myFiles":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: getDirectoryListing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    return v0

    .line 96
    .restart local v3    # "myFiles":[Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_1

    goto :goto_0

    .line 105
    .restart local v2    # "i":I
    :cond_5
    :try_start_1
    aget-object v4, v3, v2

    goto :goto_2

    .line 108
    :cond_6
    if-lez p3, :cond_8

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {p0, v5}, Lcom/nvidia/devtech/NvAPKFileHelper;->AddAssetFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    aget-object v5, v3, v2

    goto :goto_4

    .line 111
    :cond_8
    iget v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public openFileAndroid(Ljava/lang/String;)Lcom/nvidia/devtech/NvAPKFile;
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 146
    iget-boolean v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->hasAPKFiles:Z

    if-nez v5, :cond_0

    .line 147
    iput v6, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkCount:I

    .line 148
    iput-object v4, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/nvidia/devtech/NvAPKFileHelper;->GetAssetList()V

    .line 150
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->hasAPKFiles:Z

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/nvidia/devtech/NvAPKFileHelper;->findInAPKFiles(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "apkIndex":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    move-object v2, v4

    .line 176
    :goto_0
    return-object v2

    .line 155
    :cond_1
    new-instance v2, Lcom/nvidia/devtech/NvAPKFile;

    invoke-direct {v2}, Lcom/nvidia/devtech/NvAPKFile;-><init>()V

    .line 156
    .local v2, "ret":Lcom/nvidia/devtech/NvAPKFile;
    iput-object v4, v2, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    .line 157
    iput v6, v2, Lcom/nvidia/devtech/NvAPKFile;->length:I

    .line 158
    iput v6, v2, Lcom/nvidia/devtech/NvAPKFile;->position:I

    .line 159
    iput v6, v2, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->apkFiles:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v2, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    .line 164
    iget-object v4, v2, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 165
    .local v3, "size":I
    iput v3, v2, Lcom/nvidia/devtech/NvAPKFile;->length:I

    .line 166
    iget-object v4, v2, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->mark(I)V

    .line 167
    const/16 v4, 0x400

    iput v4, v2, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    .line 168
    iget v4, v2, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    new-array v4, v4, [B

    iput-object v4, v2, Lcom/nvidia/devtech/NvAPKFile;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e2":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readFileAndroid(Lcom/nvidia/devtech/NvAPKFile;I)V
    .locals 3
    .param p1, "strm"    # Lcom/nvidia/devtech/NvAPKFile;
    .param p2, "size"    # I

    .prologue
    .line 181
    iget v0, p1, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    if-le p2, v0, :cond_0

    .line 183
    new-array v0, p2, [B

    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->data:[B

    .line 184
    iput p2, p1, Lcom/nvidia/devtech/NvAPKFile;->bufferSize:I

    .line 188
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    iget-object v1, p1, Lcom/nvidia/devtech/NvAPKFile;->data:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    .line 189
    iget v0, p1, Lcom/nvidia/devtech/NvAPKFile;->position:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/nvidia/devtech/NvAPKFile;->position:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public seekFileAndroid(Lcom/nvidia/devtech/NvAPKFile;I)J
    .locals 10
    .param p1, "strm"    # Lcom/nvidia/devtech/NvAPKFile;
    .param p2, "offset"    # I

    .prologue
    .line 201
    const/16 v0, 0x80

    .line 202
    .local v0, "MAX_ITERATION":I
    const-wide/16 v6, 0x0

    .line 203
    .local v6, "totalSkip":J
    const/16 v1, 0x80

    .line 205
    .local v1, "count":I
    const-wide/16 v4, 0x0

    .line 209
    .local v4, "skippedBytes":J
    :try_start_0
    iget-object v3, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :goto_0
    if-lez p2, :cond_0

    if-lez v1, :cond_0

    .line 214
    :try_start_1
    iget-object v3, p1, Lcom/nvidia/devtech/NvAPKFile;->is:Ljava/io/InputStream;

    int-to-long v8, p2

    invoke-virtual {v3, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 221
    :goto_1
    add-long/2addr v6, v4

    .line 222
    int-to-long v8, p2

    sub-long/2addr v8, v4

    long-to-int p2, v8

    .line 223
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 230
    :cond_0
    long-to-int v3, v6

    iput v3, p1, Lcom/nvidia/devtech/NvAPKFile;->position:I

    .line 231
    return-wide v6
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    .line 47
    return-void
.end method
