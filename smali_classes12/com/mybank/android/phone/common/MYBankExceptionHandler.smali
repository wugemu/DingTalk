.class public Lcom/mybank/android/phone/common/MYBankExceptionHandler;
.super Ljava/lang/Object;
.source "MYBankExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static c:Z


# instance fields
.field public a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->b:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    :goto_0
    if-nez p1, :cond_1

    .line 132
    const/4 p1, 0x0

    .line 135
    .end local p1    # "ex":Ljava/lang/Throwable;
    :cond_0
    return-object p1

    .line 134
    .restart local p1    # "ex":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->c:Z

    return v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const-string/jumbo v2, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    invoke-direct {p0, p2}, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 98
    .local v0, "rpcEx":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 1126
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 1127
    .end local v0    # "rpcEx":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->b:Landroid/content/Context;

    .line 2030
    sget-object v3, Ljft;->a:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 2031
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Ljft;->a:Landroid/os/Handler;

    .line 2033
    :cond_0
    sget-object v3, Ljft;->a:Landroid/os/Handler;

    new-instance v4, Ljft$1;

    invoke-direct {v4, v2, v0}, Ljft$1;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/rpc/RpcException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-boolean v2, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->c:Z

    if-eqz v2, :cond_3

    .line 105
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/securityModeFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "securityFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v1    # "securityFile":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/securityModeFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v1    # "securityFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1    # "securityFile":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 111
    :catch_1
    move-exception v2

    goto :goto_1
.end method
