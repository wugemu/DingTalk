.class public final Lddg;
.super Ljava/lang/Object;
.source "ChannelDataHandlerImpl.java"

# interfaces
.implements Lddj;


# static fields
.field private static volatile d:Lddj;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lddi;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v0

    iput-object v0, p0, Lddg;->c:Lddi;

    .line 56
    return-void
.end method

.method public static declared-synchronized a()Lddj;
    .locals 3

    .prologue
    .line 42
    const-class v1, Lddg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lddg;->d:Lddj;

    if-nez v0, :cond_1

    .line 43
    const-class v2, Lddf;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    sget-object v0, Lddg;->d:Lddj;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lddg;

    invoke-direct {v0}, Lddg;-><init>()V

    sput-object v0, Lddg;->d:Lddj;

    .line 48
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_1
    :try_start_2
    sget-object v0, Lddg;->d:Lddj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 42
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "orgJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    .local v2, "iterators":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 152
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    const-string/jumbo v5, "cs_action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    const-string/jumbo v5, "cs_action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "deleted"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    iget-object v5, p0, Lddg;->a:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 157
    iget-object v5, p0, Lddg;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lddg;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    iget-object v5, p0, Lddg;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 170
    .local v1, "appObject":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :goto_1
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->key:Ljava/lang/String;

    .line 171
    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->fromJSON(Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;Lorg/json/JSONObject;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 172
    iget-object v5, p0, Lddg;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    .end local v1    # "appObject":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;-><init>()V

    .restart local v1    # "appObject":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    goto :goto_1

    .line 175
    .end local v1    # "appObject":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 10
    .param p1, "rawData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Lorg/json/JSONObject;
    .local v1, "data":Lorg/json/JSONObject;
    move-object v0, v1

    .line 76
    .end local v1    # "data":Lorg/json/JSONObject;
    .restart local v0    # "data":Lorg/json/JSONObject;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_1
    const-string/jumbo v5, "channel"

    const-string/jumbo v6, "channel_data"

    invoke-static {v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v4

    .line 81
    iget-object v5, p0, Lddg;->a:Ljava/util/HashMap;

    const-string/jumbo v6, "9223372036854775807"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v5, "ch_org"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    const-string/jumbo v5, "ch_org"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 84
    .local v3, "orgData":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-direct {p0, v3}, Lddg;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v3    # "orgData":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 96
    invoke-interface {v4}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 100
    .end local v4    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_1
    :goto_2
    iput-boolean v9, p0, Lddg;->b:Z

    .line 101
    return-void

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    const-string/jumbo v5, "channel"

    const-string/jumbo v6, "channel_setting_handler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "data to json exception, data:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_2
    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "channel data has ch_org"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v2

    .line 92
    .restart local v2    # "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v4, :cond_1

    .line 96
    invoke-interface {v4}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_2

    .line 95
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 96
    invoke-interface {v4}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_3
    throw v5
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lddg;->c:Lddi;

    invoke-interface {v1}, Lddi;->b()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "serviceWindowOrgModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lddg;->b:Z

    .line 1132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1133
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 1135
    if-eqz v1, :cond_0

    .line 1136
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1137
    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->key:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_2
    iput-object v2, p0, Lddg;->a:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method public final c()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 105
    const-string/jumbo v4, "channel"

    const-string/jumbo v5, "ChannelDataHandlerImpl"

    invoke-static {v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v2

    .line 107
    .local v2, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    iget-boolean v4, p0, Lddg;->b:Z

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lddg;->a:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lddg;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    iget-object v4, p0, Lddg;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "compile saveDataToLocal="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lddg;->c:Lddi;

    invoke-interface {v4, v1}, Lddi;->a(Ljava/util/List;)V

    .line 113
    const/4 v4, 0x0

    iput-object v4, p0, Lddg;->a:Ljava/util/HashMap;

    .line 115
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;>;"
    :cond_0
    iget-object v4, p0, Lddg;->c:Lddi;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lddi;->a(Z)V

    .line 116
    iget-object v4, p0, Lddg;->c:Lddi;

    invoke-interface {v4}, Lddi;->e()Ljava/util/List;

    .line 117
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "compile sendBroadcast ACTION_CHANNEL_SYNC"

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.channel.sync"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 121
    :cond_1
    iget-boolean v3, p0, Lddg;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :goto_0
    return v3

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    throw v3
.end method
