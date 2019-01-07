.class public final Lcom/taobao/securityjni/GlobalInit;
.super Ljava/lang/Object;
.source "GlobalInit.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static globalContext:Landroid/content/Context;

.field private static sAppKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->sAppKey:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized GetGlobalAppKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/taobao/securityjni/GlobalInit;->sAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static GlobalSecurityInitAsync(Landroid/content/ContextWrapper;)V
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsync(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static GlobalSecurityInitAsync(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "nativeLibPath"    # Ljava/lang/String;

    .prologue
    .line 147
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    .line 148
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static GlobalSecurityInitAsyncSDK(Landroid/content/ContextWrapper;)V
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 194
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    .line 195
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    .line 199
    return-void
.end method

.method public static GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V
    .locals 0
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 162
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method public static GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "nativeLibPath"    # Ljava/lang/String;

    .prologue
    .line 179
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    .line 180
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    .line 184
    return-void
.end method

.method public static GlobalSecurityInitSync(Landroid/content/ContextWrapper;)V
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitSync(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static GlobalSecurityInitSync(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "nativeLibPath"    # Ljava/lang/String;

    .prologue
    .line 56
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    .line 58
    invoke-interface {v0, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static GlobalSecurityInitSyncSDK(Landroid/content/ContextWrapper;)V
    .locals 3
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 109
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    .line 110
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;)V
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "nativeLibPath"    # Ljava/lang/String;

    .prologue
    .line 88
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static declared-synchronized SetGlobalAppKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->sAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getGlobalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/securityjni/GlobalInit;->globalContext:Landroid/content/Context;

    return-object v0
.end method

.method private static initSecBody(Landroid/content/ContextWrapper;)V
    .locals 5
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 205
    .line 206
    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 207
    .local v1, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v2

    .line 210
    .local v2, "securityBodyComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    if-eqz v2, :cond_1

    .line 211
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetGlobalAppKey()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "appKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 214
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v3

    .line 215
    .local v3, "staticDataStoreComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .end local v3    # "staticDataStoreComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    :cond_0
    invoke-interface {v2, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    .line 220
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "securityBodyComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    :cond_1
    return-void
.end method

.method public static setEnableOutPutExpInfo(Z)V
    .locals 0
    .param p0, "val"    # Z

    .prologue
    .line 202
    return-void
.end method
