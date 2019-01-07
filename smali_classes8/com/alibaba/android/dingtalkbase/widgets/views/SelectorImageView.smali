.class public Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;
.super Landroid/widget/ImageView;
.source "SelectorImageView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0x66

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->a:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x66

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->a:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/16 v0, 0x66

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->a:I

    .line 31
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 p1, 0x0

    .line 79
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 55
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v5, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 56
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 59
    :cond_1
    move-object v2, p1

    .line 61
    .local v2, "normal":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 62
    .local v3, "pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 63
    .local v0, "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    .local v1, "newDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 68
    :cond_2
    if-eqz v3, :cond_3

    .line 69
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->a:I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    .end local v1    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-nez v3, :cond_4

    .line 73
    move-object v3, p1

    .line 76
    :cond_4
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 77
    .local v4, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 78
    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object p1, v4

    .line 79
    goto :goto_0

    .line 77
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method

.method public setPressedAlpha(I)V
    .locals 1
    .param p1, "pressedAlpha"    # I

    .prologue
    .line 44
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->a:I

    goto :goto_0
.end method
