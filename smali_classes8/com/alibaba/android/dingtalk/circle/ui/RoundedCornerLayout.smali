.class public Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;
.super Landroid/widget/LinearLayout;
.source "RoundedCornerLayout.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->a:Landroid/graphics/Paint;

    .line 1040
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->b:F

    .line 1041
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->setClipChildren(Z)V

    .line 1042
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->setClipToPadding(Z)V

    .line 1043
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->setWillNotDraw(Z)V

    .line 1062
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->a:Landroid/graphics/Paint;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1046
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;-><init>(Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1080
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->getWidth()I

    move-result v7

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->getHeight()I

    move-result v8

    .line 1082
    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1086
    int-to-float v3, v7

    int-to-float v4, v8

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 1087
    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->b:F

    .line 1098
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1099
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1088
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1090
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1091
    if-lez v0, :cond_2

    .line 1092
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1094
    :cond_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
