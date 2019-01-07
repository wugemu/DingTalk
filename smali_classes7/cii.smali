.class public Lcii;
.super Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;
.source "SkiDDContext.java"


# static fields
.field public static final PERFORMACE_LOG:Ljava/lang/String; = "performance"

.field public static final PROCESS_ALL:Ljava/lang/String; = "ALL"

.field public static final PROCESS_MAIN:Ljava/lang/String; = "MAIN"

.field private static final TAG:Ljava/lang/String; = "SkiApplication"


# instance fields
.field private mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOncreateDone:Z

.field private mProcessName:Ljava/lang/String;

.field private onCreateMethodStatusListenerlistener:Lcih;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDContext;-><init>(Lcom/alibaba/android/dingtalkbase/multidexsupport/DDApplication;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcii;->mIsOncreateDone:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcii;)Lcih;
    .locals 1
    .param p0, "x0"    # Lcii;

    .prologue
    .line 36
    iget-object v0, p0, Lcii;->onCreateMethodStatusListenerlistener:Lcih;

    return-object v0
.end method

.method static synthetic access$002(Lcii;Lcih;)Lcih;
    .locals 0
    .param p0, "x0"    # Lcii;
    .param p1, "x1"    # Lcih;

    .prologue
    .line 36
    iput-object p1, p0, Lcii;->onCreateMethodStatusListenerlistener:Lcih;

    return-object p1
.end method

.method static synthetic access$102(Lcii;Z)Z
    .locals 0
    .param p0, "x0"    # Lcii;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcii;->mIsOncreateDone:Z

    return p1
.end method

.method private hookInstrumentation()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 219
    :try_start_0
    const-string/jumbo v5, "android.app.ActivityThread"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, "activityThreadC":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "currentActivityThread"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 221
    .local v2, "currentActivityThreadM":Ljava/lang/reflect/Method;
    const-string/jumbo v5, "mInstrumentation"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 222
    .local v4, "instrumentationF":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 223
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 224
    .local v1, "at":Ljava/lang/Object;
    new-instance v6, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation;

    invoke-direct {v6, v5}, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;-><init>(Landroid/app/Instrumentation;)V

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 236
    .end local v0    # "activityThreadC":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "at":Ljava/lang/Object;
    .end local v2    # "currentActivityThreadM":Ljava/lang/reflect/Method;
    .end local v4    # "instrumentationF":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 228
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 230
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v3

    .line 232
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private isCrashRelaunchActivity()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcii;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v7, "activity"

    invoke-virtual {v4, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 77
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 79
    :cond_0
    const-string/jumbo v4, "performance"

    const-string/jumbo v6, "isCrashRelaunchActivity taskInfo == null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 99
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return v4

    .line 82
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 83
    .local v1, "componentInfo":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 84
    const-string/jumbo v4, "performance"

    const-string/jumbo v6, "isCrashRelaunchActivity componentInfo == null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 88
    const-string/jumbo v4, "performance"

    const-string/jumbo v6, "isCrashRelaunchActivity componentInfo classname == null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "com.alibaba.android.rimet.biz.SplashActivity"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 92
    const-string/jumbo v4, "performance"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isCrashRelaunchActivity componentInfo.getClassName()"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 93
    goto :goto_0

    :cond_4
    move v4, v5

    .line 95
    goto :goto_0

    .line 96
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "componentInfo":Landroid/content/ComponentName;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 99
    goto :goto_0
.end method


# virtual methods
.method public attachOnCreate()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected final dispatchActivityCreatedCompat(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 269
    iget-object v3, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v3

    .line 270
    :try_start_0
    iget-object v2, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "callbacks":[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 273
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 274
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 277
    .restart local v1    # "callbacks":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final dispatchActivityDestroyedCompat(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 341
    iget-object v3, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v3

    .line 342
    :try_start_0
    iget-object v2, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 343
    .local v1, "callbacks":[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 345
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 346
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 349
    .restart local v1    # "callbacks":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final dispatchActivityPausedCompat(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 305
    iget-object v3, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v3

    .line 306
    :try_start_0
    iget-object v2, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 307
    .local v1, "callbacks":[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 309
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 310
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityPaused(Landroid/app/Activity;)V

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 313
    .restart local v1    # "callbacks":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final dispatchActivityResumedCompat(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    iget-object v3, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v3

    .line 294
    :try_start_0
    iget-object v2, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, "callbacks":[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 297
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 298
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityResumed(Landroid/app/Activity;)V

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 301
    .restart local v1    # "callbacks":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final dispatchActivitySaveInstanceStateCompat(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 329
    iget-object v3, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v3

    .line 330
    :try_start_0
    iget-object v2, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 331
    .local v1, "callbacks":[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 333
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 334
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 337
    .restart local v1    # "callbacks":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final dispatchActivityStartedCompat(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    iget-object v3, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-object v2, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 283
    .local v1, "callbacks":[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 285
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 286
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityStarted(Landroid/app/Activity;)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 289
    .restart local v1    # "callbacks":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final dispatchActivityStoppedCompat(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 317
    iget-object v3, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v3

    .line 318
    :try_start_0
    iget-object v2, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 319
    .local v1, "callbacks":[Ljava/lang/Object;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 321
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 322
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityStopped(Landroid/app/Activity;)V

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "callbacks":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 325
    .restart local v1    # "callbacks":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    .line 142
    .local v12, "pid":I
    const/4 v13, 0x0

    .line 144
    .local v13, "processName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v15, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 145
    .local v11, "mActivityManager":Landroid/app/ActivityManager;
    if-eqz v11, :cond_1

    .line 146
    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 147
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v12, :cond_0

    .line 148
    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v11    # "mActivityManager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 156
    const/4 v7, 0x0

    .line 157
    .local v7, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 158
    .local v9, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 160
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "/proc/"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/cmdline"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v6, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .local v8, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 165
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 166
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v13

    .line 173
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 176
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 179
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 186
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_3
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 187
    const-string/jumbo v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, "sp":[Ljava/lang/String;
    array-length v15, v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 189
    const/4 v15, 0x1

    aget-object v15, v14, v15

    .line 192
    .end local v14    # "sp":[Ljava/lang/String;
    :goto_2
    return-object v15

    .line 181
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v5

    .line 182
    .local v5, "e2":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 168
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "e2":Ljava/lang/Throwable;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v4

    .line 169
    .restart local v4    # "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 172
    if-eqz v2, :cond_4

    .line 173
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 175
    :cond_4
    if-eqz v9, :cond_5

    .line 176
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 178
    :cond_5
    if-eqz v7, :cond_3

    .line 179
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 181
    :catch_3
    move-exception v5

    .line 182
    .restart local v5    # "e2":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "e2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v15

    .line 172
    :goto_4
    if-eqz v2, :cond_6

    .line 173
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 175
    :cond_6
    if-eqz v9, :cond_7

    .line 176
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 178
    :cond_7
    if-eqz v7, :cond_8

    .line 179
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 183
    :cond_8
    :goto_5
    throw v15

    .line 181
    :catch_4
    move-exception v5

    .line 182
    .restart local v5    # "e2":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 192
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "e2":Ljava/lang/Throwable;
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_9
    const-string/jumbo v15, "MAIN"

    goto :goto_2

    .line 171
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v15

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 168
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v4

    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcii;->mProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcii;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcii;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcii;->mProcessName:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v0, p0, Lcii;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugBuild()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isMainProcess()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    const-string/jumbo v0, "MAIN"

    invoke-virtual {p0}, Lcii;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOncreateDone()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcii;->mIsOncreateDone:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 105
    return-void
.end method

.method public onCreate()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    .local v0, "t":J
    invoke-virtual {p0}, Lcii;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcml;->a(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcii;->attachOnCreate()V

    .line 113
    invoke-virtual {p0}, Lcii;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcii;->isCrashRelaunchActivity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcii$1;

    invoke-direct {v3, p0}, Lcii$1;-><init>(Lcii;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :goto_0
    const-string/jumbo v2, "performance"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "application oncreate take time isMainProcess "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcii;->isMainProcess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcii;->runMethodOnCreate()V

    .line 127
    iget-object v2, p0, Lcii;->onCreateMethodStatusListenerlistener:Lcih;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcii;->onCreateMethodStatusListenerlistener:Lcih;

    invoke-interface {v2}, Lcih;->applicationRunMethodDone()V

    .line 129
    const/4 v2, 0x0

    iput-object v2, p0, Lcii;->onCreateMethodStatusListenerlistener:Lcih;

    .line 131
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcii;->mIsOncreateDone:Z

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 215
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V
    .locals 2
    .param p1, "callback"    # Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v1

    .line 251
    :goto_0
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_0
    iget-object v0, p1, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;-><init>(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    iput-object v0, p1, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcii;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public runMethodOnCreate()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public setOnCreateMethodStatusListenerlistener(Lcih;)V
    .locals 0
    .param p1, "listener"    # Lcih;

    .prologue
    .line 57
    iput-object p1, p0, Lcii;->onCreateMethodStatusListenerlistener:Lcih;

    .line 58
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V
    .locals 2
    .param p1, "callback"    # Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 257
    iget-object v1, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcii;->mActivityLifecycleCallbacksCompat:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 261
    :cond_1
    iget-object v0, p1, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcii;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method
