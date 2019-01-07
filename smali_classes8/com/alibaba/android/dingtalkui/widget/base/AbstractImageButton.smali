.class public abstract Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
.source "AbstractImageButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 33
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 34
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101045c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 35
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageButton;->setBackgroundResource(I)V

    .line 37
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method
