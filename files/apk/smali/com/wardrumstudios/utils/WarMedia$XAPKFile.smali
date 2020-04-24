.class public Lcom/wardrumstudios/utils/WarMedia$XAPKFile;
.super Ljava/lang/Object;
.source "WarMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wardrumstudios/utils/WarMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "XAPKFile"
.end annotation


# instance fields
.field public final mFileSize:J

.field public final mFileVersion:I

.field public final mIsMain:Z


# direct methods
.method public constructor <init>(ZIJ)V
    .locals 1
    .param p1, "isMain"    # Z
    .param p2, "fileVersion"    # I
    .param p3, "fileSize"    # J

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean p1, p0, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mIsMain:Z

    .line 151
    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileVersion:I

    .line 152
    iput-wide p3, p0, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;->mFileSize:J

    .line 153
    return-void
.end method
