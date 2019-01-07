.class public Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;
.source "AutoTranslateTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "line"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    const/4 v4, -0x1

    .line 41
    .local v4, "pos1":I
    const/4 v3, -0x1

    .line 42
    .local v3, "newPos1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_3

    .line 44
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 45
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 46
    .local v0, "c":C
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    const/16 v7, 0x5b

    if-ne v0, v7, :cond_1

    .line 48
    move v4, v2

    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    if-ltz v4, :cond_0

    const/16 v7, 0x5d

    if-ne v0, v7, :cond_0

    .line 52
    add-int/lit8 v7, v2, 0x1

    invoke-interface {p0, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 54
    .local v6, "token":Ljava/lang/CharSequence;
    invoke-static {}, Lcqx;->a()Lcqx;

    move-result-object v7

    invoke-virtual {v7}, Lcqx;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 55
    invoke-static {}, Lcqx;->a()Lcqx;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcqx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "english":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_0

    .line 60
    const/4 v4, -0x1

    .line 61
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 57
    .end local v1    # "english":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcqz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "english":Ljava/lang/String;
    goto :goto_2

    .line 68
    .end local v0    # "c":C
    .end local v1    # "english":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v6    # "token":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 37
    return-void

    .line 1076
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_4

    .line 1077
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v0, p1

    .line 1078
    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/ParcelableSpan;

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/ParcelableSpan;

    .line 1079
    if-eqz v0, :cond_3

    .line 1081
    array-length v6, v0

    move v3, v1

    move v4, v1

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v0, v3

    move-object v1, p1

    .line 1082
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v1, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    move-object v1, p1

    .line 1083
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v1, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1084
    invoke-interface {p1, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1085
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1086
    invoke-interface {p1, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1087
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    move-object v1, p1

    .line 1088
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v1, v7}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v7, v4, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1081
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v5

    goto :goto_1

    .line 1091
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    move-object p1, v2

    .line 1095
    goto :goto_0

    .line 1093
    :cond_3
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 1097
    :cond_4
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_0
.end method
