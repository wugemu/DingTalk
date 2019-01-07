.class public final Lawh;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p0, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "templateParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 46
    const-string/jumbo v5, ""

    .line 92
    :cond_0
    :goto_0
    return-object v5

    .line 48
    :cond_1
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "styleAndKey":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 51
    .local v3, "style":Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 52
    const/4 v8, 0x0

    aget-object v0, v4, v8

    .line 61
    .local v0, "key":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_4

    .line 62
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getStringFromTemplate failed: key is null"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 63
    const-string/jumbo v5, ""

    goto :goto_0

    .line 53
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 54
    const/4 v8, 0x0

    aget-object v3, v4, v8

    .line 55
    const/4 v8, 0x1

    aget-object v0, v4, v8

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 57
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getStringFromTemplate failed: styleAndKey length > 2"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 58
    const-string/jumbo v5, ""

    goto :goto_0

    .line 1100
    .restart local v0    # "key":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    .line 1101
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "string"

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v0, v10, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, "strResId":I
    if-nez v2, :cond_5

    .line 67
    const-string/jumbo v5, ""

    goto :goto_0

    .line 69
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2025
    .local v5, "summaryFmt":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2026
    const/4 v1, 0x0

    .line 71
    .local v1, "placeholderCount":I
    :goto_2
    if-nez p1, :cond_8

    const/4 v6, 0x0

    .line 72
    .local v6, "tempDataCount":I
    :goto_3
    if-eq v1, v6, :cond_9

    .line 73
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getStringFromTemplate failed: placeholderCount != tempDataCount"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 74
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 2028
    .end local v1    # "placeholderCount":I
    .end local v6    # "tempDataCount":I
    :cond_6
    const/4 v9, 0x0

    .line 2029
    const/4 v8, 0x0

    .line 2030
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 2031
    const-string/jumbo v10, "%1$s"

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 2032
    const/4 v10, -0x1

    if-eq v8, v10, :cond_7

    .line 2035
    add-int/lit8 v8, v8, 0x1

    .line 2036
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    move v1, v9

    .line 2038
    goto :goto_2

    .line 71
    .restart local v1    # "placeholderCount":I
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_3

    .line 75
    .restart local v6    # "tempDataCount":I
    :cond_9
    const/4 v8, 0x1

    if-le v1, v8, :cond_a

    .line 77
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getStringFromTemplate failed: placeholderCount > 1"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 78
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 79
    :cond_a
    if-eqz v1, :cond_0

    .line 82
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 83
    .local v7, "templateData":Ljava/lang/String;
    if-nez v7, :cond_b

    .line 84
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getStringFromTemplate failed: templateData is null"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 85
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 87
    :cond_b
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v7, v8

    .line 88
    :goto_5
    if-nez v7, :cond_f

    .line 89
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getStringFromTemplate failed: templateData is null after decorated"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 90
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 2108
    :cond_c
    const/4 v9, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_d
    :goto_6
    packed-switch v9, :pswitch_data_1

    .line 2122
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[dealStringWithStyle] unknown style"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 2123
    const/4 v7, 0x0

    goto :goto_5

    .line 2108
    :pswitch_0
    const-string/jumbo v10, "t1"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v9, 0x0

    goto :goto_6

    .line 3109
    :pswitch_1
    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2111
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_e

    .line 2112
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "dealStringWithStyle failed: templateData is not timeMillis"

    aput-object v10, v8, v9

    invoke-static {v8}, Lavy;->a([Ljava/lang/String;)V

    .line 2113
    const/4 v7, 0x0

    goto :goto_5

    .line 2115
    :cond_e
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    const v11, 0x20015

    invoke-static {v10, v8, v9, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 92
    :cond_f
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2108
    nop

    :pswitch_data_0
    .packed-switch 0xe3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
