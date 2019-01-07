.class public final Lhrf;
.super Ljava/lang/Object;
.source "MultiTaskManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 50
    const-string/jumbo v0, "v435_switch_lollipop_task_key"

    invoke-static {v0, v2}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "v435_switch_runtime_task_key"

    invoke-static {v0, v2}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v3

    .line 93
    :cond_1
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 95
    .local v0, "mAm":Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    .line 97
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    .local v1, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_2

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 101
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 10
    .param p0, "targetActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 124
    if-nez p0, :cond_0

    .line 125
    const-string/jumbo v2, "MultiTaskManager"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "moveTaskToFront"

    aput-object v6, v3, v0

    const-string/jumbo v6, "targetActivity == null"

    aput-object v6, v3, v5

    .line 1082
    const-string/jumbo v5, "mini_task"

    invoke-static {v5, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v0

    .line 142
    :goto_0
    return v5

    .line 129
    :cond_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 131
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 132
    .local v8, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v8, :cond_3

    .line 133
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 135
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v4, :cond_1

    iget v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 1152
    if-nez v4, :cond_2

    .line 1153
    const-string/jumbo v2, "MultiTaskManager"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "moveTaskToFront2"

    aput-object v6, v3, v0

    const-string/jumbo v0, "runningTaskInfo == null"

    aput-object v0, v3, v5

    .line 2082
    const-string/jumbo v0, "mini_task"

    invoke-static {v0, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1157
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v9

    new-instance v0, Lhrf$1;

    move-object v2, p0

    move-object v3, p1

    move v6, v5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lhrf$1;-><init>(Landroid/app/ActivityManager;Landroid/app/Activity;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/os/Bundle;)V

    invoke-virtual {v9, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move v5, v0

    .line 142
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;ZZ)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "nonRoot"    # Z
    .param p2, "exclude"    # Z

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 80
    :goto_0
    return v1

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v1}, Lhdo;->b(I)Landroid/app/ActivityManager$AppTask;

    move-result-object v0

    .line 75
    .local v0, "appTask":Landroid/app/ActivityManager$AppTask;
    if-eqz v0, :cond_1

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 77
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x10000000

    const/4 v1, 0x0

    .line 297
    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 298
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 304
    :cond_0
    return v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    invoke-static {p0}, Lhrf;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const/4 v1, 0x1

    .line 325
    :goto_0
    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {p0}, Lhrf;->a(Landroid/content/Context;)Z

    move-result v0

    .line 283
    .local v0, "isContainNewTaskFlag":Z
    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
