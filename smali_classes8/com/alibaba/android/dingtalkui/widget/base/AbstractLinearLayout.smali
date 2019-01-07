.class public abstract Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;->a()V

    .line 20
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
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;->a()V

    .line 25
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
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;->getOrientationInParent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;->setOrientation(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract getOrientationInParent()I
.end method
