.class public Lcom/taobao/accs/base/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseService"


# instance fields
.field mBaseService:Ljij;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const-string/jumbo v0, "BaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBind:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    invoke-interface {v0, p1}, Ljij;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    :try_start_0
    invoke-static {}, Ljja;->a()Ljja;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/accs/base/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljja;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.taobao.accs.internal.ServiceImpl"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljij;

    iput-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    if-nez v1, :cond_0

    .line 31
    :try_start_1
    const-string/jumbo v1, "com.taobao.accs.internal.ServiceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljij;

    iput-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 38
    :cond_0
    :goto_0
    const-string/jumbo v1, "BaseService"

    const-string/jumbo v2, "onCreate"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    invoke-interface {v1}, Ljij;->onCreate()V

    .line 44
    :goto_1
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    iget-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    if-nez v1, :cond_0

    .line 31
    :try_start_3
    const-string/jumbo v1, "com.taobao.accs.internal.ServiceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljij;

    iput-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 35
    :catch_1
    move-exception v1

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    move-object v2, v1

    iget-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    if-nez v1, :cond_1

    .line 31
    :try_start_4
    const-string/jumbo v1, "com.taobao.accs.internal.ServiceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Service;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljij;

    iput-object v1, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 35
    :cond_1
    :goto_2
    throw v2

    .line 42
    :cond_2
    const-string/jumbo v1, "BaseService"

    const-string/jumbo v2, "cann\'t start ServiceImpl!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    .line 35
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    invoke-interface {v0}, Ljij;->onDestroy()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, "BaseService"

    const-string/jumbo v1, "onStartCommand mBaseService null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v0, 0x2

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    invoke-interface {v0, p1, p2, p3}, Ljij;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Ljij;

    invoke-interface {v0, p1}, Ljij;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
