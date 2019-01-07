.class public final Ldrc;
.super Ljava/lang/Object;
.source "DefaultAvatarsLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcma;)Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;",
            ">;)",
            "Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    const-string/jumbo v10, "im_default_avatars_cache"

    invoke-static {v9, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "cacheString":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    const-string/jumbo v10, "im_default_avatars_cache_time_stamp"

    invoke-static {v9, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "cacheTimeString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 23
    .local v0, "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 24
    const-wide/16 v4, 0x0

    .line 26
    .local v4, "cacheTime":J
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 29
    :goto_0
    const-class v9, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    invoke-static {v2, v9}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    .line 30
    .restart local v0    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 33
    .local v6, "currentTime":J
    cmp-long v9, v6, v4

    if-ltz v9, :cond_0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->validTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v4

    cmp-long v9, v6, v10

    if-gez v9, :cond_0

    move-object v1, v0

    .line 74
    .end local v0    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    .end local v4    # "cacheTime":J
    .end local v6    # "currentTime":J
    .local v1, "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    :goto_1
    return-object v1

    .line 38
    .end local v1    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    .restart local v0    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    :cond_0
    move-object v8, v0

    .line 39
    .local v8, "finalCache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v9

    invoke-virtual {v9}, Ldyn;->c()Ldxx;

    move-result-object v9

    if-eqz v0, :cond_1

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->latestVersion:Ljava/lang/Long;

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->latestVersion:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_2
    new-instance v12, Ldrc$1;

    invoke-direct {v12, v8, p0}, Ldrc$1;-><init>(Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;Lcma;)V

    invoke-interface {v9, v10, v11, v12}, Ldxx;->c(JLcma;)V

    move-object v1, v0

    .line 74
    .end local v0    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    .restart local v1    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    goto :goto_1

    .line 39
    .end local v1    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    .restart local v0    # "cache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_2

    .end local v8    # "finalCache":Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    .restart local v4    # "cacheTime":J
    :catch_0
    move-exception v9

    goto :goto_0
.end method
