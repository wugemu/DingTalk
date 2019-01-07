.class public final Lcol;
.super Ljava/lang/Object;
.source "EmotionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 15
    .param p0, "line"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v12, 0x0

    .line 22
    instance-of v10, p0, Landroid/text/Spannable;

    if-eqz v10, :cond_2

    .line 24
    :try_start_0
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 25
    .local v9, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const-class v14, Landroid/text/style/ImageSpan;

    invoke-interface {v10, v11, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ImageSpan;

    .line 26
    .local v6, "parcelableSpans":[Landroid/text/style/ImageSpan;
    if-eqz v6, :cond_1

    .line 27
    const/4 v7, 0x0

    .line 28
    .local v7, "pos":I
    array-length v13, v6

    move v11, v12

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v8, v6, v11

    .line 29
    .local v8, "span":Landroid/text/style/ImageSpan;
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v10, v0

    invoke-interface {v10, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 30
    .local v5, "oldStart":I
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v10, v0

    invoke-interface {v10, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 31
    .local v4, "oldEnd":I
    invoke-interface {p0, v7, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Lcol;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 33
    .local v3, "newStart":I
    invoke-interface {p0, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Lcol;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 34
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 35
    .local v2, "newEnd":I
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v10, v0

    invoke-interface {v10, v8}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v8, v3, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 36
    move v7, v4

    .line 28
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 38
    .end local v2    # "newEnd":I
    .end local v3    # "newStart":I
    .end local v4    # "oldEnd":I
    .end local v5    # "oldStart":I
    .end local v8    # "span":Landroid/text/style/ImageSpan;
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {p0, v7, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Lcol;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    .end local v6    # "parcelableSpans":[Landroid/text/style/ImageSpan;
    .end local v7    # "pos":I
    .end local v9    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_1
    return-object v9

    .line 40
    .restart local v6    # "parcelableSpans":[Landroid/text/style/ImageSpan;
    .restart local v9    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_1
    invoke-static {p0}, Lcol;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 43
    .end local v6    # "parcelableSpans":[Landroid/text/style/ImageSpan;
    .end local v9    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "[EmotionUtils]replaceToEnglish failed, "

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2123
    const-string/jumbo v11, "base"

    const/4 v12, 0x0

    .line 3114
    new-instance v13, Lhzu;

    invoke-direct {v13}, Lhzu;-><init>()V

    .line 3115
    iput-object v11, v13, Lhzu;->a:Ljava/lang/String;

    .line 3116
    const/16 v11, 0xfa0

    iput v11, v13, Lhzu;->c:I

    .line 3117
    iput-object v12, v13, Lhzu;->b:Ljava/util/Map;

    .line 3118
    iput-object v10, v13, Lhzu;->d:Ljava/lang/String;

    .line 3119
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v10

    invoke-virtual {v10, v13}, Lhzr;->a(Lhzu;)V

    .line 48
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    invoke-static {p0}, Lcol;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "line"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    const/4 v4, -0x1

    .line 53
    .local v4, "pos1":I
    const/4 v3, -0x1

    .line 54
    .local v3, "newPos1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_3

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 57
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 58
    .local v0, "c":C
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    const/16 v7, 0x5b

    if-ne v0, v7, :cond_1

    .line 60
    move v4, v2

    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    if-ltz v4, :cond_0

    const/16 v7, 0x5d

    if-ne v0, v7, :cond_0

    .line 64
    add-int/lit8 v7, v2, 0x1

    invoke-interface {p0, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 66
    .local v6, "token":Ljava/lang/CharSequence;
    invoke-static {}, Lcqx;->a()Lcqx;

    move-result-object v7

    invoke-virtual {v7}, Lcqx;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    invoke-static {}, Lcqx;->a()Lcqx;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcqx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "english":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_0

    .line 72
    const/4 v4, -0x1

    .line 73
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    .end local v1    # "english":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcqz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "english":Ljava/lang/String;
    goto :goto_2

    .line 80
    .end local v0    # "c":C
    .end local v1    # "english":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v6    # "token":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
