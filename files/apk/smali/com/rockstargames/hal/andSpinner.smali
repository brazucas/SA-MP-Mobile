.class public Lcom/rockstargames/hal/andSpinner;
.super Lcom/rockstargames/hal/andView;
.source "andSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;
    }
.end annotation


# static fields
.field static staticCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 11
    new-instance v0, Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;-><init>(Lcom/rockstargames/hal/andSpinner;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andSpinner;->setView(Landroid/view/View;)V

    .line 12
    sget v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    .line 13
    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andSpinner;
    .locals 1
    .param p0, "handle"    # I

    .prologue
    .line 23
    new-instance v0, Lcom/rockstargames/hal/andSpinner;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andSpinner;-><init>(I)V

    return-object v0
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
    .line 17
    sget v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    .line 18
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    .line 19
    return-void
.end method
