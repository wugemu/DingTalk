.class public final Lcom/alibaba/android/search/utils/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/utils/SearchUtils$ActionType;
    }
.end annotation


# static fields
.field private static a:I

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "^\\[(.+?)]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils;->b:Ljava/util/regex/Pattern;

    .line 129
    const-string/jumbo v0, "<red>(.+?)</red>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    .locals 14
    .param p0, "name"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v13, 0x1

    .line 1033
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1034
    const/4 v9, 0x0

    .line 1063
    :goto_0
    return-object v9

    .line 1036
    :cond_0
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1037
    .local v7, "spannable":Landroid/text/SpannableStringBuilder;
    sget-object v9, Lcom/alibaba/android/search/utils/SearchUtils;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 6018
    .local v5, "matcher":Ljava/util/regex/Matcher;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v6, "searchSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1042
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, "keyWord":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .line 1044
    .local v8, "start":I
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    .line 1045
    .local v1, "end":I
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1046
    .local v2, "existLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    add-int/lit8 v12, v8, -0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1047
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 7017
    sget-object v9, Leda;->a:Landroid/content/Context;

    .line 1047
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lemt$b;->text_color_blue:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1049
    .local v3, "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    add-int v9, v2, v8

    add-int/lit8 v9, v9, -0x5

    add-int v10, v2, v1

    add-int/lit8 v10, v10, -0x5

    const/16 v11, 0x21

    :try_start_0
    invoke-virtual {v7, v3, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1050
    new-instance v9, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;

    add-int v10, v2, v8

    add-int/lit8 v10, v10, -0x5

    add-int v11, v2, v1

    add-int/lit8 v11, v11, -0x5

    invoke-direct {v9, v10, v11}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;-><init>(II)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/lit8 v10, v1, 0x6

    if-le v9, v10, :cond_1

    .line 1055
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v1, 0x6

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1060
    sget-object v9, Lcom/alibaba/android/search/utils/SearchUtils;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1061
    goto :goto_1

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1057
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo p0, ""

    .line 1062
    .end local v1    # "end":I
    .end local v2    # "existLength":I
    .end local v3    # "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v4    # "keyWord":Ljava/lang/String;
    .end local v8    # "start":I
    :cond_2
    invoke-virtual {v7, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1063
    new-instance v9, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;

    invoke-direct {v9, v7, v6}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;J)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 7
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "atUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;JZ)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;JZ)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 23
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "atUid"    # J
    .param p5, "fromLocalGlobalSearch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v17, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 176
    new-instance v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 177
    .local v9, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    move-object/from16 v0, p0

    iput-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 178
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v18

    const-string/jumbo v17, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 179
    .local v16, "uid":Ljava/lang/Long;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 180
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v16    # "uid":Ljava/lang/Long;
    :cond_0
    :goto_0
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string/jumbo v18, "count"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 186
    .local v6, "count":Ljava/lang/String;
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string/jumbo v18, "title"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 189
    :try_start_0
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string/jumbo v18, "contentType"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 194
    .local v5, "contentType":I
    const-string/jumbo v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v6}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 197
    :cond_1
    iput v5, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->singleMsgContentType:I

    .line 199
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string/jumbo v18, "content"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 200
    .local v4, "content":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 202
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v5, v0, :cond_7

    .line 205
    const-string/jumbo v17, "tl"

    move-object/from16 v0, v17

    invoke-static {v14, v5, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 242
    iget-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string/jumbo v18, "msg_ext"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 243
    .local v12, "ext":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 244
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    .local v13, "extObject":Lorg/json/JSONObject;
    const-string/jumbo v17, "atIds"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "atString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 248
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 249
    .local v2, "atIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {v4, v2}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .end local v2    # "atIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "atString":Ljava/lang/String;
    .end local v13    # "extObject":Lorg/json/JSONObject;
    :cond_3
    const-wide/16 v18, 0x0

    cmp-long v17, p3, v18

    if-nez v17, :cond_1b

    .line 257
    const-string/jumbo v7, ""

    .line 259
    .local v7, "desc":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    .line 260
    sget-object v17, Lcom/alibaba/android/search/utils/SearchUtils;->b:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 261
    .local v15, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 262
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 264
    .local v8, "descPrefixLength":I
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int v17, v17, v8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 267
    .end local v8    # "descPrefixLength":I
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, "ellipsizedContent":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "contentType":I
    .end local v7    # "desc":Ljava/lang/String;
    .end local v11    # "ellipsizedContent":Ljava/lang/String;
    .end local v12    # "ext":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :goto_2
    return-object v9

    .line 183
    .end local v6    # "count":Ljava/lang/String;
    .end local v9    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Ljava/util/Map;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v9

    .restart local v9    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    goto/16 :goto_0

    .line 206
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v5    # "contentType":I
    .restart local v6    # "count":Ljava/lang/String;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    :cond_7
    const/16 v17, 0x1f4

    move/from16 v0, v17

    if-eq v5, v0, :cond_8

    const/16 v17, 0x1f5

    move/from16 v0, v17

    if-eq v5, v0, :cond_8

    const/16 v17, 0x1f6

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 209
    :cond_8
    :try_start_2
    const-string/jumbo v17, "f_name"

    move-object/from16 v0, v17

    invoke-static {v14, v5, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 210
    :cond_9
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-eq v5, v0, :cond_a

    const/16 v17, 0x12c

    move/from16 v0, v17

    if-ne v5, v0, :cond_b

    .line 211
    :cond_a
    const-string/jumbo v17, "b_tl"

    move-object/from16 v0, v17

    invoke-static {v14, v5, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 212
    :cond_b
    const/16 v17, 0x66

    move/from16 v0, v17

    if-ne v5, v0, :cond_c

    .line 213
    const-string/jumbo v17, "title"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 215
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcid;->c()Landroid/app/Application;

    move-result-object v18

    sget v19, Lemt$g;->lst_msg_tip_share:I

    invoke-virtual/range {v18 .. v19}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 218
    :cond_c
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v5, v0, :cond_d

    .line 219
    const-string/jumbo v17, "fileName"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 221
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcid;->c()Landroid/app/Application;

    move-result-object v18

    sget v19, Lemt$g;->lst_msg_tip_file:I

    invoke-virtual/range {v18 .. v19}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 223
    :cond_d
    const/16 v17, 0x2bc

    move/from16 v0, v17

    if-ne v5, v0, :cond_e

    .line 224
    const-string/jumbo v17, "text"

    move-object/from16 v0, v17

    invoke-static {v14, v5, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 225
    :cond_e
    const/16 v17, 0x640

    move/from16 v0, v17

    if-ne v5, v0, :cond_15

    .line 1365
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1366
    const-string/jumbo v4, ""

    .line 226
    :goto_3
    goto/16 :goto_1

    .line 1368
    :cond_f
    const-class v17, Lcom/alibaba/wukong/im/MessageService;

    invoke-static/range {v17 .. v17}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/wukong/im/MessageService;

    const/16 v18, 0x640

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lcom/alibaba/wukong/im/MessageService;->parseMessageContent(ILjava/lang/String;)Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v17

    .line 1369
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 1370
    const-string/jumbo v4, ""

    goto :goto_3

    .line 1372
    :cond_10
    check-cast v17, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 1375
    const-string/jumbo v18, "2"

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->msgType()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1376
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcid;->c()Landroid/app/Application;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lemt$g;->dt_im_chat_ding_content_audio:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1380
    :goto_4
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 1381
    const-string/jumbo v18, ""

    .line 1384
    :cond_11
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->bizType()Ljava/lang/String;

    move-result-object v17

    .line 2150
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v19

    .line 1385
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v20, Lemt$g;->dt_ding_notify_ding:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1386
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1388
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v19, Lemt$g;->dt_ding_notify_conference:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1393
    :cond_12
    :goto_5
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "["

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    const/16 v17, 0x2

    const-string/jumbo v20, "]"

    aput-object v20, v19, v17

    const/16 v17, 0x3

    aput-object v18, v19, v17

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1378
    :cond_13
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->content()Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    .line 1389
    :cond_14
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1391
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v19, Lemt$g;->dt_ding_notify_task:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 227
    :cond_15
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v5, v0, :cond_16

    const/16 v17, 0xcb

    move/from16 v0, v17

    if-ne v5, v0, :cond_17

    .line 229
    :cond_16
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    sget v18, Lemt$g;->and_lst_msg_tip_image:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 231
    :cond_17
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v5, v0, :cond_18

    const/16 v17, 0xcc

    move/from16 v0, v17

    if-ne v5, v0, :cond_19

    .line 233
    :cond_18
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    sget v18, Lemt$g;->and_lst_msg_tip_audio:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 235
    :cond_19
    const/16 v17, 0x5dc

    move/from16 v0, v17

    if-ne v5, v0, :cond_1a

    .line 236
    const-string/jumbo v17, "title"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 238
    :cond_1a
    const-string/jumbo v17, "txt"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 270
    .restart local v12    # "ext":Ljava/lang/String;
    :cond_1b
    iput-object v4, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 273
    .end local v12    # "ext":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 274
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 279
    .end local v4    # "content":Ljava/lang/String;
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_1c
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x3e7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1d

    .line 280
    const-string/jumbo v6, "999+"
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 285
    :cond_1d
    :goto_6
    if-eqz p5, :cond_1e

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->t()Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 286
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    sget v18, Lemt$g;->search_chat_message_count:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "+"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    goto/16 :goto_2

    .line 282
    :catch_1
    move-exception v10

    .line 283
    .local v10, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    goto :goto_6

    .line 288
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_1e
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    sget v18, Lemt$g;->search_chat_message_count:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    goto/16 :goto_2

    .line 191
    .end local v5    # "contentType":I
    :catch_2
    move-exception v17

    goto/16 :goto_2
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 2
    .param p0, "uid1"    # J
    .param p2, "uid2"    # J

    .prologue
    .line 656
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 638
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 647
    .local v2, "hash":[B
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 648
    .local v3, "hex":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v0, v2, v4

    .line 649
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    const-string/jumbo v6, "0"

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 650
    :cond_0
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 648
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 639
    .end local v0    # "b":B
    .end local v2    # "hash":[B
    .end local v3    # "hex":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 652
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v4

    .line 642
    :catch_1
    move-exception v1

    .line 643
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 652
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "hash":[B
    .restart local v3    # "hex":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "contentJsonStr"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/MessageObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/MessageObject;)Ljava/lang/String;
    .locals 16
    .param p0, "contentJsonStr"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "messageObject"    # Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .prologue
    .line 398
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 399
    const/4 v3, 0x0

    .line 447
    :cond_0
    :goto_0
    return-object v3

    .line 402
    :cond_1
    const/4 v4, 0x0

    .line 404
    .local v4, "contentJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "contentJson":Lorg/json/JSONObject;
    .local v5, "contentJson":Lorg/json/JSONObject;
    move-object v4, v5

    .line 409
    .end local v5    # "contentJson":Lorg/json/JSONObject;
    .restart local v4    # "contentJson":Lorg/json/JSONObject;
    :goto_1
    if-nez v4, :cond_4

    .line 410
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v11

    sget v12, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v11, v12, :cond_2

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v11

    sget v12, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v11, v12, :cond_3

    .line 411
    :cond_2
    const-string/jumbo v3, "\u670d\u52a1\u7aef\u6570\u636e\u683c\u5f0f\u9519\u8bef,\u8bf7\u8054\u7cfb\u7533\u80fd"

    goto :goto_0

    .line 405
    :catch_0
    move-exception v8

    .line 406
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 413
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    const-string/jumbo v3, ""

    goto :goto_0

    .line 417
    :cond_4
    const-string/jumbo v3, ""

    .line 418
    .local v3, "content":Ljava/lang/String;
    const-string/jumbo v11, "contentType"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 420
    .local v6, "contentType":I
    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a()Lcom/alibaba/android/search/service/SearchConfigCenter;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a(I)Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;

    move-result-object v10

    .line 421
    .local v10, "searchTypeConfig":Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;
    if-eqz v10, :cond_0

    .line 425
    if-eqz p2, :cond_5

    .line 426
    move-object/from16 v0, p2

    iput v6, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->contentType:I

    .line 3460
    :cond_5
    const-string/jumbo v11, "textContent"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 3461
    if-nez v11, :cond_9

    .line 3462
    const/4 v3, 0x0

    .line 430
    :goto_2
    const-string/jumbo v11, "atOpenIds"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 431
    .local v1, "atIdsJson":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 433
    .local v2, "atIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v2, :cond_6

    .line 434
    invoke-static {v3, v2}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_6
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v11

    const-string/jumbo v12, "f_search_filter_optimize"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_a

    .line 439
    invoke-virtual {v10}, Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;->getLocalizedDesc()Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "desc":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    :cond_7
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, "ellipsizedContent":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 442
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    sget v13, Lemt$g;->search_type_prefix:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v7    # "desc":Ljava/lang/String;
    :cond_8
    :goto_3
    move-object v3, v9

    .line 447
    goto/16 :goto_0

    .line 3465
    .end local v1    # "atIdsJson":Lorg/json/JSONObject;
    .end local v2    # "atIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v9    # "ellipsizedContent":Ljava/lang/String;
    :cond_9
    const-string/jumbo v12, "text"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 445
    .restart local v1    # "atIdsJson":Lorg/json/JSONObject;
    .restart local v2    # "atIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "ellipsizedContent":Ljava/lang/String;
    goto :goto_3
.end method

.method private static a(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "type"    # I
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 318
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v11, "multi"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 319
    .local v8, "multiArr":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    if-nez v8, :cond_2

    .line 320
    :cond_0
    const/4 v1, 0x0

    .line 361
    :cond_1
    :goto_0
    return-object v1

    .line 322
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "count":I
    :goto_1
    if-ge v7, v3, :cond_b

    .line 323
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 324
    .local v9, "obj":Lorg/json/JSONObject;
    if-eqz v9, :cond_3

    .line 327
    const-string/jumbo v11, "ext"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "ext":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 332
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    .local v6, "extObj":Lorg/json/JSONObject;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 322
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "ext":Ljava/lang/String;
    .end local v6    # "extObj":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 338
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v5    # "ext":Ljava/lang/String;
    .restart local v6    # "extObj":Lorg/json/JSONObject;
    :cond_4
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v11

    const-string/jumbo v12, "f_search_filter_optimize"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_1

    .line 339
    const-string/jumbo v10, ""

    .line 340
    .local v10, "prefix":Ljava/lang/String;
    const/16 v11, 0x190

    move/from16 v0, p1

    if-ne v0, v11, :cond_6

    .line 341
    sget v11, Lemt$g;->search_mail:I

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 354
    :cond_5
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lemt$g;->search_type_prefix:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v2, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 342
    :cond_6
    const/16 v11, 0x1f4

    move/from16 v0, p1

    if-eq v0, v11, :cond_7

    const/16 v11, 0x1f5

    move/from16 v0, p1

    if-eq v0, v11, :cond_7

    const/16 v11, 0x1f6

    move/from16 v0, p1

    if-ne v0, v11, :cond_8

    .line 345
    :cond_7
    sget v11, Lemt$g;->search_cloud:I

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 346
    :cond_8
    const/16 v11, 0x12d

    move/from16 v0, p1

    if-eq v0, v11, :cond_9

    const/16 v11, 0x12c

    move/from16 v0, p1

    if-ne v0, v11, :cond_a

    .line 347
    :cond_9
    const-string/jumbo v11, "h_tl"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 348
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 349
    sget v11, Lemt$g;->and_lst_msg_tip_work:I

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 351
    :cond_a
    const/16 v11, 0x2bc

    move/from16 v0, p1

    if-ne v0, v11, :cond_5

    .line 352
    sget v11, Lemt$g;->dt_im_msg_type_announce:I

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_3

    .line 357
    .end local v1    # "content":Ljava/lang/String;
    .end local v6    # "extObj":Lorg/json/JSONObject;
    .end local v10    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 358
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 361
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v5    # "ext":Ljava/lang/String;
    .end local v9    # "obj":Lorg/json/JSONObject;
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;
    .locals 14
    .param p0, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v9, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    if-nez p0, :cond_0

    .line 746
    :goto_0
    return-object v9

    .line 685
    :cond_0
    const/4 v5, -0x1

    .line 686
    .local v5, "type":I
    const-string/jumbo v4, ""

    .line 687
    .local v4, "title":Ljava/lang/String;
    const/4 v3, -0x1

    .line 689
    .local v3, "tag":I
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v11, :cond_4

    .line 690
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v12, "type"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 691
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v12, "type"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 4033
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 693
    :cond_1
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v12, "title"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "title":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 694
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v12, "tag"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 695
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v12, "tag"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 5033
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 703
    :cond_2
    :goto_1
    new-instance v8, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v8}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 704
    .local v8, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    const/4 v11, 0x1

    if-ne v5, v11, :cond_a

    .line 706
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_7

    .line 708
    :cond_3
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v11, :cond_5

    .line 709
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "cid":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 714
    .local v6, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v10

    .line 715
    .local v10, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v10, :cond_6

    .line 716
    iget-object v11, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 717
    iget-object v11, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 744
    .end local v0    # "cid":Ljava/lang/String;
    .end local v6    # "uid":J
    .end local v10    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_3
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 697
    .end local v8    # "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    :cond_4
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v11, :cond_2

    .line 698
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    .line 699
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    .line 700
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v12

    long-to-int v3, v12

    goto :goto_1

    .line 711
    .restart local v8    # "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    :cond_5
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v12, "cid"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cid":Ljava/lang/String;
    goto :goto_2

    .line 719
    .restart local v6    # "uid":J
    .restart local v10    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_6
    iput-object v4, v8, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    goto :goto_3

    .line 723
    .end local v0    # "cid":Ljava/lang/String;
    .end local v6    # "uid":J
    .end local v10    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_7
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    .line 724
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    if-eqz v2, :cond_8

    .line 725
    iget-object v11, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    iput-object v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 726
    iget-object v11, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    iput-object v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 728
    :cond_8
    const/4 v11, 0x4

    if-ne v3, v11, :cond_9

    .line 729
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->mIsBurnChat:Z

    goto :goto_3

    .line 731
    :cond_9
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->mIsBurnChat:Z

    goto :goto_3

    .line 736
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_a
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v11, :cond_b

    .line 737
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    goto :goto_3

    .line 739
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    .line 740
    .local v1, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 5750
    const/4 v11, 0x0

    .line 5751
    if-eqz v12, :cond_c

    .line 5752
    const-string/jumbo v11, "groupIconType"

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 5753
    sget-object v13, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v13}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v13

    if-ne v11, v13, :cond_d

    .line 5754
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 740
    :cond_c
    :goto_4
    iput-object v11, v8, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    goto/16 :goto_3

    .line 5756
    :cond_d
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v1, v13}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5757
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 5758
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 5759
    const-string/jumbo v11, "groupIcon"

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_4
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v1, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    if-nez p0, :cond_0

    .line 674
    :goto_0
    return-object v1

    .line 670
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 671
    .local v0, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 672
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 925
    :cond_0
    const/4 v2, 0x0

    .line 952
    :cond_1
    return-object v2

    .line 927
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v2, "localContactObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 930
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 935
    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 939
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v1

    .line 940
    .local v1, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v1, :cond_3

    .line 944
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 945
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v4, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 946
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v4, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 949
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 8
    .param p0, "atIdsJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    if-nez p0, :cond_1

    .line 471
    const/4 v0, 0x0

    .line 490
    :cond_0
    :goto_0
    return-object v0

    .line 474
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 477
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v0, "atIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 481
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "value":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 484
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 486
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1290
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/utils/SearchUtils$6;

    invoke-direct {v1, p2}, Lcom/alibaba/android/search/utils/SearchUtils$6;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1301
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "uid"    # J

    .prologue
    const/4 v5, 0x1

    .line 494
    if-nez p0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 499
    :cond_0
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    move-object v7, p0

    .line 500
    check-cast v7, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 501
    .local v7, "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 505
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/search/utils/SearchUtils$1;

    invoke-direct {v1, p0, v7}, Lcom/alibaba/android/search/utils/SearchUtils$1;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 540
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    move-object v2, p1

    move-object v3, p2

    .line 505
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0

    .line 503
    .end local v7    # "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "dingtalkBaseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    .line 1005
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.add.search.history"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_search_history_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1011
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 994
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.add.search.history"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_search_history"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .param p4, "source"    # I
    .param p5, "mobile"    # Ljava/lang/String;

    .prologue
    .line 545
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/utils/SearchUtils$2;

    invoke-direct {v1, p1, p5, p4, p0}, Lcom/alibaba/android/search/utils/SearchUtils$2;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1136
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1142
    .local v1, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1144
    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1146
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lemt$g;->and_search_recall_results_title_tip_prefix:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1148
    sget v3, Lemt$e;->tv_recall_tip_prefix:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1149
    .local v0, "prefixView":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    sget v3, Lemt$e;->tv_recall_tip_suffix:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1151
    .local v2, "suffixView":Landroid/widget/TextView;
    sget v3, Lemt$g;->and_search_recall_results_title_tip_suffix:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1153
    new-instance v3, Lcom/alibaba/android/search/utils/SearchUtils$5;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/alibaba/android/search/utils/SearchUtils$5;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V
    .locals 3
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p1, "deptName"    # Ljava/lang/String;

    .prologue
    .line 975
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-static {}, Lesm;->a()Lesm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->fromUserIdentity(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;I)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lesm;->a(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 980
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-static {p0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->fromUserIdentity(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .param p1, "userIconObject"    # Lcom/alibaba/android/search/SearchUserIconObject;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    .prologue
    .line 781
    if-nez p1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->mIsBurnChat:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 787
    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 788
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 789
    :cond_2
    iget-boolean v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->mIsGroupIcon:Z

    if-nez v0, :cond_4

    .line 790
    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    :goto_1
    iget-object v1, p1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->name:Ljava/lang/String;

    goto :goto_1

    .line 793
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    :goto_2
    iget-object v1, p1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->name:Ljava/lang/String;

    goto :goto_2

    .line 796
    :cond_6
    iget v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->mAvatarResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 797
    iget v0, p1, Lcom/alibaba/android/search/SearchUserIconObject;->mAvatarResId:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p1, "source"    # I

    .prologue
    .line 957
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const-class v0, Leno;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/utils/SearchUtils$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/utils/SearchUtils$4;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/search/model/BaseModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/utils/SearchUtils$ActionType;)V
    .locals 5
    .param p0, "baseModel"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "type"    # Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    .prologue
    const/4 v4, 0x1

    .line 802
    if-nez p2, :cond_0

    .line 848
    :goto_0
    return-void

    .line 806
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 807
    .local v1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iput v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 808
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    new-instance v0, Lcom/alibaba/android/search/utils/SearchUtils$3;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/alibaba/android/search/utils/SearchUtils$3;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/utils/SearchUtils$ActionType;Landroid/app/Activity;Lcom/alibaba/android/search/model/BaseModel;)V

    .line 844
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    if-eqz p1, :cond_1

    .line 845
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    check-cast v0, Lcma;

    .line 847
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 1081
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_new_entry"

    .line 7083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1081
    return v0
.end method

.method public static a(J)Z
    .locals 2
    .param p0, "uid"    # J

    .prologue
    .line 1286
    const-wide v0, 0x12dbf9ea00L

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x1405ffdc00L

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 168
    instance-of v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-nez v1, :cond_0

    .line 169
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_msg_use_im_style"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z
    .locals 6
    .param p0, "data"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 872
    if-nez p0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 881
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 885
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    .line 1282
    :cond_1
    :goto_0
    return v5

    .line 1187
    :cond_2
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "search_engine_use_fts_v2"

    .line 1188
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1189
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1190
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1191
    .local v4, "useFts":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_search_engine_cloudsetting_use_fts_v2"

    invoke-static {v6, v7, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1192
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    goto :goto_0

    .line 1196
    .end local v4    # "useFts":Z
    :cond_3
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "search_group_native_patch_date"

    .line 1197
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1199
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "pref_key_local_group_search_time_span"

    .line 10150
    invoke-static {p2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v6

    .line 1199
    invoke-static {v7, v8, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1204
    :cond_4
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "search_query_len"

    .line 1205
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 11150
    invoke-static {p2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 1207
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 1208
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_search_query_length"

    invoke-static {v6, v7, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1213
    .end local v1    # "length":I
    :cond_5
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "search_recommend_credibility"

    .line 1214
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1216
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_search_recommend_credibility"

    invoke-static {v6, v7, p2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    :cond_6
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "search_local_group_batch_size"

    .line 1222
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 12150
    invoke-static {p2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 1224
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 1225
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_search_local_group_batch_size"

    invoke-static {v6, v7, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1230
    .end local v2    # "size":I
    :cond_7
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "search_render_delay_time_android"

    .line 1231
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 13150
    invoke-static {p2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 1233
    .local v3, "time":I
    if-lez v3, :cond_1

    .line 1234
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_search_search_render_delay_time"

    invoke-static {v6, v7, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1239
    .end local v3    # "time":I
    :cond_8
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "intimacy_click_history_min"

    .line 1240
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1241
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1242
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_click_history_intimacy_min"

    .line 1243
    invoke-static {p2}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 1242
    invoke-static {v6, v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 1246
    :cond_9
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "msg_search_type_list"

    .line 1247
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1249
    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a()Lcom/alibaba/android/search/service/SearchConfigCenter;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/alibaba/android/search/service/SearchConfigCenter;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1252
    :cond_a
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "search_debug_user_whitelist"

    .line 1253
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1255
    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a()Lcom/alibaba/android/search/service/SearchConfigCenter;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1258
    :cond_b
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "search_vvip"

    .line 1259
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1260
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1261
    const-string/jumbo v6, "pref_key_search_vvip_list"

    const-string/jumbo v7, "1"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v7}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1264
    :cond_c
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "fts_self_check_days"

    .line 1265
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 14150
    invoke-static {p2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1267
    .local v0, "days":I
    if-lez v0, :cond_1

    .line 1268
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_fts_self_check_days"

    invoke-static {v6, v7, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1272
    .end local v0    # "days":I
    :cond_d
    const-string/jumbo v7, "dt_search"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "fts_repair_days"

    .line 1273
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 15150
    invoke-static {p2, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1275
    .restart local v0    # "days":I
    if-lez v0, :cond_1

    .line 1276
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_fts_repair_days"

    invoke-static {v6, v7, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v0    # "days":I
    :cond_e
    move v5, v6

    .line 1282
    goto/16 :goto_0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 852
    if-nez p0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return v2

    .line 856
    :cond_1
    const-string/jumbo v3, "status"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 857
    .local v1, "statusStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 859
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 860
    const/4 v2, 0x1

    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;
    .locals 5
    .param p0, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 1304
    const-string/jumbo v0, ""

    .line 1305
    .local v0, "title":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 1316
    .end local v0    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1308
    .end local v1    # "title":Ljava/lang/String;
    .restart local v0    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 1309
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    const-string/jumbo v4, "c_name_locale"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1312
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    :cond_2
    move-object v1, v0

    .line 1316
    .end local v0    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1085
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_suggestion_guide"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_suggestion_guide"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z
    .locals 2
    .param p0, "node"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    const/4 v1, 0x1

    .line 1321
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    iget v0, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->empStatus:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1132
    const-string/jumbo v0, "recal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "k1"    # Ljava/lang/String;
    .param p1, "k2"    # Ljava/lang/String;

    .prologue
    .line 631
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hitField"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1016
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-object p0

    .line 1020
    :cond_1
    const-string/jumbo v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "hitFields":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1022
    aget-object v2, v0, v4

    invoke-static {v2, p1}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1023
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1024
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1025
    goto :goto_0

    .end local v1    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    array-length v2, v0

    if-ne v2, v4, :cond_0

    .line 1026
    invoke-static {p0, p1}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1094
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_all_expand"

    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_all_search_expand_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1068
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    .end local p0    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1072
    .restart local p0    # "content":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "<red>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "</red>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    :cond_2
    invoke-static {p0, p1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1103
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_msg_server"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pref_key_msg_search_from_cloud_server"

    .line 1104
    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "originalText"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const-string/jumbo v0, ""

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 3140
    :cond_1
    sget v2, Lcom/alibaba/android/search/utils/SearchUtils;->a:I

    if-gtz v2, :cond_3

    .line 3144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 3145
    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    .line 3146
    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    const/high16 v4, 0x42200000    # 40.0f

    .line 3147
    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 3148
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 3149
    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v2, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3150
    const-string/jumbo v2, "\u9489"

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 3151
    if-lez v2, :cond_2

    .line 3152
    div-int v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 3153
    sput v2, Lcom/alibaba/android/search/utils/SearchUtils;->a:I

    if-gtz v2, :cond_3

    .line 3157
    :cond_2
    const/16 v2, 0xf

    sput v2, Lcom/alibaba/android/search/utils/SearchUtils;->a:I

    .line 3160
    :cond_3
    sget v2, Lcom/alibaba/android/search/utils/SearchUtils;->a:I

    .line 306
    invoke-static {p0, p1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "highlightText":Ljava/lang/String;
    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "realString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "..."

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->l()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1112
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_new_retail_member_search"

    .line 8083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1113
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 1117
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->l()Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1121
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_search_activity_keywords"

    .line 9083
    invoke-virtual {v4, v5, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 1121
    if-eqz v4, :cond_0

    .line 1122
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_search_activity_search_view"

    invoke-virtual {v4, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1123
    .local v1, "enable":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1124
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    move-result-object v0

    .line 1125
    .local v0, "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->showQuickHintActionBtn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1128
    .end local v0    # "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    :goto_1
    return v2

    .end local v1    # "enable":Z
    :cond_0
    move v1, v3

    .line 1122
    goto :goto_0

    .restart local v0    # "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    .restart local v1    # "enable":Z
    :cond_1
    move v2, v3

    .line 1125
    goto :goto_1

    .end local v0    # "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    :cond_2
    move v2, v3

    .line 1128
    goto :goto_1
.end method

.method public static i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1168
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_click_history"

    .line 10083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1168
    if-nez v1, :cond_0

    .line 1169
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "config_switch_search_click_history_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public static k()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1333
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_can_search_contact_local_enhance"

    .line 16083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1334
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l()Z
    .locals 2

    .prologue
    .line 1177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 1178
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
