.class public final Ldom;
.super Ljava/lang/Object;
.source "SpannableStringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 8
    .param p0, "ssb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v7, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;

    invoke-virtual {p0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;

    .line 22
    .local v3, "spans":[Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-gtz v6, :cond_1

    .line 33
    .end local v3    # "spans":[Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;
    :cond_0
    return-object p0

    .line 25
    .restart local v3    # "spans":[Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;
    :cond_1
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 26
    .local v2, "span":Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 27
    .local v4, "start":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 28
    .local v0, "end":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 29
    .local v1, "flags":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0, v2, v4, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 25
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
