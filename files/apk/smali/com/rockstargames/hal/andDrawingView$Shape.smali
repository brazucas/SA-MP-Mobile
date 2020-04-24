.class public Lcom/rockstargames/hal/andDrawingView$Shape;
.super Ljava/lang/Object;
.source "andDrawingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andDrawingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shape"
.end annotation


# instance fields
.field public fillPaint:Landroid/graphics/Paint;

.field public filled:Z

.field public path:Landroid/graphics/Path;

.field public pathClosed:Z

.field public points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "fill"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    .line 85
    iput-boolean p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    .line 86
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/andDrawingView$Shape;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/rockstargames/hal/andDrawingView$Shape;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPointInternal(FF)V

    return-void
.end method

.method private addPointInternal(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to add a point to a filled shape!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPointInternal(FF)V

    .line 103
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to clear a filled shape!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    .line 145
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    :cond_1
    return-void
.end method

.method public removePoint(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-boolean v3, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-eqz v3, :cond_0

    .line 118
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Attempting to remove a point from a filled shape!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    iget-object v3, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "first":Z
    iget-object v3, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 127
    .local v2, "p":Landroid/graphics/PointF;
    if-eqz v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 135
    .end local v2    # "p":Landroid/graphics/PointF;
    :cond_2
    return-void
.end method

.method public setPoints([F)V
    .locals 3
    .param p1, "points"    # [F

    .prologue
    .line 149
    iget-boolean v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting set all points to a line!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    .line 153
    iget-object v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 155
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPointInternal(FF)V

    .line 154
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    .line 159
    return-void
.end method
