.class public Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getMobileBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const-string/jumbo v0, "com.ut.device.UTDevice"

    const-string/jumbo v1, "getUtdid"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getUtdid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, ""

    .line 60
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
