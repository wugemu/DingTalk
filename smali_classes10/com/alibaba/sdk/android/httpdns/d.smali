.class Lcom/alibaba/sdk/android/httpdns/d;
.super Ljava/lang/Object;


# static fields
.field static PROTOCOL:Ljava/lang/String;

.field static a:I

.field static b:[Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "203.107.1.1"

    aput-object v1, v0, v3

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "203.107.1.97"

    aput-object v1, v0, v3

    const-string/jumbo v1, "203.107.1.100"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "httpdns-sc.aliyuncs.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->c:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:[Ljava/lang/String;

    const-string/jumbo v0, "80"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:Ljava/lang/String;

    const-string/jumbo v0, "http://"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->PROTOCOL:Ljava/lang/String;

    const/16 v0, 0x3a98

    sput v0, Lcom/alibaba/sdk/android/httpdns/d;->a:I

    return-void
.end method

.method static declared-synchronized a([Ljava/lang/String;)Z
    .locals 2

    const-class v1, Lcom/alibaba/sdk/android/httpdns/d;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    array-length v0, p0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/d;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alibaba/sdk/android/httpdns/d;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setHTTPSRequestEnabled(Z)V
    .locals 2

    const-class v1, Lcom/alibaba/sdk/android/httpdns/d;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "https://"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->PROTOCOL:Ljava/lang/String;

    const-string/jumbo v0, "443"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "http://"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->PROTOCOL:Ljava/lang/String;

    const-string/jumbo v0, "80"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setTimeoutInterval(I)V
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/d;

    monitor-enter v0

    if-lez p0, :cond_0

    :try_start_0
    sput p0, Lcom/alibaba/sdk/android/httpdns/d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
