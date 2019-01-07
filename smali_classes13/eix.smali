.class public Leix;
.super Ljava/lang/Object;
.source "FastConfigEngine.java"


# static fields
.field private static volatile c:Leix;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Leix;->a:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Leix;->b:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public static a()Leix;
    .locals 4

    .prologue
    .line 51
    sget-object v0, Leix;->c:Leix;

    .line 52
    .local v0, "engine":Leix;
    if-nez v0, :cond_1

    .line 53
    const-class v3, Leix;

    monitor-enter v3

    .line 54
    :try_start_0
    sget-object v0, Leix;->c:Leix;

    .line 55
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Leix;

    invoke-direct {v1}, Leix;-><init>()V

    sput-object v1, Leix;->c:Leix;

    .end local v0    # "engine":Leix;
    .local v1, "engine":Leix;
    move-object v0, v1

    .line 58
    .end local v1    # "engine":Leix;
    .restart local v0    # "engine":Leix;
    :cond_0
    monitor-exit v3

    .line 61
    :cond_1
    return-object v0

    .line 58
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "FastConfig_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 71
    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 71
    if-nez v4, :cond_0

    .line 2014
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 71
    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v6

    .line 3190
    :goto_0
    return-object v4

    .line 74
    :cond_1
    invoke-static {p1}, Leix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "prefModuleKey":Ljava/lang/String;
    iget-object v4, p0, Leix;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 76
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_2

    .line 2198
    iget-object v4, p0, Leix;->a:Landroid/content/Context;

    invoke-static {p1}, Leix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v7}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v4, "FastConfigEngine"

    const-string/jumbo v5, "getModuleKeyValue, content"

    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-static {v0}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    iget-object v4, p0, Leix;->b:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3142
    .end local v0    # "content":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    move-object v4, v6

    .line 3143
    goto :goto_0

    .line 84
    .restart local v0    # "content":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "FastConfigEngine"

    const-string/jumbo v5, "getModuleKeyValue"

    const-string/jumbo v7, "getModuleKeyValue parseObject ret null"

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const-string/jumbo v4, "FastConfigEngine"

    const-string/jumbo v5, "getModuleKeyValue"

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3146
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 3147
    if-eqz v4, :cond_e

    .line 3151
    const-string/jumbo v5, "matcher"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3152
    const-string/jumbo v5, "v"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3157
    const-string/jumbo v4, "\\|"

    .line 4014
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 3159
    if-eqz v8, :cond_6

    move-object v4, v5

    .line 3160
    goto/16 :goto_0

    .line 3163
    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3164
    if-eqz v9, :cond_7

    array-length v4, v9

    if-gtz v4, :cond_8

    :cond_7
    move-object v4, v6

    .line 3165
    goto/16 :goto_0

    .line 3168
    :cond_8
    sget-object v7, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    .line 3169
    array-length v10, v9

    const/4 v4, 0x0

    move v8, v4

    move-object v4, v7

    :goto_2
    if-ge v8, v10, :cond_d

    aget-object v7, v9, v8

    .line 3170
    new-instance v11, Leja;

    invoke-direct {v11, v7}, Leja;-><init>(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {v11}, Leja;->a()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    move-result-object v7

    if-nez v7, :cond_a

    move-object v7, v6

    .line 3172
    :cond_9
    :goto_3
    if-eqz v7, :cond_c

    .line 3176
    invoke-interface {v7}, Leiz;->a()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    move-result-object v4

    .line 3177
    if-eqz v4, :cond_c

    sget-object v11, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    if-eq v4, v11, :cond_c

    .line 3181
    invoke-virtual {v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->isMatched()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v7}, Leiz;->b()Z

    move-result v11

    if-nez v11, :cond_b

    move-object v4, v5

    .line 3182
    goto/16 :goto_0

    .line 4022
    :cond_a
    invoke-virtual {v11}, Leja;->a()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    move-result-object v7

    .line 4024
    sget-object v12, Lejc$1;->a:[I

    invoke-virtual {v7}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->ordinal()I

    move-result v7

    aget v7, v12, v7

    packed-switch v7, :pswitch_data_0

    move-object v7, v6

    .line 4044
    :goto_4
    if-eqz v7, :cond_9

    .line 4045
    invoke-interface {v7, v11}, Leiz;->a(Leja;)V

    goto :goto_3

    .line 4026
    :pswitch_0
    new-instance v7, Leje;

    invoke-direct {v7}, Leje;-><init>()V

    goto :goto_4

    .line 4029
    :pswitch_1
    new-instance v7, Lejf;

    invoke-direct {v7}, Lejf;-><init>()V

    goto :goto_4

    .line 4032
    :pswitch_2
    new-instance v7, Lejb;

    invoke-direct {v7}, Lejb;-><init>()V

    goto :goto_4

    .line 4035
    :pswitch_3
    new-instance v7, Lejg;

    invoke-direct {v7}, Lejg;-><init>()V

    goto :goto_4

    .line 4038
    :pswitch_4
    new-instance v7, Lejd;

    invoke-direct {v7}, Lejd;-><init>()V

    goto :goto_4

    .line 3185
    :cond_b
    invoke-virtual {v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->isMatched()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-interface {v7}, Leiz;->b()Z

    move-result v7

    if-nez v7, :cond_e

    .line 3169
    :cond_c
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2

    .line 3190
    :cond_d
    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->isMatched(Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v4, v5

    goto/16 :goto_0

    :cond_e
    move-object v4, v6

    .line 92
    goto/16 :goto_0

    .line 4024
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
