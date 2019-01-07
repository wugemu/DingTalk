.class public Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;
.super Landroid/view/View;
.source "QuadEdgeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;,
        Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;
    }
.end annotation


# static fields
.field private static f:I


# instance fields
.field public a:[F

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private g:Landroid/content/Context;

.field private h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

.field private i:Landroid/graphics/Paint;

.field private j:[F

.field private k:Landroid/graphics/Path;

.field private l:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    .line 41
    sget v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    .line 44
    sget-object v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;->DETECT:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->l:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    .line 66
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->g:Landroid/content/Context;

    .line 1073
    new-instance v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;-><init>()V

    .line 1074
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Liff$a;->ui_common_theme_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1289
    iput v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->a:I

    .line 1074
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->g:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    .line 1075
    invoke-static {v1, v2}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 1297
    iput v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->b:F

    .line 1305
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->c:Z

    .line 1077
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Liff$a;->ui_common_theme_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1329
    iput v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->e:I

    .line 1077
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->g:Landroid/content/Context;

    const/high16 v2, 0x41000000    # 8.0f

    .line 1078
    invoke-static {v1, v2}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 2321
    iput v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->d:F

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Liff$a;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2345
    iput v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->g:I

    .line 1079
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->g:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 1080
    invoke-static {v1, v2}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 3337
    iput v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->f:F

    .line 1080
    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    return-void
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    if-nez v5, :cond_0

    .line 163
    sget v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    .line 166
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    if-ge v0, v5, :cond_2

    .line 168
    shl-int/lit8 v1, v0, 0x1

    .line 169
    .local v1, "j":I
    shl-int/lit8 v3, v1, 0x1

    .line 170
    .local v3, "k":I
    sget v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_1

    .line 171
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .local v4, "k":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget v6, v6, v1

    aput v6, v5, v3

    .line 172
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    aget v6, v6, v2

    aput v6, v5, v4

    .line 173
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v5, v3

    .line 174
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    move v3, v4

    .end local v4    # "k":I
    .restart local v3    # "k":I
    move v1, v2

    .line 166
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v6, v6, v1

    aput v6, v5, v3

    .line 177
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v6, v6, v2

    aput v6, v5, v4

    .line 178
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v6, v6, v1

    aput v6, v5, v3

    .line 179
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    aget v6, v6, v2

    aput v6, v5, v4

    move v3, v4

    .end local v4    # "k":I
    .restart local v3    # "k":I
    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_1

    .line 182
    .end local v1    # "j":I
    .end local v3    # "k":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->invalidate()V

    .line 183
    return-void
.end method

.method private getCanvasWidth()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->b:I

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->b:I

    .line 123
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->b:I

    return v0
.end method


# virtual methods
.method public final a(II)V
    .locals 0
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->b:I

    .line 136
    iput p2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->c:I

    .line 137
    return-void
.end method

.method public final a([FIII)V
    .locals 8
    .param p1, "sourcePoints"    # [F
    .param p2, "sourceWidth"    # I
    .param p3, "sourceHeight"    # I
    .param p4, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    if-eqz p1, :cond_0

    array-length v0, p1

    sget v1, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    shl-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getCanvasWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getCanvasHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lgro;->a([FIIIIII)[F

    move-result-object v7

    .line 114
    .local v7, "temp":[F
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getTranslateX()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getTranslateY()I

    move-result v1

    invoke-static {v7, v0, v1}, Lgro;->a([FII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    .line 115
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a()V

    goto :goto_0
.end method

.method public getCanvasHeight()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->c:I

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->c:I

    .line 131
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->c:I

    return v0
.end method

.method public getTranslateX()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->d:I

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->e:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 232
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 233
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    if-nez v3, :cond_1

    .line 273
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 4275
    iget-boolean v3, v3, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->c:Z

    .line 237
    if-eqz v3, :cond_4

    .line 238
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->k:Landroid/graphics/Path;

    if-nez v3, :cond_2

    .line 240
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->k:Landroid/graphics/Path;

    .line 244
    :goto_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->k:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    aget v4, v4, v5

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget v3, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    if-ge v0, v3, :cond_3

    .line 246
    shl-int/lit8 v1, v0, 0x1

    .line 247
    .local v1, "j":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->k:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget v4, v4, v1

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->k:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto :goto_0

    .line 250
    .restart local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->k:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 254
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 6275
    iget v4, v4, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->a:I

    .line 254
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 7275
    iget v4, v4, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->b:F

    .line 255
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->j:[F

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 259
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->l:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    sget-object v4, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;->EDIT:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    if-ne v3, v4, :cond_0

    .line 260
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 8275
    iget v4, v4, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->e:I

    .line 260
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget v3, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    if-ge v0, v3, :cond_5

    .line 263
    shl-int/lit8 v1, v0, 0x1

    .line 264
    .restart local v1    # "j":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v3, v3, v1

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 9275
    iget v5, v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->d:F

    .line 264
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 267
    .end local v2    # "j":I
    :cond_5
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 10275
    iget v4, v4, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->g:I

    .line 267
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    const/4 v0, 0x0

    :goto_3
    sget v3, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    if-ge v0, v3, :cond_0

    .line 269
    shl-int/lit8 v1, v0, 0x1

    .line 270
    .restart local v1    # "j":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v3, v3, v1

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->h:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;

    .line 11275
    iget v5, v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$a;->f:F

    .line 270
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 187
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->l:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    sget-object v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;->DETECT:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    if-ne v2, v5, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v3

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 193
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 195
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 4218
    :goto_1
    sget v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->f:I

    if-ge v2, v5, :cond_4

    .line 4219
    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    mul-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    sub-float/2addr v5, v0

    .line 4220
    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v6, v1

    .line 4221
    iget-object v7, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->g:Landroid/content/Context;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v7, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 4222
    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    mul-int v6, v7, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 4223
    iput v2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    .line 197
    :goto_2
    iput v2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    .line 213
    :cond_2
    :goto_3
    iget v2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 4218
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    .line 4227
    goto :goto_2

    .line 200
    :pswitch_1
    iget v2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    if-eq v2, v4, :cond_2

    .line 201
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    iget v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    mul-int/lit8 v5, v5, 0x2

    aput v0, v2, v5

    .line 202
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    iget v5, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aput v1, v2, v5

    .line 203
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a()V

    goto :goto_3

    .line 208
    :pswitch_2
    iput v4, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->m:I

    goto :goto_3

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMode(Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->l:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    .line 98
    return-void
.end method
