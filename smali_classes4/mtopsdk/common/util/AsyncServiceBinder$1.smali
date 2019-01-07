.class Lmtopsdk/common/util/AsyncServiceBinder$1;
.super Ljava/lang/Object;
.source "AsyncServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/common/util/AsyncServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/common/util/AsyncServiceBinder;


# direct methods
.method constructor <init>(Lmtopsdk/common/util/AsyncServiceBinder;)V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lmtopsdk/common/util/AsyncServiceBinder$1;, "Lmtopsdk/common/util/AsyncServiceBinder.1;"
    iput-object p1, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "s"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    .local p0, "this":Lmtopsdk/common/util/AsyncServiceBinder$1;, "Lmtopsdk/common/util/AsyncServiceBinder.1;"
    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v6}, Lmtopsdk/common/util/AsyncServiceBinder;->access$000(Lmtopsdk/common/util/AsyncServiceBinder;)[B

    move-result-object v7

    monitor-enter v7

    .line 41
    :try_start_0
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    const-string/jumbo v6, "mtopsdk.AsyncServiceBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[onServiceConnected] Service connected called. interfaceName ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v9}, Lmtopsdk/common/util/AsyncServiceBinder;->access$100(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    :try_start_1
    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v6}, Lmtopsdk/common/util/AsyncServiceBinder;->access$200(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 47
    .local v3, "innerClassses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 48
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "Stub"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 49
    const-string/jumbo v6, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 50
    .local v5, "method":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v6, v9

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IInterface;

    iput-object v6, v8, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i$":I
    .end local v3    # "innerClassses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "len$":I
    :catch_0
    move-exception v6

    :try_start_2
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    const-string/jumbo v6, "mtopsdk.AsyncServiceBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[onServiceConnected] Service bind failed. interfaceName="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v9}, Lmtopsdk/common/util/AsyncServiceBinder;->access$100(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    iget-object v6, v6, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    if-eqz v6, :cond_3

    .line 60
    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v6}, Lmtopsdk/common/util/AsyncServiceBinder;->afterAsyncBind()V

    .line 62
    :cond_3
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    .local p0, "this":Lmtopsdk/common/util/AsyncServiceBinder$1;, "Lmtopsdk/common/util/AsyncServiceBinder.1;"
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->access$000(Lmtopsdk/common/util/AsyncServiceBinder;)[B

    move-result-object v1

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    const/4 v2, 0x0

    iput-object v2, v0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    .line 33
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
