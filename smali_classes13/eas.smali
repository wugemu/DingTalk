.class public Leas;
.super Ljava/lang/Object;
.source "GroupRingManager.java"


# static fields
.field private static volatile a:Leas;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/models/GroupRingObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    return-void
.end method

.method public static a()Leas;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Leas;->a:Leas;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Leas;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Leas;->a:Leas;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Leas;

    invoke-direct {v0}, Leas;-><init>()V

    sput-object v0, Leas;->a:Leas;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Leas;->a:Leas;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/GroupRingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/GroupRingObject;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v16, "types"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 176
    .local v12, "typeArray":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v13, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 178
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    .line 179
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 180
    .local v15, "typeObject":Lorg/json/JSONObject;
    if-eqz v15, :cond_0

    .line 181
    const-string/jumbo v16, "typeId"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 182
    .local v11, "type":Ljava/lang/String;
    const-string/jumbo v16, "names"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, "typeName":Ljava/lang/String;
    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v11    # "type":Ljava/lang/String;
    .end local v14    # "typeName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "i":I
    .end local v15    # "typeObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v16, "rings"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 189
    .local v7, "ringArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_4

    .line 190
    const-string/jumbo v5, ""

    .line 191
    .local v5, "lastTypeId":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_4

    .line 192
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 193
    .local v10, "ringObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_2

    .line 194
    const-string/jumbo v16, "ringId"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "ringId":Ljava/lang/String;
    const-string/jumbo v16, "names"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "ringName":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;-><init>()V

    .line 197
    .local v2, "groupRingObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    iput-object v8, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringId:Ljava/lang/String;

    .line 198
    iput-object v9, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringName:Ljava/lang/String;

    .line 199
    const-string/jumbo v16, "mediaIdAndroid"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->mediaId:Ljava/lang/String;

    .line 200
    const-string/jumbo v16, "typeId"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeId:Ljava/lang/String;

    .line 201
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeFirst:Z

    .line 202
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeName:Ljava/lang/String;

    .line 203
    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->typeId:Ljava/lang/String;

    .line 204
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "groupRingObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    .end local v8    # "ringId":Ljava/lang/String;
    .end local v9    # "ringName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    .restart local v2    # "groupRingObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    .restart local v8    # "ringId":Ljava/lang/String;
    .restart local v9    # "ringName":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 210
    .end local v2    # "groupRingObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "lastTypeId":Ljava/lang/String;
    .end local v7    # "ringArray":Lorg/json/JSONArray;
    .end local v8    # "ringId":Ljava/lang/String;
    .end local v9    # "ringName":Ljava/lang/String;
    .end local v10    # "ringObject":Lorg/json/JSONObject;
    .end local v12    # "typeArray":Lorg/json/JSONArray;
    .end local v13    # "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v16, "im"

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "getRing parse json fail:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    return-object v6
.end method

.method static synthetic a(Leas;)V
    .locals 2
    .param p0, "x0"    # Leas;

    .prologue
    .line 35
    .line 2067
    const-string/jumbo v0, "sp_key_group_ring"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2068
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2072
    invoke-static {v0}, Leas;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2077
    invoke-direct {p0, v0}, Leas;->a(Ljava/util/List;)V

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic a(Leas;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Leas;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    .line 2093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2138
    const-string/jumbo v0, "GroupRing"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 2097
    new-instance v1, Leas$1;

    invoke-direct {v1, p0, p1}, Leas$1;-><init>(Leas;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic a(Leas;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Leas;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Leas;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/GroupRingObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/GroupRingObject;>;"
    iget-object v1, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    .line 85
    .local v0, "groupRingObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    iget-object v2, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v0    # "groupRingObject":Lcom/alibaba/android/dingtalkim/models/GroupRingObject;
    :cond_2
    return-void
.end method

.method static synthetic b(Leas;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leas;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Leas;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Leas;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Leas;

    .prologue
    .line 35
    iget-object v0, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "ringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/GroupRingObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/GroupRingObject;>;"
    if-nez p2, :cond_0

    .line 135
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v0, "404"

    const-string/jumbo v1, "param fail"

    invoke-interface {p2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Leas;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1138
    :cond_2
    const-string/jumbo v0, "GroupRing"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 118
    new-instance v1, Leas$2;

    invoke-direct {v1, p0, p1, p2}, Leas$2;-><init>(Leas;Ljava/lang/String;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
