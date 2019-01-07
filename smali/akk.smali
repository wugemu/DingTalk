.class public final Lakk;
.super Ljava/lang/Object;
.source "UTTPKBiz.java"


# static fields
.field private static b:Lakk;


# instance fields
.field private a:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lakk;->b:Lakk;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "B01N16"

    aput-object v2, v0, v1

    iput-object v0, p0, Lakk;->a:[Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lakk;->c:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lakk;->d:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lakk;->e:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lakk;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lakk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lakk;->b:Lakk;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lakk;

    invoke-direct {v0}, Lakk;-><init>()V

    sput-object v0, Lakk;->b:Lakk;

    .line 50
    :cond_0
    sget-object v0, Lakk;->b:Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "aFetchRule"    # Ljava/lang/String;
    .param p1, "aPageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "aPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v5, 0x6

    .line 88
    .line 2205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 88
    if-eqz v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v2

    .line 91
    :cond_1
    const-string/jumbo v3, "${url|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_2

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3205
    .local v0, "lRuleKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 93
    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 96
    .end local v0    # "lRuleKey":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "${ut|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 97
    const/4 v3, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4205
    .restart local v0    # "lRuleKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 98
    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 99
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 101
    .end local v0    # "lRuleKey":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "${"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_5

    .line 102
    const/4 v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5205
    .restart local v0    # "lRuleKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 103
    if-nez v3, :cond_0

    .line 104
    if-eqz p2, :cond_4

    .line 105
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "lValue":Ljava/lang/String;
    if-eqz v1, :cond_4

    move-object v2, v1

    .line 107
    goto/16 :goto_0

    .line 110
    .end local v1    # "lValue":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .end local v0    # "lRuleKey":Ljava/lang/String;
    :cond_5
    move-object v2, p0

    .line 115
    goto/16 :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;
    .locals 19
    .param p1, "aPageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "aPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v11, "tpk_md5"

    invoke-static {v11}, Lcom/alibaba/analytics/AnalyticsMgr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "lRemoteTPKMD5":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->e:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 124
    const-string/jumbo v11, "tpk_string"

    invoke-static {v11}, Lcom/alibaba/analytics/AnalyticsMgr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "lTPKString":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 6054
    const-string/jumbo v11, "UTMCTPKBiz"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, ""

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "pConfName"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "pConfContent"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6205
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 6055
    if-nez v11, :cond_2

    .line 6059
    :try_start_1
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6060
    const/4 v11, 0x0

    move v12, v11

    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v12, v11, :cond_2

    .line 6061
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 6062
    if-eqz v14, :cond_1

    const-string/jumbo v11, "kn"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "kn"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 6063
    const-string/jumbo v11, "kn"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6067
    const-string/jumbo v11, "a"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 6070
    new-instance v16, Lakl;

    invoke-direct/range {v16 .. v16}, Lakl;-><init>()V

    .line 6071
    const-string/jumbo v11, "v"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7205
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 6072
    if-eqz v17, :cond_0

    .line 6073
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "${"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v17, "}"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6075
    :cond_0
    const-string/jumbo v17, "ty"

    const-string/jumbo v18, "far"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 8018
    move-object/from16 v0, v16

    iput-object v15, v0, Lakl;->a:Ljava/lang/String;

    .line 8034
    move-object/from16 v0, v16

    iput-object v11, v0, Lakl;->b:Ljava/lang/String;

    .line 9026
    move-object/from16 v0, v16

    iput-object v14, v0, Lakl;->c:Ljava/lang/String;

    .line 6079
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->c:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6060
    :cond_1
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto/16 :goto_0

    .line 6082
    :catch_0
    move-exception v11

    .line 6083
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lakk;->e:Ljava/lang/String;

    .line 132
    .end local v8    # "lTPKString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lakl;

    .line 10014
    .local v7, "lTPKItem":Lakl;
    iget-object v4, v7, Lakl;->a:Ljava/lang/String;

    .line 10022
    .local v4, "lKey":Ljava/lang/String;
    iget-object v9, v7, Lakl;->c:Ljava/lang/String;

    .line 10030
    .local v9, "lType":Ljava/lang/String;
    iget-object v3, v7, Lakl;->b:Ljava/lang/String;

    .line 10205
    .local v3, "lFetchRule":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    .line 136
    if-eqz v11, :cond_5

    .line 137
    const/4 v11, 0x0

    .line 167
    .end local v3    # "lFetchRule":Ljava/lang/String;
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v7    # "lTPKItem":Lakl;
    .end local v9    # "lType":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    return-object v11

    .line 139
    .restart local v3    # "lFetchRule":Ljava/lang/String;
    .restart local v4    # "lKey":Ljava/lang/String;
    .restart local v7    # "lTPKItem":Lakl;
    .restart local v9    # "lType":Ljava/lang/String;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->d:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 11205
    .local v10, "lValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 140
    if-eqz v11, :cond_6

    .line 142
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1}, Lakk;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 12205
    .local v5, "lNewValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 143
    if-nez v11, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->d:Ljava/util/Map;

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 121
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lFetchRule":Ljava/lang/String;
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v5    # "lNewValue":Ljava/lang/String;
    .end local v6    # "lRemoteTPKMD5":Ljava/lang/String;
    .end local v7    # "lTPKItem":Lakl;
    .end local v9    # "lType":Ljava/lang/String;
    .end local v10    # "lValue":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 147
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lFetchRule":Ljava/lang/String;
    .restart local v4    # "lKey":Ljava/lang/String;
    .restart local v6    # "lRemoteTPKMD5":Ljava/lang/String;
    .restart local v7    # "lTPKItem":Lakl;
    .restart local v9    # "lType":Ljava/lang/String;
    .restart local v10    # "lValue":Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string/jumbo v11, "far"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1}, Lakk;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 13205
    .restart local v5    # "lNewValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 151
    if-nez v11, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->d:Ljava/util/Map;

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    .end local v3    # "lFetchRule":Ljava/lang/String;
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v5    # "lNewValue":Ljava/lang/String;
    .end local v7    # "lTPKItem":Lakl;
    .end local v9    # "lType":Ljava/lang/String;
    .end local v10    # "lValue":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->d:Ljava/util/Map;

    const-string/jumbo v12, "ttid"

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 159
    invoke-static {}, Laju;->a()Laju;

    move-result-object v11

    .line 14062
    iget-object v11, v11, Laju;->e:Ljava/lang/String;

    .line 14205
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 159
    if-nez v11, :cond_8

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->d:Ljava/util/Map;

    const-string/jumbo v12, "ttid"

    invoke-static {}, Laju;->a()Laju;

    move-result-object v13

    .line 15062
    iget-object v13, v13, Laju;->e:Ljava/lang/String;

    .line 160
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lakk;->d:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 165
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lakk;->d:Ljava/util/Map;

    invoke-static {v12}, Lane;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    goto/16 :goto_2

    .line 167
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public final declared-synchronized a(Lakl;)V
    .locals 1
    .param p1, "aTPKItem"    # Lakl;

    .prologue
    .line 31
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    iget-object v0, p0, Lakk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tpkKey"    # Ljava/lang/String;
    .param p2, "tpkValue"    # Ljava/lang/String;

    .prologue
    .line 37
    monitor-enter p0

    .line 1205
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    if-nez p2, :cond_1

    .line 39
    iget-object v0, p0, Lakk;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :cond_1
    :try_start_1
    iget-object v0, p0, Lakk;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lakk;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
