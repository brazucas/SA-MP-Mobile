.class public Lcom/rockstargames/hal/andTable;
.super Lcom/rockstargames/hal/andView;
.source "andTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andTable$andTableImpl;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field protected count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/rockstargames/hal/andTable;->count:I

    .line 21
    new-instance v0, Lcom/rockstargames/hal/andTable$andTableImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTable$andTableImpl;-><init>(Lcom/rockstargames/hal/andTable;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTable;->setView(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/andTable;III)Lcom/rockstargames/hal/andView;
    .locals 1
    .param p0, "x0"    # Lcom/rockstargames/hal/andTable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/rockstargames/hal/andTable;->getCell(III)Lcom/rockstargames/hal/andView;

    move-result-object v0

    return-object v0
.end method

.method public static createView(I)Lcom/rockstargames/hal/andTable;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 34
    new-instance v0, Lcom/rockstargames/hal/andTable;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTable;-><init>(I)V

    return-object v0
.end method

.method private native getCell(III)Lcom/rockstargames/hal/andView;
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    sget v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    .line 28
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 29
    return-void
.end method

.method protected getTable()Lcom/rockstargames/hal/andTable$andTableImpl;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rockstargames/hal/andTable;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTable$andTableImpl;

    return-object v0
.end method

.method public setCellCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/rockstargames/hal/andTable;->count:I

    .line 47
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTable;->getTable()Lcom/rockstargames/hal/andTable$andTableImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andTable$andTableImpl;->notifyObservers()V

    .line 48
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTable;->getTable()Lcom/rockstargames/hal/andTable$andTableImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andTable$andTableImpl;->invalidate()V

    .line 49
    return-void
.end method
