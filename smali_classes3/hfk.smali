.class public final Lhfk;
.super Ljava/lang/Object;
.source "AppInfoInstallServiceImpl.java"

# interfaces
.implements Lhfi;


# static fields
.field private static a:Lhfi;


# instance fields
.field private b:Lhfd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lhfk;

    invoke-direct {v0}, Lhfk;-><init>()V

    sput-object v0, Lhfk;->a:Lhfi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lhfe;->a()Lhfd;

    move-result-object v0

    iput-object v0, p0, Lhfk;->b:Lhfd;

    .line 53
    return-void
.end method

.method static synthetic a(Lhfk;)Lhfd;
    .locals 1
    .param p0, "x0"    # Lhfk;

    .prologue
    .line 33
    iget-object v0, p0, Lhfk;->b:Lhfd;

    return-object v0
.end method

.method static synthetic a(Lhfk;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;Lhfl;)V
    .locals 3
    .param p0, "x0"    # Lhfk;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    .param p2, "x2"    # Lhfl;

    .prologue
    .line 33
    .line 3360
    invoke-static {}, Lhfm;->a()Lhfm;

    move-result-object v0

    .line 4039
    if-eqz p1, :cond_0

    .line 4043
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lhfm;->a(Ljava/lang/String;Ljava/lang/String;Lhfl;)V

    .line 33
    :cond_0
    return-void
.end method

.method static synthetic a(Lhfk;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "x0"    # Lhfk;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    .line 4365
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lhfk;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)Z
    .locals 1
    .param p0, "x0"    # Lhfk;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    .prologue
    .line 33
    .line 3355
    iget-object v0, p0, Lhfk;->b:Lhfd;

    invoke-interface {v0, p1}, Lhfd;->a(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)Z

    move-result v0

    .line 33
    return v0
.end method

.method public static b()Lhfi;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lhfk;->a:Lhfi;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;J)Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "localAppInfo"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    .param p3, "prTime"    # J

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCFORCE:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    .line 86
    :goto_0
    return-object v1

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lhfk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "filePath":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_1
    sget-object v1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCFORCE:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->update_app_time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->update_app_time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 82
    .local v2, "updateAppTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p3

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 83
    sget-object v1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_SYNCFORCE:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    goto :goto_0

    .line 86
    .end local v2    # "updateAppTime":J
    :cond_3
    sget-object v1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;->REQ_TYPE_ASYNC:Lcom/alibaba/lightapp/runtime/app/api/AppInfoConst$PackageReqType;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 226
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "delete"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lhfm;->a()Lhfm;

    move-result-object v0

    .line 2151
    invoke-virtual {v0, p1}, Lhfm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2153
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 228
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lhfi$a;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "listener"    # Lhfi$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 91
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "update"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v2, Lhfk$1;

    invoke-direct {v2, p0, p2, p1}, Lhfk$1;-><init>(Lhfk;Lhfi$a;Ljava/lang/String;)V

    .line 1255
    const-class v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 1333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    new-instance v4, Lhob;

    invoke-direct {v4}, Lhob;-><init>()V

    .line 1335
    iput-object p1, v4, Lhob;->a:Ljava/lang/String;

    .line 1337
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v1

    .line 1338
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1339
    if-eqz v1, :cond_1

    .line 1340
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1341
    if-eqz v1, :cond_0

    .line 1342
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1346
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1347
    const-string/jumbo v6, "orgIdList"

    invoke-virtual {v1, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lhob;->c:Ljava/lang/String;

    .line 1349
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    new-instance v1, Lhfk$2;

    invoke-direct {v1, p0, v2}, Lhfk$2;-><init>(Lhfk;Lhfl;)V

    invoke-interface {v0, v3, v1}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->getMiniAppMetaData(Ljava/util/List;Liyv;)V

    .line 217
    return-void
.end method

.method public final a()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 60
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "needSyncUpdate"

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return v4
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 241
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getInstallPath"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lhfm;->a()Lhfm;

    move-result-object v0

    .line 3138
    invoke-virtual {v0, p1}, Lhfm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3140
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3142
    :goto_0
    return-object v0

    .line 3146
    :cond_0
    const/4 v0, 0x0

    .line 242
    goto :goto_0
.end method
