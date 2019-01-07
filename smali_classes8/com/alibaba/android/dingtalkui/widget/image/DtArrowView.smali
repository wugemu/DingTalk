.class public Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
.source "DtArrowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView$Directions;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level1_plus_icon_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->a:I

    .line 29
    iput v2, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->b:I

    .line 30
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->a:I

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->c:I

    .line 1067
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setArrowDirection(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level1_plus_icon_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->a:I

    .line 29
    iput v2, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->b:I

    .line 30
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->a:I

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->c:I

    .line 2067
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setArrowDirection(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level1_plus_icon_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->a:I

    .line 29
    iput v2, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->b:I

    .line 30
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->a:I

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->c:I

    .line 3067
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setArrowDirection(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getDownArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lecw;

    sget v2, Lecj$g;->icon_down:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->c:I

    invoke-direct {v1, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getRightArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lecw;

    sget v2, Lecj$g;->icon_right:I

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->c:I

    invoke-direct {v1, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public setArrowDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->b:I

    .line 3071
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->b:I

    packed-switch v0, :pswitch_data_0

    .line 3079
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getDownArrowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3077
    :goto_0
    return-void

    .line 3073
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getDownArrowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3076
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->getRightArrowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3071
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
