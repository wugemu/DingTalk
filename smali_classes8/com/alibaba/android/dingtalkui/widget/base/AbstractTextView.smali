.class public abstract Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "AbstractTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->a(Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->a(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->a(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->a()V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lecj$i;->AbstractTextView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 40
    .local v1, "tArray":Landroid/content/res/TypedArray;
    sget v2, Lecj$i;->AbstractTextView_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 41
    .local v0, "enable":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setEnabled(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 50
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setGravity(I)V

    .line 51
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setEnabled(Z)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setAlpha(F)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setAlpha(F)V

    goto :goto_0
.end method
