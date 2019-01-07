.class public Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
.source "DtRedAsteriskView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Lecw;

    sget v2, Lecj$g;->icon_asterisk_L:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lecj$b;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v0, "icon":Lecw;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;->onMeasure(II)V

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 42
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 43
    .local v0, "height":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 45
    .local v2, "xy":I
    invoke-virtual {p0, v2, v2}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setMeasuredDimension(II)V

    .line 46
    return-void
.end method
