.class final Lcom/alibaba/alimei/framework/AlimeiService$4;
.super Ljava/lang/Object;
.source "AlimeiService.java"

# interfaces
.implements Lxw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/AlimeiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/AlimeiService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/framework/AlimeiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 415
    monitor-enter p0

    :try_start_0
    const-string/jumbo v8, "com.alibaba.alimei.ACTION_EXECUTE_TASK_COMMAND"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 416
    const-string/jumbo v6, "key_taskcmmd"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 417
    .local v4, "parcelable":Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;

    if-eqz v6, :cond_1

    .line 418
    move-object v0, v4

    check-cast v0, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;

    move-object v2, v0

    .line 419
    .local v2, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    sget-object v6, Lcom/alibaba/alimei/framework/AlimeiService;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->genBizUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "cmmdKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v6, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->access$100(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "command key "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is executing, ignore the same handle command"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v1    # "cmmdKey":Ljava/lang/String;
    .end local v2    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    .end local v4    # "parcelable":Landroid/os/Parcelable;
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    .restart local v1    # "cmmdKey":Ljava/lang/String;
    .restart local v2    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    .restart local v4    # "parcelable":Landroid/os/Parcelable;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handle command with "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I

    .line 432
    iget-object v6, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/AlimeiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->buildCommandTask(Landroid/content/Context;)Lyq;

    move-result-object v5

    .line 433
    .local v5, "task":Lyq;
    iget-object v6, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v6}, Lcom/alibaba/alimei/framework/AlimeiService;->access$300(Lcom/alibaba/alimei/framework/AlimeiService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v6, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v6}, Lcom/alibaba/alimei/framework/AlimeiService;->access$200(Lcom/alibaba/alimei/framework/AlimeiService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-static {}, Lys;->a()Lys;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/framework/AlimeiService$a;

    iget-object v8, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {v7, v8, v1}, Lcom/alibaba/alimei/framework/AlimeiService$a;-><init>(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7}, Lys;->a(Lyq;Lyt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    .end local v1    # "cmmdKey":Ljava/lang/String;
    .end local v2    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    .end local v4    # "parcelable":Landroid/os/Parcelable;
    .end local v5    # "task":Lyq;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 437
    .restart local v4    # "parcelable":Landroid/os/Parcelable;
    :cond_1
    :try_start_2
    const-string/jumbo v6, "handle intent failed for parcelable is not abstractTaskCommand"

    invoke-static {v6}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 439
    .end local v4    # "parcelable":Landroid/os/Parcelable;
    :cond_2
    const-string/jumbo v8, "com.alibaba.alimei.ACTION_CANCEL_TASK_COMMAND"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 440
    const-string/jumbo v8, "key_taskcmmd_uuid"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "commandBizUUID":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 443
    const-string/jumbo v6, "commandBizUUID is null, can not cancel task"

    invoke-static {v6}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_3
    iget-object v8, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v8}, Lcom/alibaba/alimei/framework/AlimeiService;->access$200(Lcom/alibaba/alimei/framework/AlimeiService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyq;

    .line 447
    .restart local v5    # "task":Lyq;
    if-eqz v5, :cond_7

    .line 448
    iget-object v8, p0, Lcom/alibaba/alimei/framework/AlimeiService$4;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v8, v3}, Lcom/alibaba/alimei/framework/AlimeiService;->access$400(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lys;->a()Lys;

    move-result-object v8

    .line 1117
    if-eqz v5, :cond_6

    .line 1270
    iget v9, v5, Lyq;->r:I

    if-eq v9, v7, :cond_4

    iget v9, v5, Lyq;->r:I

    if-ne v9, v10, :cond_5

    :cond_4
    move v6, v7

    .line 1121
    :cond_5
    if-nez v6, :cond_6

    .line 1125
    iget-object v6, v8, Lys;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laie;

    .line 1126
    if-eqz v6, :cond_6

    .line 1129
    invoke-virtual {v5}, Lyq;->i()V

    .line 1130
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Laie;->a(Z)V

    .line 451
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Handle cancel task with bizUUID-->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", taskClassName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Command task is not exist with command bizUUID-->>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->c(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 459
    .end local v3    # "commandBizUUID":Ljava/lang/String;
    .end local v5    # "task":Lyq;
    :cond_8
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "can not handle action: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->a(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
