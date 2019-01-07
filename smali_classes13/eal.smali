.class public final Leal;
.super Ljava/lang/Object;
.source "PushTaskManager.java"


# static fields
.field private static e:Leal;

.field private static final f:Ljava/lang/Object;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

.field public b:Landroid/content/BroadcastReceiver;

.field public c:Landroid/content/Context;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leal;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Leal;->c:Landroid/content/Context;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Leal;->d:Ljava/util/Set;

    .line 74
    return-void
.end method

.method public static a()Leal;
    .locals 2

    .prologue
    .line 77
    sget-object v1, Leal;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Leal;->e:Leal;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Leal;

    invoke-direct {v0}, Leal;-><init>()V

    sput-object v0, Leal;->e:Leal;

    .line 81
    :cond_0
    sget-object v0, Leal;->e:Leal;

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static f()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 478
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static g()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 483
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_im_push_task_enable"

    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 485
    .local v0, "isFeatureEnable":Z
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_user"

    const-string/jumbo v5, "UserGuideSwitch"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "userGuide":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    const-string/jumbo v1, "1"

    .line 490
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static h()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 510
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_user"

    const-string/jumbo v4, "UserGuideNewTaskMore"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "notifyValue":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "uniguide_close"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3519
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "config_switch_ding_show_float_window"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3520
    invoke-static {}, Lcjq;->a()Lcjq;

    invoke-static {}, Lcjq;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;)V
    .locals 8
    .param p1, "obj"    # Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "PushTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showTaskList, obj: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-nez p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 380
    :cond_0
    sget-object v3, Leal;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 381
    :try_start_0
    iput-object p1, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    .line 382
    iget-object v2, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    .line 3402
    if-eqz v2, :cond_1

    .line 3405
    invoke-static {}, Leal;->f()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-static {v4, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3407
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3408
    const-string/jumbo v4, "key_pref_last_push_task_list_object"

    invoke-static {v4, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_1
    iget-object v2, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    if-eqz v2, :cond_4

    iget-object v2, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 384
    iget-object v2, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    .line 385
    .local v1, "task":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;
    if-eqz v1, :cond_2

    .line 386
    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, p0, Leal;->d:Ljava/util/Set;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 387
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->isClicked:Z

    goto :goto_1

    .line 394
    .end local v1    # "task":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 389
    .restart local v1    # "task":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->isClicked:Z

    goto :goto_1

    .line 394
    .end local v1    # "task":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "PushTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showTaskList, obj:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "action_push_task_list_change"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_push_task_list_object"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

.method public a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V
    .locals 5
    .param p1, "obj"    # Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "PushTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showTask, obj: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    iput-object p1, p0, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    .line 183
    iget-object v1, p0, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-virtual {p0, v1}, Leal;->b(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V

    .line 184
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "PushTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showTask, obj:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_push_task_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_push_task_dispatch_object"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final b()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {}, Leal;->g()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    iget-object v3, p0, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    if-nez v3, :cond_2

    iget-object v3, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    if-nez v3, :cond_2

    move v1, v2

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    const/4 v1, 0x0

    .line 105
    .local v1, "unread":I
    iget-object v3, p0, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    if-eqz v3, :cond_3

    .line 107
    :try_start_0
    iget-object v2, p0, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->count:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "PushTaskManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    if-eqz v3, :cond_0

    .line 1501
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_user"

    const-string/jumbo v5, "UserGuideNewTaskNotify"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1505
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1506
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "new_im_top_task_enable"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 111
    :cond_5
    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    iget v1, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->newTaskNum:I

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V
    .locals 2
    .param p1, "lastTask"    # Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-static {}, Leal;->f()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {v1, p1}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string/jumbo v1, "key_pref_last_push_task_dispatch_object"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    invoke-static {}, Leal;->g()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "PushTaskManager"

    const-string/jumbo v5, "onTaskDispatchDismissArrived"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const/4 v3, 0x0

    iput-object v3, p0, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    .line 2203
    const-string/jumbo v3, "key_pref_last_push_task_dispatch_object"

    invoke-static {v3}, Lcpk;->a(Ljava/lang/String;)V

    .line 224
    new-instance v1, Ldqt;

    invoke-direct {v1}, Ldqt;-><init>()V

    .line 225
    .local v1, "lastModel":Ldqt;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Ldqt;->h:Ljava/lang/Long;

    .line 226
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->fromIdlModel(Ldqt;)Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    move-result-object v2

    .line 227
    .local v2, "obj":Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "action_push_task_change"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "key_push_task_dispatch_object"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    invoke-static {}, Leal;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "PushTaskManager"

    const-string/jumbo v4, "onTaskListDismissArrived"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    const/4 v2, 0x0

    iput-object v2, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    .line 2428
    const-string/jumbo v2, "key_pref_last_push_task_list_object"

    invoke-static {v2}, Lcpk;->a(Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;-><init>()V

    .line 242
    .local v1, "obj":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->expiredTime:J

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "action_push_task_list_change"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_push_task_list_object"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final e()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 413
    invoke-static {}, Leal;->g()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 422
    :goto_0
    return v0

    .line 417
    :cond_0
    sget-object v3, Leal;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 3432
    :try_start_0
    const-string/jumbo v0, "key_pref_last_push_task_list_object"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3434
    const/4 v0, 0x0

    .line 418
    :goto_1
    iput-object v0, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    .line 3461
    iget-object v0, p0, Leal;->d:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 3462
    iget-object v0, p0, Leal;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3465
    :cond_1
    const-string/jumbo v0, "key_pref_task_list_clicked_set"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 3471
    :try_start_1
    invoke-static {}, Leal;->f()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Leal$2;

    invoke-direct {v5, p0}, Leal$2;-><init>(Leal;)V

    invoke-virtual {v5}, Leal$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Leal;->d:Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :cond_2
    :goto_2
    :try_start_2
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "PushTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reloadLastTask, mLastTaskList:"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    invoke-virtual {p0, v0}, Leal;->a(Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;)V

    .line 422
    iget-object v0, p0, Leal;->g:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_4
    monitor-exit v3

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3437
    :cond_3
    :try_start_3
    invoke-static {}, Leal;->f()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    invoke-static {v4, v0, v5}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 420
    goto :goto_3

    :cond_5
    move v0, v1

    .line 422
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2
.end method
