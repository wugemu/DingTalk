.class public Lfxn;
.super Ljava/lang/Object;
.source "UserDeviceIdentifierHelper.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Lfxn;


# instance fields
.field public a:Landroid/content/Context;

.field private d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "UserDeviceIdentifierHelper"

    sput-object v0, Lfxn;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lfxn;->d:Ljava/lang/Boolean;

    .line 48
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lfxn;->a:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic a(Lfxn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfxn;

    .prologue
    .line 41
    iget-object v0, p0, Lfxn;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lfxn;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lfxn;->c:Lfxn;

    if-nez v0, :cond_0

    .line 56
    const-class v1, Lfxn;

    monitor-enter v1

    .line 57
    :try_start_0
    new-instance v0, Lfxn;

    invoke-direct {v0}, Lfxn;-><init>()V

    sput-object v0, Lfxn;->c:Lfxn;

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    sget-object v0, Lfxn;->c:Lfxn;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lfxn;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lfxn;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 41
    iput-object p1, p0, Lfxn;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lfxn;Landroid/content/Context;)V
    .locals 4
    .param p0, "x0"    # Lfxn;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 41
    .line 2079
    invoke-static {p1}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2080
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->getWifiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2081
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "02:00:00:00:00:00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2082
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v2

    new-instance v3, Lfxn$2;

    invoke-direct {v3, p0, v0, v1}, Lfxn$2;-><init>(Lfxn;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getClientMac(Lcma;)V

    :goto_0
    return-void

    .line 2099
    :cond_1
    invoke-direct {p0, v1, v0}, Lfxn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lfxn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lfxn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lfxn;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "umidToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "02:00:00:00:00:00"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "000000000000000000000000"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    :cond_1
    iget-object v2, p0, Lfxn;->d:Ljava/lang/Boolean;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v1, p0, Lfxn;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lfxn;->d:Ljava/lang/Boolean;

    .line 109
    :cond_2
    new-instance v0, Lfsa;

    invoke-direct {v0}, Lfsa;-><init>()V

    .line 110
    .local v0, "deviceObject":Lfsa;
    iput-object p1, v0, Lfsa;->a:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lfsa;->b:Ljava/lang/String;

    .line 112
    invoke-static {}, Lfbf;->a()Lfbf;

    move-result-object v3

    new-instance v4, Lfxn$3;

    invoke-direct {v4, p0}, Lfxn$3;-><init>(Lfxn;)V

    .line 1057
    const-class v1, Lcom/alibaba/android/user/idl/services/IotUserTerminalIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/IotUserTerminalIService;

    .line 2037
    new-instance v5, Lfqs;

    invoke-direct {v5}, Lfqs;-><init>()V

    .line 2038
    iget-object v6, v0, Lfsa;->a:Ljava/lang/String;

    iput-object v6, v5, Lfqs;->a:Ljava/lang/String;

    .line 2039
    iget-object v6, v0, Lfsa;->b:Ljava/lang/String;

    iput-object v6, v5, Lfqs;->b:Ljava/lang/String;

    .line 1058
    new-instance v6, Lfbf$1;

    invoke-direct {v6, v3, v4}, Lfbf$1;-><init>(Lfbf;Lcma;)V

    invoke-interface {v1, v5, v6}, Lcom/alibaba/android/user/idl/services/IotUserTerminalIService;->uploadDevInfo(Lfqs;Liyv;)V

    .line 131
    monitor-exit v2

    .line 136
    .end local v0    # "deviceObject":Lfsa;
    :goto_0
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 134
    :cond_3
    const-string/jumbo v1, "user"

    sget-object v2, Lfxn;->b:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "mac = "

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, ", umidToken = "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    sget-object v0, Lfxn;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfxn$1;

    invoke-direct {v1, p0, p1}, Lfxn$1;-><init>(Lfxn;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
