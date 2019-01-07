.class public final Lhfc;
.super Ljava/lang/Object;
.source "AppInfoServiceImpl.java"

# interfaces
.implements Lhfb;


# static fields
.field private static c:Lhfc;


# instance fields
.field a:Lhfd;

.field b:Lhfi;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lhfe;->a()Lhfd;

    move-result-object v0

    iput-object v0, p0, Lhfc;->a:Lhfd;

    .line 43
    invoke-static {}, Lhfk;->b()Lhfi;

    move-result-object v0

    iput-object v0, p0, Lhfc;->b:Lhfi;

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Lhfc;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lhfc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhfc;->c:Lhfc;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lhfc;

    invoke-direct {v0}, Lhfc;-><init>()V

    sput-object v0, Lhfc;->c:Lhfc;

    .line 38
    :cond_0
    sget-object v0, Lhfc;->c:Lhfc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 109
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v4, "resultBundle":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "APP_INFO_CONFIG_SP_KEY"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "configStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 113
    .local v0, "config":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "ur"

    const-string/jumbo v6, "ur"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    const-string/jumbo v5, "pr"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 115
    .local v3, "prJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_1

    .line 116
    const-string/jumbo v5, "4"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 117
    .local v2, "pr":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 118
    const-string/jumbo v5, "common"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 120
    :cond_0
    const-string/jumbo v5, "pr"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "configStr":Ljava/lang/String;
    .end local v2    # "pr":Ljava/lang/Long;
    .end local v3    # "prJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    return-object v4

    .line 123
    :catch_0
    move-exception v5

    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "AppInfoServiceImpl"

    const-string/jumbo v7, "getConfigTimeMap error"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lhfb$a;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "listener"    # Lhfb$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lhfc;->b:Lhfi;

    new-instance v1, Lhfc$2;

    invoke-direct {v1, p0, p2}, Lhfc$2;-><init>(Lhfc;Lhfb$a;)V

    invoke-interface {v0, p1, v1}, Lhfi;->a(Ljava/lang/String;Lhfi$a;)V

    .line 171
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lhfc;->b:Lhfi;

    invoke-interface {v0, p1}, Lhfi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;Lhfb$a;)V
    .locals 18
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "reqType"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;
    .param p3, "listener"    # Lhfb$a;

    .prologue
    .line 82
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lhfc;->b()Landroid/os/Bundle;

    move-result-object v4

    .line 86
    .local v4, "configTimeBundle":Landroid/os/Bundle;
    const-string/jumbo v9, "ur"

    const-wide/16 v14, 0x12c

    invoke-static {v4, v9, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide v12

    .line 87
    .local v12, "urTime":J
    const-string/jumbo v9, "pr"

    const-wide/32 v14, 0x15180

    invoke-static {v4, v9, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide v6

    .line 88
    .local v6, "prTime":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lhfc;->a:Lhfd;

    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lhfd;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    move-result-object v5

    .line 89
    .local v5, "localAppInfo":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    move-object/from16 v0, p0

    iget-object v9, v0, Lhfc;->b:Lhfi;

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v5, v6, v7}, Lhfi;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;J)Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    move-result-object v8

    .line 90
    .local v8, "reqTypeFinal":Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;
    const-string/jumbo v9, "lightapp"

    const-string/jumbo v14, "AppInfoServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "reqTypeFinal is "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->ordinal()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v9, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCFORCE:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    invoke-virtual {v9, v8}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lhfc;->b(Ljava/lang/String;Lhfb$a;)V

    goto :goto_0

    .line 93
    :cond_2
    sget-object v9, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_ASYNC:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    invoke-virtual {v9, v8}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 94
    if-eqz p3, :cond_3

    .line 95
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lhfb$a;->onSuccess(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V

    .line 97
    :cond_3
    iget-object v9, v5, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->update_app_time:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 98
    iget-object v9, v5, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->update_app_time:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 99
    .local v10, "updateAppTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v12

    cmp-long v9, v14, v16

    if-gez v9, :cond_4

    .line 100
    const-string/jumbo v9, "lightapp"

    const-string/jumbo v14, "AppInfoServiceImpl"

    const-string/jumbo v15, "REQ_TYPE_ASYNC urTime has not expired"

    invoke-static {v9, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v10    # "updateAppTime":J
    :cond_4
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lhfc;->b(Ljava/lang/String;Lhfb$a;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lhfb$a;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "listener"    # Lhfb$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    invoke-static {}, Lhhp;->a()Lhhp;

    const-string/jumbo v2, "weex_page_package_loading"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhhp;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Lhfc;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;Lhfb$a;)V

    .line 78
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v2, p0, Lhfc;->a:Lhfd;

    invoke-interface {v2, p1}, Lhfd;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    move-result-object v1

    .line 54
    .local v1, "localAppInfo":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    iget-object v2, p0, Lhfc;->b:Lhfi;

    invoke-interface {v2, p1}, Lhfi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 58
    iget-object v2, p0, Lhfc;->b:Lhfi;

    invoke-interface {v2}, Lhfi;->a()Z

    .line 75
    :cond_1
    invoke-direct {p0, p1, p2}, Lhfc;->b(Ljava/lang/String;Lhfb$a;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 146
    new-instance v0, Lhfc$1;

    invoke-direct {v0, p0, p1}, Lhfc$1;-><init>(Lhfc;Ljava/lang/String;)V

    .line 1174
    const-string/jumbo v1, "AppInfoServiceImpl"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method
