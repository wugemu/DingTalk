.class public Lcom/ali/user/enterprise/base/thread/LoginThreadHelper;
.super Ljava/lang/Object;
.source "LoginThreadHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "login.LoginThreadHelper"

.field private static mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ali/user/enterprise/base/thread/LoginThreadHelper;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    :try_start_0
    const-string/jumbo v7, "com.taobao.tao.TaobaoApplication"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 54
    .local v6, "taobaoApplication":Ljava/lang/Class;
    const-string/jumbo v7, "getProcessName"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    .local v2, "getProcess":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v6, v2, v7}, Lcom/ali/user/enterprise/base/utils/ReflectionHelper;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 56
    .local v5, "process":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 76
    .end local v2    # "getProcess":Ljava/lang/reflect/Method;
    .end local v5    # "process":Ljava/lang/String;
    .end local v6    # "taobaoApplication":Ljava/lang/Class;
    :goto_0
    return-object v5

    :catch_0
    move-exception v7

    .line 63
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 64
    .local v4, "pid":I
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 65
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 67
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v4, :cond_1

    .line 68
    const-string/jumbo v7, "login.LoginThreadHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "login get process = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 73
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const-string/jumbo v5, "ProcessNameNotFound"

    goto :goto_0

    .line 74
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v4    # "pid":I
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string/jumbo v5, "GetCurProcessException"

    goto :goto_0
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/thread/LoginThreadHelper;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    sget-object v1, Lcom/ali/user/enterprise/base/thread/LoginThreadHelper;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "login.LoginThreadHelper"

    const-string/jumbo v2, "runOnUIThread failed"

    invoke-static {v1, v2, v0}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
