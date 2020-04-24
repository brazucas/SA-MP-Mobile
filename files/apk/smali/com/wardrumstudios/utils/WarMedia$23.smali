.class Lcom/wardrumstudios/utils/WarMedia$23;
.super Ljava/lang/Object;
.source "WarMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarMedia;->DisplaySplashScreen(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarMedia;

.field final synthetic val$splashPng:Ljava/lang/String;

.field final synthetic val$splashTimer:I


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarMedia;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    iput p2, p0, Lcom/wardrumstudios/utils/WarMedia$23;->val$splashTimer:I

    iput-object p3, p0, Lcom/wardrumstudios/utils/WarMedia$23;->val$splashPng:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 2582
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/wardrumstudios/utils/WarMedia$23$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wardrumstudios/utils/WarMedia$23$1;-><init>(Lcom/wardrumstudios/utils/WarMedia$23;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->val$splashTimer:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2589
    const/16 v8, 0x14

    .line 2590
    .local v8, "margin":I
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2591
    .local v11, "splashView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/wardrumstudios/utils/WarMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/wardrumstudios/utils/WarMedia;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->val$splashPng:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2594
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    add-int/lit8 v15, v16, -0x28

    .line 2595
    .local v15, "width":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    add-int/lit8 v5, v16, -0x28

    .line 2597
    .local v5, "height":I
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2600
    .local v13, "surfaceView_Width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->metrics:Landroid/util/DisplayMetrics;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2602
    .local v12, "surfaceView_Height":I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, 0x64

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2603
    .local v7, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v0, v13

    move/from16 v16, v0

    int-to-float v0, v15

    move/from16 v17, v0

    div-float v10, v16, v17

    .line 2604
    .local v10, "ratio_width":F
    int-to-float v0, v12

    move/from16 v16, v0

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v9, v16, v17

    .line 2605
    .local v9, "ratio_height":F
    int-to-float v0, v15

    move/from16 v16, v0

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v2, v16, v17

    .line 2606
    .local v2, "aspectratio":F
    cmpl-float v16, v10, v9

    if-lez v16, :cond_0

    .line 2607
    int-to-float v0, v12

    move/from16 v16, v0

    mul-float v16, v16, v2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2608
    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2613
    :goto_0
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    div-int/lit8 v6, v16, 0x2

    .line 2614
    .local v6, "horiz":I
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v14, v16, 0x2

    .line 2616
    .local v14, "vert":I
    const/16 v16, 0x11

    move/from16 v0, v16

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2619
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2620
    .restart local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, 0x11

    move/from16 v0, v16

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/wardrumstudios/utils/WarMedia;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2628
    .end local v2    # "aspectratio":F
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "height":I
    .end local v6    # "horiz":I
    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "margin":I
    .end local v9    # "ratio_height":F
    .end local v10    # "ratio_width":F
    .end local v11    # "splashView":Landroid/widget/ImageView;
    .end local v12    # "surfaceView_Height":I
    .end local v13    # "surfaceView_Width":I
    .end local v14    # "vert":I
    .end local v15    # "width":I
    :goto_1
    return-void

    .line 2610
    .restart local v2    # "aspectratio":F
    .restart local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "height":I
    .restart local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "margin":I
    .restart local v9    # "ratio_height":F
    .restart local v10    # "ratio_width":F
    .restart local v11    # "splashView":Landroid/widget/ImageView;
    .restart local v12    # "surfaceView_Height":I
    .restart local v13    # "surfaceView_Width":I
    .restart local v15    # "width":I
    :cond_0
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2611
    int-to-float v0, v13

    move/from16 v16, v0

    div-float v16, v16, v2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2624
    .end local v2    # "aspectratio":F
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "height":I
    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "margin":I
    .end local v9    # "ratio_height":F
    .end local v10    # "ratio_width":F
    .end local v11    # "splashView":Landroid/widget/ImageView;
    .end local v12    # "surfaceView_Height":I
    .end local v13    # "surfaceView_Width":I
    .end local v15    # "width":I
    :catch_0
    move-exception v4

    .line 2625
    .local v4, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wardrumstudios/utils/WarMedia$23;->this$0:Lcom/wardrumstudios/utils/WarMedia;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wardrumstudios/utils/WarMedia;->llSplashView:Landroid/widget/LinearLayout;

    .line 2626
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "DisplaySplashScreeen Error"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
