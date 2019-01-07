.class public Lcom/alibaba/sdk/android/httpdns/HttpDns;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/HttpDnsService;


# static fields
.field private static degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

.field private static hostManager:Lcom/alibaba/sdk/android/httpdns/b;

.field static instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

.field private static isEnabled:Z

.field private static pool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private isExpiredIPEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/h;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/h;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b;->a()Lcom/alibaba/sdk/android/httpdns/b;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    sput-object v2, Lcom/alibaba/sdk/android/httpdns/HttpDns;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    sput-object v2, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isExpiredIPEnabled:Z

    return-void
.end method

.method private getIpByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isEnabled:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "HttpDns service turned off"

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getIpsByHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private getIpsByHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "HttpDns service turned off"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/httpdns/DegradationFilter;->shouldDegradeHttpDNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getIpsByHostAsync(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/b;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/c;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/c;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isExpiredIPEnabled:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/httpdns/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refresh host async: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/l;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-direct {v2, p1, v3}, Lcom/alibaba/sdk/android/httpdns/l;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/c;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/c;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "refresh host sync: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/l;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-direct {v1, p1, v2}, Lcom/alibaba/sdk/android/httpdns/l;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/c;->a()[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getService(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 4

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    if-nez v0, :cond_1

    const-class v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_VERSION:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1.1.3.1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_HTTPDNS:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-static {p0, v2, v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/k;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/l;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/s;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/d;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/o;->a()Lcom/alibaba/sdk/android/httpdns/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/httpdns/o;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/HttpDns;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 4

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    if-nez v0, :cond_1

    const-class v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_VERSION:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1.1.3.1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->AMS_HTTPDNS:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    invoke-static {p0, v2, v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/k;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/l;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/s;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/d;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/o;->a()Lcom/alibaba/sdk/android/httpdns/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/httpdns/o;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/HttpDns;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static declared-synchronized switchDnsService(Z)V
    .locals 2

    const-class v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isEnabled:Z

    if-nez p0, :cond_0

    const-string/jumbo v0, "httpdns service disabled"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isEnabled:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "HttpDns service turned off"

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getIpsByHostAsync(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public getIpsByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isEnabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v0, "HttpDns service turned off"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    invoke-interface {v1, p1}, Lcom/alibaba/sdk/android/httpdns/DegradationFilter;->shouldDegradeHttpDNS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/httpdns/b;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/c;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/HttpDns;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    invoke-virtual {v2, p1}, Lcom/alibaba/sdk/android/httpdns/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/q;->a()Lcom/alibaba/sdk/android/httpdns/q;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/sdk/android/httpdns/q;->g(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-nez v1, :cond_7

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh host async: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/g;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/l;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-direct {v2, p1, v3}, Lcom/alibaba/sdk/android/httpdns/l;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/HttpDns;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isExpiredIPEnabled:Z

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/c;->a()[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/c;->a()[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setAuthCurrentTime(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/httpdns/a;->setAuthCurrentTime(J)V

    return-void
.end method

.method public setCachedIPEnabled(Z)V
    .locals 1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/a/b;->c(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b;->a()Lcom/alibaba/sdk/android/httpdns/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b;->a()V

    return-void
.end method

.method public setDegradationFilter(Lcom/alibaba/sdk/android/httpdns/DegradationFilter;)V
    .locals 0

    sput-object p1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->degradationFilter:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    return-void
.end method

.method public setExpiredIPEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isExpiredIPEnabled:Z

    return-void
.end method

.method public setHTTPSRequestEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/d;->setHTTPSRequestEnabled(Z)V

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/g;->setLogEnabled(Z)V

    return-void
.end method

.method public setPreResolveAfterNetworkChanged(Z)V
    .locals 0

    sput-boolean p1, Lcom/alibaba/sdk/android/httpdns/k;->b:Z

    return-void
.end method

.method public setPreResolveHosts(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->isEnabled:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "HttpDns service turned off"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/HttpDns;->hostManager:Lcom/alibaba/sdk/android/httpdns/b;

    invoke-virtual {v2, v0}, Lcom/alibaba/sdk/android/httpdns/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/HttpDns;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/l;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-direct {v3, v0, v4}, Lcom/alibaba/sdk/android/httpdns/l;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setTimeoutInterval(I)V
    .locals 0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/d;->setTimeoutInterval(I)V

    return-void
.end method
