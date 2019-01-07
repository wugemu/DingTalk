.class public abstract Lmtopsdk/common/util/AsyncServiceBinder;
.super Ljava/lang/Object;
.source "AsyncServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "mtopsdk.AsyncServiceBinder"


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private interfaceCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field private interfaceName:Ljava/lang/String;

.field private final lock:[B

.field protected volatile service:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private serviceCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/IInterface;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lmtopsdk/common/util/AsyncServiceBinder;, "Lmtopsdk/common/util/AsyncServiceBinder<TT;>;"
    .local p1, "interfaceCls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/IInterface;>;"
    .local p2, "serviceCls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->lock:[B

    .line 27
    new-instance v0, Lmtopsdk/common/util/AsyncServiceBinder$1;

    invoke-direct {v0, p0}, Lmtopsdk/common/util/AsyncServiceBinder$1;-><init>(Lmtopsdk/common/util/AsyncServiceBinder;)V

    iput-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->conn:Landroid/content/ServiceConnection;

    .line 67
    iput-object p1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    .line 68
    iput-object p2, p0, Lmtopsdk/common/util/AsyncServiceBinder;->serviceCls:Ljava/lang/Class;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lmtopsdk/common/util/AsyncServiceBinder;)[B
    .locals 1
    .param p0, "x0"    # Lmtopsdk/common/util/AsyncServiceBinder;

    .prologue
    .line 20
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->lock:[B

    return-object v0
.end method

.method static synthetic access$100(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/common/util/AsyncServiceBinder;

    .prologue
    .line 20
    invoke-direct {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/common/util/AsyncServiceBinder;

    .prologue
    .line 20
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    return-object v0
.end method

.method private getInterfaceName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    .local p0, "this":Lmtopsdk/common/util/AsyncServiceBinder;, "Lmtopsdk/common/util/AsyncServiceBinder<TT;>;"
    :try_start_0
    iget-object v1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    iget-object v1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "mtopsdk.AsyncServiceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getInterfaceName]getInterfaceName error.interfaceName ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static varargs invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "param"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 130
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 131
    :cond_0
    const/4 v2, 0x0

    .line 150
    :cond_1
    :goto_0
    return-object v2

    .line 133
    :cond_2
    const/4 v2, 0x0

    .line 134
    .local v2, "ret":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz p2, :cond_3

    .line 137
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 141
    .local v1, "method":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_1

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    if-eqz p3, :cond_4

    .line 144
    invoke-virtual {v1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 139
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_3
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 146
    :cond_4
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public abstract afterAsyncBind()V
.end method

.method public asyncBind(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lmtopsdk/common/util/AsyncServiceBinder;, "Lmtopsdk/common/util/AsyncServiceBinder<TT;>;"
    const/4 v8, 0x1

    .line 72
    iget-object v5, p0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    if-nez v5, :cond_1

    .line 73
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    const-string/jumbo v5, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[asyncBind]try to bind service for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    const/4 v5, 0x3

    :try_start_0
    new-array v0, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Class;

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-class v6, Landroid/content/ServiceConnection;

    aput-object v6, v0, v5

    .line 78
    .local v0, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder;->conn:Landroid/content/ServiceConnection;

    aput-object v6, v3, v5

    .line 79
    .local v3, "para":[Ljava/lang/Object;
    const-string/jumbo v5, "com.taobao.android.service.Services"

    const-string/jumbo v6, "bind"

    invoke-static {v5, v6, v0, v3}, Lmtopsdk/common/util/AsyncServiceBinder;->invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    const-string/jumbo v5, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[asyncBind]bind service succeed by service framework for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .end local v0    # "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "para":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/lang/Exception;
    instance-of v5, v1, Ljava/lang/ClassNotFoundException;

    if-nez v5, :cond_2

    instance-of v5, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v5, :cond_4

    .line 86
    :cond_2
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    const-string/jumbo v5, "mtopsdk.AsyncServiceBinder"

    const-string/jumbo v6, "[asyncBind]service framework not exist. use intent to bind service."

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder;->serviceCls:Ljava/lang/Class;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v5, p0, Lmtopsdk/common/util/AsyncServiceBinder;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v5, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    .line 94
    .local v4, "ret":Z
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    const-string/jumbo v5, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[asyncBind]bindService ret="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for interfaceName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "ret":Z
    :cond_4
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    const-string/jumbo v5, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[asyncBind]Service bind failed. interfaceName ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    const-string/jumbo v5, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[asyncBind]Service bind failed. interfaceName ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getService()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lmtopsdk/common/util/AsyncServiceBinder;, "Lmtopsdk/common/util/AsyncServiceBinder<TT;>;"
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    return-object v0
.end method
