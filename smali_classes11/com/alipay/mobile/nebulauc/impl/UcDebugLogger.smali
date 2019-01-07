.class public Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;
.super Ljava/lang/Object;
.source "UcDebugLogger.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetLogger;


# static fields
.field private static final LEVEL_DEBUG:I = 0x2

.field private static final LEVEL_ERROR:I = 0x0

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_NONE:I = 0xa

.field private static final LEVEL_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UcDebugLogger"


# instance fields
.field private mEnable:Z

.field private mLogLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mEnable:Z

    return-void
.end method

.method private static enableH5TraceLog()V
    .locals 5

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v3, "com.alipay.mobile.nebula.data.H5Trace"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "h5TraceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "sEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    .local v2, "sEnabledField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "sEnabledField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "UcDebugLogger"

    const-string/jumbo v4, "enableH5TraceLog error!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static init()V
    .locals 6

    .prologue
    .line 33
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;-><init>()V

    .line 34
    .local v2, "logger":Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->setLogLevel(I)V

    .line 35
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->setEnable(Z)V

    .line 36
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->enableH5TraceLog()V

    .line 40
    const-string/jumbo v4, "com.alipay.ipcperf.IpcPerfManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "hackConfigServiceLite"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 42
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "UcDebugLogger"

    const-string/jumbo v5, "init ucdebug logger error!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 93
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    if-gtz v0, :cond_0

    .line 81
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mEnable:Z

    return v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 99
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mEnable:Z

    .line 73
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    .line 65
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 87
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
