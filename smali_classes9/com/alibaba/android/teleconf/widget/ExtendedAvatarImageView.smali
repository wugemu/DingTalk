.class public Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;
.super Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
.source "ExtendedAvatarImageView.java"


# instance fields
.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->e:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->f:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->h:Landroid/graphics/RectF;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->e:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->f:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->h:Landroid/graphics/RectF;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->e:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->f:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->h:Landroid/graphics/RectF;

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->e:I

    if-ne v6, v11, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getPaddingLeft()I

    move-result v4

    .line 47
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getPaddingTop()I

    move-result v5

    .line 48
    .local v5, "y":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getPaddingRight()I

    move-result v7

    sub-int v3, v6, v7

    .line 49
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getPaddingBottom()I

    move-result v7

    sub-int v2, v6, v7

    .line 50
    .local v2, "height":I
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->f:Landroid/graphics/Paint;

    const/high16 v7, -0x41000000    # -0.5f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->h:Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v5

    add-int v9, v4, v3

    int-to-float v9, v9

    add-int v10, v5, v2

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->h:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 56
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v7, v8}, Lcms;->b(Landroid/content/Context;F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 60
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v6, v2, v6

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    add-int v0, v6, v5

    .line 61
    .local v0, "baseline":I
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Leuj$l;->conf_txt_avatar_calling:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v4

    int-to-float v7, v7

    int-to-float v8, v0

    iget-object v9, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    .end local v0    # "baseline":I
    .end local v1    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v2    # "height":I
    .end local v3    # "width":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->e:I

    .line 39
    return-void
.end method
