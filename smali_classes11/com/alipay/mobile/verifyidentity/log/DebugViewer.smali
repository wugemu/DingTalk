.class public Lcom/alipay/mobile/verifyidentity/log/DebugViewer;
.super Ljava/lang/Object;
.source "DebugViewer.java"


# static fields
.field private static a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
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

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;
    .locals 5

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    if-nez v0, :cond_2

    .line 18
    const-class v1, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    if-nez v0, :cond_1

    .line 20
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.helper.DebugViewer"

    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer$1;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer$1;-><init>()V

    .line 24
    monitor-exit v1

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    check-cast v0, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    sput-object v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    .line 28
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->a:Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
