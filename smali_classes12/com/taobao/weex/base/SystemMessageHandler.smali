.class public Lcom/taobao/weex/base/SystemMessageHandler;
.super Landroid/os/Handler;
.source "SystemMessageHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SCHEDULED_WORK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemMessageHandler"


# instance fields
.field private mIsRunning:Z

.field private mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

.field private mMessagePumpDelegateNative:J


# direct methods
.method private constructor <init>(J)V
    .locals 7
    .param p1, "messagePumpDelegateNative"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    .line 38
    iput-boolean v4, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mIsRunning:Z

    .line 45
    iput-wide p1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    .line 47
    :try_start_0
    const-string/jumbo v2, "android.os.Message"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "setAsynchronous"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    .end local v1    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-boolean v6, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mIsRunning:Z

    .line 58
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v2, "SystemMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to find android.os.Message class:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "SystemMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to load Message.setAsynchronous method:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SystemMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception while loading Message.setAsynchronous method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static create(J)Lcom/taobao/weex/base/SystemMessageHandler;
    .locals 2
    .param p0, "messagePumpDelegateNative"    # J
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/taobao/weex/base/SystemMessageHandler;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/base/SystemMessageHandler;-><init>(J)V

    return-object v0
.end method

.method private native nativeRunWork(J)V
.end method

.method private obtainAsyncMessage(I)Landroid/os/Message;
    .locals 6
    .param p1, "what"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 78
    iget-object v1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SystemMessageHandler"

    const-string/jumbo v2, "Illegal access to asynchronous message creation, disabling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object v5, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 87
    :catch_1
    move-exception v1

    const-string/jumbo v1, "SystemMessageHandler"

    const-string/jumbo v2, "Illegal argument for asynchronous message creation, disabling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object v5, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 90
    :catch_2
    move-exception v1

    const-string/jumbo v1, "SystemMessageHandler"

    const-string/jumbo v2, "Invocation exception during asynchronous message creation, disabling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object v5, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 93
    :catch_3
    move-exception v1

    const-string/jumbo v1, "SystemMessageHandler"

    const-string/jumbo v2, "Runtime exception during asynchronous message creation, disabling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object v5, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private scheduleWork()V
    .locals 1
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void
.end method

.method private stop()V
    .locals 1
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mIsRunning:Z

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 103
    iget-wide v0, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/base/SystemMessageHandler;->nativeRunWork(J)V

    .line 105
    :cond_0
    return-void
.end method
