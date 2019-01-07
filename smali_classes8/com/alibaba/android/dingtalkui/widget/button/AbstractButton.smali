.class public abstract Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;
.super Landroid/widget/FrameLayout;
.source "AbstractButton.java"


# instance fields
.field protected a:Landroid/widget/TextView;

.field private b:Ledd;

.field private c:I

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->c:I

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->d:Landroid/graphics/Path;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->e:Landroid/graphics/RectF;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->c:I

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->d:Landroid/graphics/Path;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->e:Landroid/graphics/RectF;

    .line 39
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->c:I

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->d:Landroid/graphics/Path;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->e:Landroid/graphics/RectF;

    .line 44
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getLayoutId()I

    move-result v3

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getTextViewInParent()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setEnabled(Z)V

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "enable":Z
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lecj$i;->AbstractButton:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 58
    .local v1, "tArray":Landroid/content/res/TypedArray;
    sget v2, Lecj$i;->AbstractTextView_android_enabled:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .end local v1    # "tArray":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setEnabled(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method protected abstract getLayoutId()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public getStyle()Ledd;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->b:Ledd;

    return-object v0
.end method

.method protected abstract getTextViewInParent()Landroid/widget/TextView;
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getWidth()I

    move-result v5

    .line 73
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getHeight()I

    move-result v3

    .line 75
    .local v3, "height":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->d:Landroid/graphics/Path;

    .line 76
    .local v4, "path":Landroid/graphics/Path;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->e:Landroid/graphics/RectF;

    .line 77
    .local v0, "assistant":Landroid/graphics/RectF;
    iget v2, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->c:I

    .line 78
    .local v2, "cornerRadius":I
    mul-int/lit8 v1, v2, 0x2

    .line 80
    .local v1, "assistantEdge":I
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 83
    int-to-float v6, v1

    int-to-float v7, v1

    invoke-virtual {v0, v10, v10, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    int-to-float v6, v2

    invoke-virtual {v4, v10, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 85
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v4, v0, v6, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 86
    sub-int v6, v5, v2

    int-to-float v6, v6

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    sub-int v6, v5, v1

    int-to-float v6, v6

    int-to-float v7, v5

    int-to-float v8, v1

    invoke-virtual {v0, v6, v10, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v4, v0, v6, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 90
    int-to-float v6, v5

    sub-int v7, v3, v2

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    sub-int v6, v5, v1

    int-to-float v6, v6

    sub-int v7, v3, v1

    int-to-float v7, v7

    int-to-float v8, v5

    int-to-float v9, v3

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    invoke-virtual {v4, v0, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 94
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 96
    sub-int v6, v3, v1

    int-to-float v6, v6

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-virtual {v0, v10, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 97
    invoke-virtual {v4, v0, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 98
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 100
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 101
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 180
    return-void
.end method

.method public setSize(Ledc;)V
    .locals 1
    .param p1, "size"    # Ledc;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getStyle()Ledd;

    move-result-object v0

    .line 1068
    .local v0, "style":Ledd;
    iput-object p1, v0, Ledd;->b:Ledc;

    .line 168
    invoke-virtual {v0}, Ledd;->a()V

    .line 169
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setStyle(Ledd;)V

    .line 170
    return-void
.end method

.method public setStyle(Ledd;)V
    .locals 4
    .param p1, "style"    # Ledd;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 119
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->b:Ledd;

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ledd;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ledd;->g()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ledd;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    invoke-virtual {p1}, Ledd;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    new-instance v1, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;-><init>(Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;Ledd;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->post(Ljava/lang/Runnable;)Z

    .line 143
    invoke-virtual {p1}, Ledd;->b()I

    move-result v0

    .line 144
    .local v0, "paddingLR":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 146
    invoke-virtual {p1}, Ledd;->i()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->c:I

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->invalidate()V

    .line 149
    return-void

    .line 124
    .end local v0    # "paddingLR":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ledd;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTheme(Lede;)V
    .locals 1
    .param p1, "theme"    # Lede;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getStyle()Ledd;

    move-result-object v0

    .line 1064
    .local v0, "style":Ledd;
    iput-object p1, v0, Ledd;->a:Lede;

    .line 160
    invoke-virtual {v0}, Ledd;->a()V

    .line 161
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setStyle(Ledd;)V

    .line 162
    return-void
.end method
