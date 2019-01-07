.class public Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;
.super Lgvi;
.source "AlarmManager.java"


# static fields
.field private static final AGENT_ID_KEY:Ljava/lang/String; = "agentId"

.field private static final APP_ID_KEY:Ljava/lang/String; = "dingtalkAppId"

.field private static final APP_NAME_KEY:Ljava/lang/String; = "appName"

.field private static final CORP_ID_KEY:Ljava/lang/String; = "corpId"

.field private static sInstance:Lgvi;


# instance fields
.field private mCurrentUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lgvi;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method private addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 596
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "recentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 597
    const/4 p1, 0x0

    .line 642
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 599
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 603
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->mCurrentUrl:Ljava/lang/String;

    .line 605
    const-string/jumbo v8, "net"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 608
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 609
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 610
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "host":Ljava/lang/String;
    const-string/jumbo v8, "host"

    invoke-interface {p1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v8

    invoke-virtual {v8, p2}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v6

    .line 616
    .local v6, "tempMicroAppInfo":Lhfo$b;
    iget-object v1, v6, Lhfo$b;->a:Ljava/lang/String;

    .line 617
    .local v1, "appId":Ljava/lang/String;
    iget-object v0, v6, Lhfo$b;->b:Ljava/lang/String;

    .line 618
    .local v0, "agentId":Ljava/lang/String;
    iget-object v2, v6, Lhfo$b;->d:Ljava/lang/String;

    .line 619
    .local v2, "appName":Ljava/lang/String;
    iget-object v3, v6, Lhfo$b;->c:Ljava/lang/String;

    .line 621
    .local v3, "corpId":Ljava/lang/String;
    const-string/jumbo v8, "0"

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 622
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    :cond_3
    const-string/jumbo v8, "agentId"

    invoke-interface {p1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string/jumbo v8, "corpId"

    invoke-interface {p1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v8, "dingtalkAppId"

    invoke-interface {p1, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v8, "dingtalkAppName"

    invoke-interface {p1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 631
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->urlEndsWithDingtalk(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 632
    :cond_4
    const-string/jumbo v8, "url"

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v8, "absolutePath"

    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    if-eqz p3, :cond_0

    .line 635
    const-string/jumbo v8, "recentUrls"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 638
    :cond_5
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->urlDesensitization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, "desensitizaUrl":Ljava/lang/String;
    const-string/jumbo v8, "url"

    invoke-interface {p1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string/jumbo v8, "absolutePath"

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static getInstance()Lgvi;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->sInstance:Lgvi;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->sInstance:Lgvi;

    .line 52
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->sInstance:Lgvi;

    return-object v0
.end method

.method private log(IILjava/lang/String;)V
    .locals 4
    .param p1, "warningCode"    # I
    .param p2, "warningLevel"    # I
    .param p3, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 558
    new-instance v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;-><init>()V

    .line 559
    .local v1, "logObject":Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;
    iput p1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->code:I

    .line 560
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->uid:Ljava/lang/String;

    .line 561
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->appVer:Ljava/lang/String;

    .line 562
    const-string/jumbo v2, "dd app client"

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->app:Ljava/lang/String;

    .line 563
    const-string/jumbo v2, "Android"

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->os:Ljava/lang/String;

    .line 564
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->osVer:Ljava/lang/String;

    .line 565
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->model:Ljava/lang/String;

    .line 566
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->manufacturer:Ljava/lang/String;

    .line 567
    iput p2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->level:I

    .line 568
    iput-object p3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->message:Ljava/lang/String;

    .line 570
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$7;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$7;-><init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;)V

    .line 584
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcmd;->a()Lcmc;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcmc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;Lcma;)V

    .line 585
    return-void
.end method


# virtual methods
.method public authFailWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 293
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 295
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 296
    return-void
.end method

.method public authFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->authFailWarn(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v0, "WebException"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "authFailWarn"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "errorCode="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "errorMsg="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public configNoAuthWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 309
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 311
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 312
    return-void
.end method

.method public downloadAlipayPackageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "miniAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 511
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "downloadAlipayPackageError"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v1, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v1, "errorMsg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 518
    const-string/jumbo v1, "downloadAlipayPackageError"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "miniAppId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method public downloadWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 459
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 460
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "s"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "downloadWXMiniPackageError"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v1, "errorMsg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v1, "appId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 467
    const-string/jumbo v1, "downloadWXMiniPackageError"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "appId="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceData(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method public fetchAlipayPackageConfigError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 500
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "u"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "fetchAlipayPackageConfigError"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v1, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 505
    const-string/jumbo v1, "fetchAlipayPackageConfigError"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public hpmUpload(Ljava/lang/String;)V
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 435
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v1, "info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 439
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "hpmUpload"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "info="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    return-void
.end method

.method public jsConfigFailWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 268
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 270
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 271
    return-void
.end method

.method public jsConfigFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->jsConfigFailWarn(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "WebException"

    const-string/jumbo v1, "jsConfigFailWarn"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    return-void
.end method

.method public jsErrorWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 414
    const-string/jumbo v0, "WebException"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->mCurrentUrl:Ljava/lang/String;

    const-string/jumbo v2, "jsError"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "errorMsg="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "sourceId="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "lineNumber"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 417
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 414
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    return-void
.end method

.method public jsReportWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "report"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 285
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "g"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 287
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 288
    return-void
.end method

.method public longRenderWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 345
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 347
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$5;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$5;-><init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lclm;->a(Landroid/content/Context;Lclm$a;)V

    .line 361
    return-void
.end method

.method public longRenderWarn(Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 366
    const-wide/32 v2, 0x493e0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 371
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v1, "time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 374
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$6;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$6;-><init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lclm;->a(Landroid/content/Context;Lclm$a;)V

    .line 390
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, "LongRenderDetector"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public microAppUsabilityWarn(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 396
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 398
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 400
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, "microAppUsabilityWarn"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public miniAppBlankError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 485
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 486
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "miniAppBlankError"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v1, "errorCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string/jumbo v1, "errorType"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 493
    const-string/jumbo v1, "miniAppBlankError"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorType="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "miniAppId="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public miniAppHttpRequestApiError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "miniAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 524
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "w"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "miniAppHttpRequestApiError"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string/jumbo v1, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v1, "errorMsg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 531
    const-string/jumbo v1, "miniAppHttpRequestApiError"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "miniAppId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method public openWebViewBlankWarn(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isBlank"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "about:blank"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 141
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 144
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLog(Ljava/util/Map;)V

    .line 145
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->addDetectorParams(Ljava/util/Map;)V

    .line 146
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lclm;->a(Landroid/content/Context;Lclm$a;)V

    .line 161
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, "blankpage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public openWebViewFailWarn(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v1, "errorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v1, "description"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 207
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 209
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, "openWebViewFailWarn"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "errorCode="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "errorMsg="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 209
    invoke-static {v1, p3, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public openWebViewNewBlankWarn(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isBlank"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    .local p3, "warningMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "about:blank"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 168
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 169
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLog(Ljava/util/Map;)V

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 173
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 174
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$2;-><init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lclm;->a(Landroid/content/Context;Lclm$a;)V

    .line 191
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public pageExceptionWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 317
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "k"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 319
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$4;-><init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lclm;->a(Landroid/content/Context;Lclm$a;)V

    .line 333
    return-void
.end method

.method public pageExceptionWarn(Ljava/lang/String;I)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->pageExceptionWarn(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "WebException"

    const-string/jumbo v1, "uc_core_4xx_5xx"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "httpCode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public queryWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 445
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "s"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "queryWXMiniPackageError"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v1, "errorMsg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v1, "appId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string/jumbo v1, "appName"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 453
    const-string/jumbo v1, "queryWXMiniPackageError"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "appId="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "appName="

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceData(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public ucFailWhenOpenMiniApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "errorType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 474
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "t_core"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "ucFailWhenOpenMiniApp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string/jumbo v1, "errorType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string/jumbo v1, "miniAppId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 480
    const-string/jumbo v1, "ucFailWhenOpenMiniApp"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorType="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "miniAppId="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public warn(IILjava/util/Map;)V
    .locals 5
    .param p1, "warningCode"    # I
    .param p2, "warningLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 541
    .local p3, "warningMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 542
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 543
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 544
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 547
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 548
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 549
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 550
    const-string/jumbo v4, "\t"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 552
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->log(IILjava/lang/String;)V

    .line 554
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    return-void
.end method

.method public warn(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    .local p1, "warningMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(IILjava/util/Map;)V

    .line 537
    return-void
.end method

.method public warnAppOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "occasion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    .local v4, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v4, p3, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 121
    const-string/jumbo v0, "corpId"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v0, "appId"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "occasion"

    invoke-interface {v4, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 126
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    sget-object v3, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "warnAppOpen"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "appId="

    aput-object v2, v5, v1

    const/4 v1, 0x2

    .line 127
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v2

    invoke-virtual {v2, p3}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p3

    move-object v2, p3

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public warnLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 78
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 79
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "m"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v1, "errorSource"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "errorCode"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "errorDesc"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 85
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, "warnLwpError"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "errorCode="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "errorMsg="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-static {v1, p2, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public warnSafeTunnelLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 58
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 59
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "m"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v1, "error_desc"

    const-string/jumbo v2, "jsapi_error_7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v1, "errorSource"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "SafeTunnelAppId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public warnSafeTunnelLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warnSafeTunnelLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "WebException"

    const-string/jumbo v1, "warnSafeTunnelLwpError"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public warnSslError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "resUrl"    # Ljava/lang/String;
    .param p2, "mainUrl"    # Ljava/lang/String;
    .param p3, "resType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 224
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "resUrl"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v1, "resType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 228
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 230
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, "warnSslError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "resUrl="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, p2, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public warnUnauthorized()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "error_desc"

    const-string/jumbo v2, "jsapi_error_7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public warnUnauthorized(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warnUnauthorized()V

    .line 102
    const-string/jumbo v0, "WebException"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "warnUnauthorized"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "errorCode="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "errorMsg="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public warnWebViewDead(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "recentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 242
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 243
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "BlankDetector"

    const-string/jumbo v1, "BlankDetector"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-direct {p0, v4, p1, p2}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 245
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;

    invoke-direct {v1, p0, v4}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;-><init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lclm;->a(Landroid/content/Context;Lclm$a;)V

    .line 260
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    const-string/jumbo v3, "BlankDetector"

    new-array v5, v6, [Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V

    .line 262
    const-string/jumbo v0, "WebException"

    const-string/jumbo v1, "warnWebViewDead"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public weexErrorWarn(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "exceptionTime"    # J
    .param p4, "viewCreatedTime"    # J

    .prologue
    .line 422
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 423
    .local v0, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "p"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v1, "exceptionTime"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v1, "viewCreatedTime"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->addExtentionParams(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 427
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 429
    const-string/jumbo v1, "WebException"

    const-string/jumbo v2, "weexErrorWarn"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    return-void
.end method
