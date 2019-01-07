.class public Lcom/alibaba/android/user/namecard/guide/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/namecard/guide/GuideView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/user/namecard/guide/LightType;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/PorterDuffXfermode;

.field private j:Landroid/graphics/BlurMaskFilter;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfuc;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfud;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/namecard/guide/GuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/namecard/guide/GuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    .line 1143
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1146
    sget-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->Rectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->a:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 1147
    const/16 v0, 0xcc

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->c:I

    .line 1148
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->i:Landroid/graphics/PorterDuffXfermode;

    .line 1149
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setWillNotDraw(Z)V

    .line 1150
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setClickable(Z)V

    .line 1151
    sget v0, Lezg$h;->tv_know:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/guide/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->m:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/guide/GuideView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    invoke-interface {v0}, Lcom/alibaba/android/user/namecard/guide/GuideView$a;->a()V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/guide/GuideView;->removeAllViews()V

    .line 244
    iget v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->l:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfud;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuc;

    invoke-virtual {v0, v1, p0}, Lfud;->a(Lfuc;Landroid/view/ViewGroup;)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    iget v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/namecard/guide/GuideView$a;->a(I)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lfuc;)V
    .locals 6
    .param p1, "srcCanvas"    # Landroid/graphics/Canvas;
    .param p2, "viewInfo"    # Lfuc;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    sget-object v0, Lcom/alibaba/android/user/namecard/guide/GuideView$1;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->a:Lcom/alibaba/android/user/namecard/guide/LightType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/namecard/guide/LightType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget v0, p2, Lfuc;->c:I

    int-to-float v1, v0

    iget v0, p2, Lfuc;->d:I

    int-to-float v2, v0

    iget v0, p2, Lfuc;->c:I

    iget v3, p2, Lfuc;->a:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Lfuc;->d:I

    iget v4, p2, Lfuc;->b:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget v0, p2, Lfuc;->c:I

    iget v1, p2, Lfuc;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p2, Lfuc;->d:I

    iget v2, p2, Lfuc;->a:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p2, Lfuc;->a:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 163
    :pswitch_2
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Lfuc;->c:I

    int-to-float v1, v1

    iget v2, p2, Lfuc;->d:I

    int-to-float v2, v2

    iget v3, p2, Lfuc;->c:I

    iget v4, p2, Lfuc;->a:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Lfuc;->d:I

    iget v5, p2, Lfuc;->b:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 166
    :pswitch_3
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Lfuc;->c:I

    int-to-float v1, v1

    iget v2, p2, Lfuc;->d:I

    int-to-float v2, v2

    iget v3, p2, Lfuc;->c:I

    iget v4, p2, Lfuc;->a:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Lfuc;->d:I

    iget v5, p2, Lfuc;->b:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->g:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/view/View;FF)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    if-nez p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v5

    .line 259
    :cond_1
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 260
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 261
    aget v1, v2, v5

    .line 262
    .local v1, "left":I
    aget v4, v2, v6

    .line 263
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v1, v7

    .line 264
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 266
    .local v0, "bottom":I
    int-to-float v7, v4

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_0

    int-to-float v7, v0

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_0

    int-to-float v7, v1

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_0

    int-to-float v7, v3

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_0

    move v5, v6

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;Lfuc;)V
    .locals 6
    .param p1, "srcCanvas"    # Landroid/graphics/Canvas;
    .param p2, "viewInfo"    # Lfuc;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 195
    sget-object v0, Lcom/alibaba/android/user/namecard/guide/GuideView$1;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->a:Lcom/alibaba/android/user/namecard/guide/LightType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/namecard/guide/LightType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget v0, p2, Lfuc;->c:I

    int-to-float v1, v0

    iget v0, p2, Lfuc;->d:I

    int-to-float v2, v0

    iget v0, p2, Lfuc;->c:I

    iget v3, p2, Lfuc;->a:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Lfuc;->d:I

    iget v4, p2, Lfuc;->b:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget v0, p2, Lfuc;->c:I

    iget v1, p2, Lfuc;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p2, Lfuc;->d:I

    iget v2, p2, Lfuc;->a:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p2, Lfuc;->a:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 203
    :pswitch_2
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Lfuc;->c:I

    int-to-float v1, v1

    iget v2, p2, Lfuc;->d:I

    int-to-float v2, v2

    iget v3, p2, Lfuc;->c:I

    iget v4, p2, Lfuc;->a:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Lfuc;->d:I

    iget v5, p2, Lfuc;->b:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 206
    :pswitch_3
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Lfuc;->c:I

    int-to-float v1, v1

    iget v2, p2, Lfuc;->d:I

    int-to-float v2, v2

    iget v3, p2, Lfuc;->c:I

    iget v4, p2, Lfuc;->a:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Lfuc;->d:I

    iget v5, p2, Lfuc;->b:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->g:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 103
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v1

    .line 107
    .local v1, "saved":I
    :goto_0
    iget v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->c:I

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 108
    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->d:Z

    if-eqz v3, :cond_2

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuc;

    .line 111
    .local v2, "viewInfo":Lfuc;
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->b(Landroid/graphics/Canvas;Lfuc;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    .end local v1    # "saved":I
    .end local v2    # "viewInfo":Lfuc;
    :cond_0
    const/16 v3, 0x1f

    invoke-virtual {p1, v5, v5, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    .restart local v1    # "saved":I
    goto :goto_0

    .line 113
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->i:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuc;

    .line 1214
    .restart local v2    # "viewInfo":Lfuc;
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->b(Landroid/graphics/Canvas;Lfuc;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 119
    .end local v0    # "i":I
    .end local v2    # "viewInfo":Lfuc;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    iget v4, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuc;

    .line 120
    .restart local v2    # "viewInfo":Lfuc;
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->b(Landroid/graphics/Canvas;Lfuc;)V

    .line 121
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->i:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2214
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->b(Landroid/graphics/Canvas;Lfuc;)V

    .line 124
    .end local v2    # "viewInfo":Lfuc;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 126
    iget v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->f:I

    if-lez v3, :cond_6

    .line 127
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->j:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 128
    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->d:Z

    if-eqz v3, :cond_4

    .line 129
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 130
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuc;

    .line 131
    .restart local v2    # "viewInfo":Lfuc;
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->a(Landroid/graphics/Canvas;Lfuc;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 134
    .end local v0    # "i":I
    .end local v2    # "viewInfo":Lfuc;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    iget v4, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfuc;

    .line 135
    .restart local v2    # "viewInfo":Lfuc;
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->a(Landroid/graphics/Canvas;Lfuc;)V

    .line 137
    .end local v2    # "viewInfo":Lfuc;
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 139
    :cond_6
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->h:Z

    if-eqz v0, :cond_0

    .line 176
    sget v0, Lezg$h;->tv_know:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/guide/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->m:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/guide/GuideView;->a()V

    .line 191
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->e:I

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->n:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/guide/GuideView;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/guide/GuideView;->a()V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    invoke-interface {v0}, Lcom/alibaba/android/user/namecard/guide/GuideView$a;->b()V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->c:I

    .line 62
    return-void
.end method

.method public setAutoNext(Z)V
    .locals 0
    .param p1, "autoNext"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->h:Z

    .line 76
    return-void
.end method

.method public setBlur(I)V
    .locals 3
    .param p1, "radius"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    iput p1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->f:I

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float v1, p1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->j:Landroid/graphics/BlurMaskFilter;

    .line 68
    return-void
.end method

.method public setCardView(Landroid/view/View;)V
    .locals 0
    .param p1, "cardView"    # Landroid/view/View;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->n:Landroid/view/View;

    .line 88
    return-void
.end method

.method public setCorner(I)V
    .locals 0
    .param p1, "corner"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->g:I

    .line 72
    return-void
.end method

.method public setLayoutStyles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "styles":Ljava/util/List;, "Ljava/util/List<Lfud;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->l:Ljava/util/List;

    .line 96
    return-void
.end method

.method public setOnDismissListener(Lcom/alibaba/android/user/namecard/guide/GuideView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->o:Lcom/alibaba/android/user/namecard/guide/GuideView$a;

    .line 227
    return-void
.end method

.method public setViewInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfuc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "viewInfos":Ljava/util/List;, "Ljava/util/List<Lfuc;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/guide/GuideView;->k:Ljava/util/List;

    .line 92
    return-void
.end method
