.class public Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;
.super Landroid/widget/ExpandableListView;
.source "andColourPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andColourPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andColourPickerImpl"
.end annotation


# instance fields
.field private dataSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/andColourPicker$SelectorGroup;",
            ">;"
        }
    .end annotation
.end field

.field private parentPicker:Lcom/rockstargames/hal/andColourPicker;

.field private previousFittedColour:I

.field private previousFittedGroup:I

.field private previousSelectedColour:I

.field private previousSelectedGroup:I

.field final synthetic this$0:Lcom/rockstargames/hal/andColourPicker;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andColourPicker;Lcom/rockstargames/hal/andColourPicker;Ljava/util/List;)V
    .locals 3
    .param p2, "parent"    # Lcom/rockstargames/hal/andColourPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rockstargames/hal/andColourPicker;",
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/andColourPicker$SelectorGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "source":Ljava/util/List;, "Ljava/util/List<Lcom/rockstargames/hal/andColourPicker$SelectorGroup;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 202
    iput-object p1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->this$0:Lcom/rockstargames/hal/andColourPicker;

    .line 203
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 193
    iput-object v2, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->parentPicker:Lcom/rockstargames/hal/andColourPicker;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    .line 195
    iput v1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousSelectedGroup:I

    .line 196
    iput v1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousSelectedColour:I

    .line 197
    iput v1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedGroup:I

    .line 198
    iput v1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I

    .line 205
    iput-object p2, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->parentPicker:Lcom/rockstargames/hal/andColourPicker;

    .line 206
    iput-object p3, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->setChoiceMode(I)V

    .line 210
    invoke-virtual {p0, v2}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->setSoundEffectsEnabled(Z)V

    .line 213
    return-void
.end method

.method private ReportPickerStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 316
    const-string v2, "ColourPicker Status - \n"

    .line 318
    .local v2, "returnString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataSource.size() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 323
    .local v0, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public SetFittedItem(II)V
    .locals 8
    .param p1, "groupIndex"    # I
    .param p2, "colourIndex"    # I

    .prologue
    .line 284
    :try_start_0
    iget v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I

    if-ltz v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    iget v6, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedGroup:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 287
    .local v3, "prevGroup":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    iget v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I

    invoke-virtual {v3, v5}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 288
    .local v4, "prevItem":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Fitted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v3    # "prevGroup":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    .end local v4    # "prevItem":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 301
    .local v1, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    invoke-virtual {v1, p2}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 302
    .local v2, "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Fitted:Z

    .line 303
    iput p1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedGroup:I

    .line 304
    iput p2, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    .end local v1    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    .end local v2    # "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :goto_1
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "andColourPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception resetting fitted item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->ReportPickerStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/rockstargames/hal/ActivityWrapper;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "andColourPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception setting fitted item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->ReportPickerStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/rockstargames/hal/ActivityWrapper;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public SetSelectedItem(II)V
    .locals 8
    .param p1, "groupIndex"    # I
    .param p2, "colourIndex"    # I

    .prologue
    .line 247
    :try_start_0
    iget v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousSelectedColour:I

    if-ltz v5, :cond_0

    .line 249
    iget-object v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    iget v6, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousSelectedGroup:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 250
    .local v3, "prevGroup":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    iget v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousSelectedColour:I

    invoke-virtual {v3, v5}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 251
    .local v4, "prevItem":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Selected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v3    # "prevGroup":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    .end local v4    # "prevItem":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 264
    .local v1, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    invoke-virtual {v1, p2}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 265
    .local v2, "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Selected:Z

    .line 266
    iput p1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousSelectedGroup:I

    .line 267
    iput p2, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousSelectedColour:I

    .line 269
    invoke-virtual {p0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->invalidateViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .end local v1    # "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    .end local v2    # "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :goto_1
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "andColourPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception resetting selected item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->ReportPickerStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/rockstargames/hal/ActivityWrapper;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "andColourPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception setting selected item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->previousFittedColour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->ReportPickerStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/rockstargames/hal/ActivityWrapper;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onChildClick(II)V
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->dataSource:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    invoke-virtual {v0, p2}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 220
    .local v8, "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    iget-boolean v0, v8, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Locked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->parentPicker:Lcom/rockstargames/hal/andColourPicker;

    iget-object v1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->parentPicker:Lcom/rockstargames/hal/andColourPicker;

    iget v1, v1, Lcom/rockstargames/hal/andColourPicker;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andColourPicker;->onTryLocked(I)V

    .line 240
    .end local v8    # "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :goto_0
    return-void

    .line 226
    .restart local v8    # "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :cond_0
    iget v0, v8, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Colour:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 227
    .local v2, "r":I
    iget v0, v8, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Colour:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 228
    .local v3, "g":I
    iget v0, v8, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Colour:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 229
    .local v4, "b":I
    iget v0, v8, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Colour:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    .line 231
    .local v5, "a":I
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->parentPicker:Lcom/rockstargames/hal/andColourPicker;

    iget-object v1, p0, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->parentPicker:Lcom/rockstargames/hal/andColourPicker;

    iget v1, v1, Lcom/rockstargames/hal/andColourPicker;->handle:I

    iget v6, v8, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Index:I

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andColourPicker;->onChildClick(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v2    # "r":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    .end local v5    # "a":I
    .end local v8    # "item":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    :catch_0
    move-exception v7

    .line 236
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "andColourPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in onChildClick "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/rockstargames/hal/andColourPicker$andColourPickerImpl;->ReportPickerStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/rockstargames/hal/ActivityWrapper;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
