.class public Lcom/taobao/android/runtime/Dex2OatService;
.super Landroid/app/IntentService;
.source "Dex2OatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;
    }
.end annotation


# static fields
.field private static final OUTPUT_PATH_NAME_EXTRA:Ljava/lang/String; = "outputPathName"

.field private static final SOURCE_PATH_NAME_EXTRA:Ljava/lang/String; = "sourcePathName"

.field private static final TAG:Ljava/lang/String; = "Dex2OatService"

.field private static mPostInitRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sBootCompleted:Z


# instance fields
.field private final mSuccess:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/android/runtime/Dex2OatService;->sBootCompleted:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/runtime/Dex2OatService;->mPostInitRunnables:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    const-string/jumbo v0, "Dex2OatService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/android/runtime/AndroidRuntime;->setVerificationEnabled(Z)V

    .line 35
    invoke-static {v1}, Lcom/taobao/android/dex/interpret/ARTUtils;->setIsDex2oatEnabled(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/runtime/Dex2OatService;->mSuccess:Ljava/lang/Boolean;

    .line 36
    return-void
.end method

.method public static declared-synchronized setBootCompleted(Z)V
    .locals 5
    .param p0, "bootCompleted"    # Z

    .prologue
    .line 106
    const-class v3, Lcom/taobao/android/runtime/Dex2OatService;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/taobao/android/runtime/Dex2OatService;->sBootCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 111
    :cond_1
    :try_start_1
    sput-boolean p0, Lcom/taobao/android/runtime/Dex2OatService;->sBootCompleted:Z

    if-eqz p0, :cond_0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "- Dex2OatService setBootCompleted: sBootCompleted="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/taobao/android/runtime/Dex2OatService;->sBootCompleted:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    sget-object v2, Lcom/taobao/android/runtime/Dex2OatService;->mPostInitRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 115
    .local v1, "postInitRunnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 106
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "postInitRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 117
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/taobao/android/runtime/Dex2OatService;->mPostInitRunnables:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static declared-synchronized start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePathName"    # Ljava/lang/String;
    .param p2, "outputPathName"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v1, Lcom/taobao/android/runtime/Dex2OatService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/android/runtime/Dex2OatService;->sBootCompleted:Z

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 94
    :cond_1
    :try_start_1
    sget-object v0, Lcom/taobao/android/runtime/Dex2OatService;->mPostInitRunnables:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/taobao/android/runtime/Dex2OatService;->mPostInitRunnables:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/android/runtime/Dex2OatService$Dex2OatTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    iget-object v3, p0, Lcom/taobao/android/runtime/Dex2OatService;->mSuccess:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/android/runtime/Dex2OatService;->mSuccess:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    if-eqz p1, :cond_0

    .line 48
    const-string/jumbo v3, "sourcePathName"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "sourcePathName":Ljava/lang/String;
    const-string/jumbo v3, "outputPathName"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "outputPathName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Dex2OatService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "- DexFile loadDex fail: sourcePathName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", outputPathName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
