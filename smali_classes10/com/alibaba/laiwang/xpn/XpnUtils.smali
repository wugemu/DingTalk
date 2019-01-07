.class public Lcom/alibaba/laiwang/xpn/XpnUtils;
.super Ljava/lang/Object;
.source "XpnUtils.java"


# static fields
.field private static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug:Z

    return v0
.end method

.method public static declared-synchronized isSupportFCM(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v2, Lcom/alibaba/laiwang/xpn/XpnUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 46
    .local v0, "resultCode":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    if-nez v0, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 52
    .end local v0    # "resultCode":I
    :cond_0
    :goto_0
    monitor-exit v2

    return v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 52
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized isSupportHuaweiPush(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    const-class v1, Lcom/alibaba/laiwang/xpn/XpnUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isHuaweiRom()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 39
    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isSupportMIUIPush(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    const-class v1, Lcom/alibaba/laiwang/xpn/XpnUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isXiaomiRom()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljxf;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 27
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized setDebug(Z)V
    .locals 2
    .param p0, "debug"    # Z

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/laiwang/xpn/XpnUtils;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
