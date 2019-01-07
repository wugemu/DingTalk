.class public Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
.super Landroid/widget/TextView;
.source "IconFontTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcka;->a()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->isImportantForAccessibility()Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 29
    invoke-static {}, Lcka;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setIncludeFontPadding(Z)V

    .line 31
    return-void
.end method
