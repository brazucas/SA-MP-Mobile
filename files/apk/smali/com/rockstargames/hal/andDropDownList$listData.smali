.class public Lcom/rockstargames/hal/andDropDownList$listData;
.super Ljava/lang/Object;
.source "andDropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andDropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "listData"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field label:Ljava/lang/String;

.field final synthetic this$0:Lcom/rockstargames/hal/andDropDownList;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDropDownList;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/rockstargames/hal/andDropDownList$listData;->this$0:Lcom/rockstargames/hal/andDropDownList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rockstargames/hal/andDropDownList$listData;->label:Ljava/lang/String;

    return-object v0
.end method
