.class Lcom/wardrumstudios/utils/WarMedia$11$1;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wardrumstudios/utils/WarMedia$11;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia$11;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "KeyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1053
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iget v0, v0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    if-ne v0, v1, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    .line 1055
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    invoke-virtual {v0}, Lcom/wardrumstudios/utils/WarMedia;->finish()V

    .line 1065
    :cond_0
    :goto_0
    return v2

    .line 1059
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1061
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/wardrumstudios/utils/WarMedia$11$1;->this$1:Lcom/wardrumstudios/utils/WarMedia$11;

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$11;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput v1, v0, Lcom/wardrumstudios/utils/WarMedia;->IsShowingBackMessage:I

    goto :goto_0
.end method
