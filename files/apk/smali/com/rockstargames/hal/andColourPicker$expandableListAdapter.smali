.class public Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "andColourPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andColourPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "expandableListAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

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

.field final synthetic this$0:Lcom/rockstargames/hal/andColourPicker;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andColourPicker;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p2, "c"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/andColourPicker$SelectorGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "source":Ljava/util/List;, "Ljava/util/List<Lcom/rockstargames/hal/andColourPicker$SelectorGroup;>;"
    const/4 v0, 0x0

    .line 338
    iput-object p1, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 334
    iput-object v0, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->context:Landroid/app/Activity;

    .line 335
    iput-object v0, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->dataSource:Ljava/util/List;

    .line 339
    iput-object p2, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->context:Landroid/app/Activity;

    .line 340
    iput-object p3, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->dataSource:Ljava/util/List;

    .line 341
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    invoke-virtual {v0, p2}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 365
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 395
    invoke-virtual/range {p0 .. p1}, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 396
    .local v12, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    invoke-virtual/range {p0 .. p2}, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;

    .line 398
    .local v5, "colourItem":Lcom/rockstargames/hal/andColourPicker$SelectorItem;
    if-nez p4, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->context:Landroid/app/Activity;

    move-object/from16 v23, v0

    const-string v24, "layout_inflater"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 402
    .local v17, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "colourpickerchilditem"

    const-string v25, "layout"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 403
    .local v11, "colourpickerchilditem":I
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 407
    .end local v11    # "colourpickerchilditem":I
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "colourName"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 408
    .local v7, "colourName":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 409
    .local v8, "colourNameTV":Landroid/widget/TextView;
    iget-object v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "colourCost"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 413
    .local v3, "colourCost":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 414
    .local v4, "colourCostTV":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/rockstargames/hal/andColourPicker;->access$200(Lcom/rockstargames/hal/andColourPicker;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 415
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "$"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->CostMP:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/rockstargames/hal/andColourPicker;->access$300(Lcom/rockstargames/hal/andColourPicker;)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :goto_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "colourOverlayImage"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 421
    .local v15, "icolourOverlayImage":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 423
    .local v10, "colourOverlayImage":Landroid/widget/ImageView;
    const/4 v2, 0x0

    .line 424
    .local v2, "backgroundView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/rockstargames/hal/andColourPicker;->access$400(Lcom/rockstargames/hal/andColourPicker;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 426
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "highlightps3"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 427
    .local v14, "highlightps3":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 434
    .end local v14    # "highlightps3":I
    :goto_1
    iget-boolean v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Selected:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 436
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :goto_2
    iget-boolean v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Fitted:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/rockstargames/hal/andColourPicker;->access$500(Lcom/rockstargames/hal/andColourPicker;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_1
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "colourLock"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 451
    .local v6, "colourLock":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 452
    .local v18, "lockedView":Landroid/view/View;
    iget-boolean v0, v12, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->Locked:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    iget-boolean v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Locked:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 454
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/rockstargames/hal/andColourPicker;->access$600(Lcom/rockstargames/hal/andColourPicker;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :goto_3
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "colourNone"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 464
    .local v9, "colourNone":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 466
    .local v19, "noneView":Landroid/view/View;
    iget-object v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/rockstargames/hal/andColourPicker;->access$700(Lcom/rockstargames/hal/andColourPicker;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_7

    .line 468
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "imageView1"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 471
    .local v16, "imageView1":I
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 472
    .local v22, "v":Landroid/view/View;
    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 491
    .end local v16    # "imageView1":I
    .end local v22    # "v":Landroid/view/View;
    :goto_4
    return-object p4

    .line 417
    .end local v2    # "backgroundView":Landroid/view/View;
    .end local v6    # "colourLock":I
    .end local v9    # "colourNone":I
    .end local v10    # "colourOverlayImage":Landroid/widget/ImageView;
    .end local v15    # "icolourOverlayImage":I
    .end local v18    # "lockedView":Landroid/view/View;
    .end local v19    # "noneView":Landroid/view/View;
    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "$"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Cost:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->this$0:Lcom/rockstargames/hal/andColourPicker;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/rockstargames/hal/andColourPicker;->access$300(Lcom/rockstargames/hal/andColourPicker;)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 430
    .restart local v2    # "backgroundView":Landroid/view/View;
    .restart local v10    # "colourOverlayImage":Landroid/widget/ImageView;
    .restart local v15    # "icolourOverlayImage":I
    :cond_4
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "highlight360"

    const-string v25, "id"

    invoke-static/range {v23 .. v25}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 431
    .local v13, "highlight360":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1

    .line 440
    .end local v13    # "highlight360":I
    :cond_5
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 459
    .restart local v6    # "colourLock":I
    .restart local v18    # "lockedView":Landroid/view/View;
    :cond_6
    const/16 v23, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 476
    .restart local v9    # "colourNone":I
    .restart local v19    # "noneView":Landroid/view/View;
    :cond_7
    new-instance v21, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 478
    .local v21, "shape":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v20, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 479
    .local v20, "overlay":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v23

    iget v0, v5, Lcom/rockstargames/hal/andColourPicker$SelectorItem;->Colour:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 481
    const/16 v23, 0x1e

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 482
    const/16 v23, 0x1e

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 484
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 360
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 370
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;

    .line 372
    .local v3, "group":Lcom/rockstargames/hal/andColourPicker$SelectorGroup;
    if-nez p3, :cond_0

    .line 374
    iget-object v6, p0, Lcom/rockstargames/hal/andColourPicker$expandableListAdapter;->context:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 376
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "colourpickergroupitem"

    const-string v8, "layout"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "colourpickergroupitem":I
    invoke-virtual {v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 381
    .end local v1    # "colourpickergroupitem":I
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "colourgroup"

    const-string v8, "layout"

    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->GetResourceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "colourgroup":I
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 383
    .local v5, "tv":Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 384
    iget-object v6, v3, Lcom/rockstargames/hal/andColourPicker$SelectorGroup;->DisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p4

    .line 387
    check-cast v2, Landroid/widget/ExpandableListView;

    .line 388
    .local v2, "e":Landroid/widget/ExpandableListView;
    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 390
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method
