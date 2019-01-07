.class public Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "IRpcServiceInjector"

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->a:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->b:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->b:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->b:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->b:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getRpcService()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->a:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;

    return-object v0
.end method

.method public inject(Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "inject()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->a:Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;

    return-void
.end method
