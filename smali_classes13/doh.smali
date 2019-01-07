.class public final Ldoh;
.super Ljava/lang/Object;
.source "MdStringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()I
    .locals 6

    .prologue
    .line 43
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_im"

    const-string/jumbo v5, "dt_im_markdown_length_limit"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "longTextLimit":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 47
    .local v1, "limit":I
    if-lez v1, :cond_0

    .line 54
    .end local v1    # "limit":I
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 54
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v1, 0x1770

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "content"    # Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 59
    :cond_0
    const-string/jumbo v14, ""

    .line 104
    :goto_0
    return-object v14

    .line 63
    :cond_1
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->nickMap()Ljava/util/Map;

    move-result-object v7

    .line 64
    .local v7, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 65
    :cond_2
    const-string/jumbo v14, "\\^(\\d)+ "

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 66
    .local v9, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 67
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 69
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->title()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 73
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 74
    .local v10, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 75
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    if-eqz v5, :cond_4

    .line 79
    const/4 v14, 0x3

    new-array v0, v14, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    const-string/jumbo v17, "^"

    aput-object v17, v16, v14

    const/16 v17, 0x1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v16, v17

    const/4 v14, 0x2

    const-string/jumbo v17, " "

    aput-object v17, v16, v14

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 80
    const-string/jumbo v14, "|"

    invoke-virtual {v10, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .end local v7    # "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .end local v10    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "im"

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "SystemMarkdownExMsgViewHolder getDisplayText error="

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 102
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 101
    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->title()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 82
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .restart local v10    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    :try_start_1
    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 83
    const-string/jumbo v14, ")"

    invoke-virtual {v10, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 84
    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 85
    .local v3, "atTextPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 86
    .local v2, "atTextMatcher":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 88
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "textToReplace":Ljava/lang/String;
    const-string/jumbo v14, "^"

    const-string/jumbo v15, ""

    .line 90
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, " "

    const-string/jumbo v16, ""

    .line 91
    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, "uid":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;

    .line 93
    .local v8, "nickModel":Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;
    iget-object v13, v8, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;->markdownNick:Ljava/lang/String;

    .line 94
    .local v13, "value":Ljava/lang/String;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v14

    invoke-virtual {v14}, Lccr;->c()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 95
    iget-object v13, v8, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;->i18nYou:Ljava/lang/String;

    .line 97
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 98
    goto :goto_2

    .end local v8    # "nickModel":Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;
    .end local v11    # "textToReplace":Ljava/lang/String;
    .end local v12    # "uid":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v14, p1

    .line 99
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "originString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    .end local p0    # "originString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "originString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Ldoh;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-static {}, Ldoh;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
