.class public Lcom/alibaba/android/dingtalkui/widget/text/font/DtHeadline1TextView;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
.source "DtHeadline1TextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;-><init>(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
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
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->a()V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtHeadline1TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lecj$h;->ui_common_headline1_text_style:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtHeadline1TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 34
    return-void
.end method
