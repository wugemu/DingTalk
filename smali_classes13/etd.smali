.class public final Letd;
.super Ljava/lang/Object;
.source "SearchUTUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/search/SearchGroupType;)Ljava/lang/String;
    .locals 3
    .param p0, "searchGroupType"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 63
    sget-object v1, Letd$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 98
    const-string/jumbo v0, "common"

    .line 102
    .local v0, "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 65
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "common"

    .line 66
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "group"

    .line 69
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "chatmsg"

    .line 72
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "dingmsg"

    .line 75
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "function"

    .line 78
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "common"

    .line 81
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "group"

    .line 84
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "mail"

    .line 87
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "cspace"

    .line 90
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "oa"

    .line 93
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "suggestion_guide"

    .line 96
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "eventArg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 114
    .line 1118
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1121
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1122
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1128
    .end local p1    # "eventArg":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1147
    const-string/jumbo v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1148
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1149
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1151
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1152
    if-eqz v5, :cond_2

    array-length v1, v5

    if-lez v1, :cond_2

    .line 1153
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1154
    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 1155
    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1156
    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    .line 1157
    aget-object v8, v7, v4

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1130
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 1131
    :cond_4
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 1132
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "String param is error! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v2

    .line 1140
    :cond_6
    invoke-interface {v0, v2, p0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    return-void
.end method
