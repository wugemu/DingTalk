.class public Lenv;
.super Ljava/lang/Object;
.source "FeedbackQueryRecorder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/SearchInterface$c;


# instance fields
.field public final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v0, 0xa

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v4, "dt_search"

    const-string/jumbo v5, "search_vvip_feedback_history_count"

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v1

    .line 40
    .local v1, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v1, :cond_0

    .line 43
    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v0}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .end local v2    # "value":Ljava/lang/String;
    .local v0, "cacheSize":I
    :cond_0
    new-instance v3, Landroid/util/LruCache;

    invoke-direct {v3, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object v3, p0, Lenv;->a:Landroid/util/LruCache;

    .line 48
    return-void
.end method

.method public static b()Lenv;
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcmk;->a()Lcmk;

    move-result-object v0

    const-class v1, Lenv;

    invoke-virtual {v0, v1}, Lcmk;->a(Ljava/lang/Class;)Lcmj;

    move-result-object v0

    check-cast v0, Lenv;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lenv;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 106
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v7, p0, Lenv;->a:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->size()I

    move-result v6

    .line 75
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 76
    const/4 v7, 0x0

    .line 99
    :goto_0
    return-object v7

    .line 79
    :cond_0
    iget-object v7, p0, Lenv;->a:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v5

    .line 81
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, "key":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "uuid"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v8, "kw"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "content":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    .line 99
    :catch_1
    move-exception v7

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
