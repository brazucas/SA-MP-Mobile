.class public final Lorg/apache/commons/net/nntp/NewsgroupInfo;
.super Ljava/lang/Object;
.source "NewsgroupInfo.java"


# static fields
.field public static final MODERATED_POSTING_PERMISSION:I = 0x1

.field public static final PERMITTED_POSTING_PERMISSION:I = 0x2

.field public static final PROHIBITED_POSTING_PERMISSION:I = 0x3

.field public static final UNKNOWN_POSTING_PERMISSION:I


# instance fields
.field private __estimatedArticleCount:J

.field private __firstArticle:J

.field private __lastArticle:J

.field private __newsgroup:Ljava/lang/String;

.field private __postingPermission:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method _setArticleCount(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__estimatedArticleCount:J

    .line 69
    return-void
.end method

.method _setFirstArticle(J)V
    .locals 1
    .param p1, "first"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__firstArticle:J

    .line 74
    return-void
.end method

.method _setLastArticle(J)V
    .locals 1
    .param p1, "last"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__lastArticle:J

    .line 79
    return-void
.end method

.method _setNewsgroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsgroup"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__newsgroup:Ljava/lang/String;

    .line 64
    return-void
.end method

.method _setPostingPermission(I)V
    .locals 0
    .param p1, "permission"    # I

    .prologue
    .line 83
    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__postingPermission:I

    .line 84
    return-void
.end method

.method public getArticleCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__estimatedArticleCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getArticleCountLong()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__estimatedArticleCount:J

    return-wide v0
.end method

.method public getFirstArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__firstArticle:J

    long-to-int v0, v0

    return v0
.end method

.method public getFirstArticleLong()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__firstArticle:J

    return-wide v0
.end method

.method public getLastArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__lastArticle:J

    long-to-int v0, v0

    return v0
.end method

.method public getLastArticleLong()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__lastArticle:J

    return-wide v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__newsgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPostingPermission()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__postingPermission:I

    return v0
.end method
