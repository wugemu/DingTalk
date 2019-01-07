.class public Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;
.super Lcom/alipay/mobile/security/bio/service/BioTaskService;
.source "BioTaskServiceImpl.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/alipay/mobile/security/bio/task/SubTask;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/security/bio/task/SubTask;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioTaskService;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/security/bio/task/ActionFrame",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    .local p1, "frame":Lcom/alipay/mobile/security/bio/task/ActionFrame;, "Lcom/alipay/mobile/security/bio/task/ActionFrame<TT;>;"
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/security/bio/task/SubTask;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;

    move-result-object v0

    .line 109
    .local v0, "mActionType":Lcom/alipay/mobile/security/bio/task/ActionType;
    sget-object v1, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl$1;->a:[I

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/task/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    .end local v0    # "mActionType":Lcom/alipay/mobile/security/bio/task/ActionType;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 119
    .restart local v0    # "mActionType":Lcom/alipay/mobile/security/bio/task/ActionType;
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    invoke-interface {v1}, Lcom/alipay/mobile/security/bio/task/SubTask;->done()I

    .line 124
    iget v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    .line 126
    iget v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    iget v2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/bio/task/SubTask;

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    invoke-interface {v1}, Lcom/alipay/mobile/security/bio/task/SubTask;->init()I

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addTask(Lcom/alipay/mobile/security/bio/task/SubTask;)V
    .locals 1
    .param p1, "subtask"    # Lcom/alipay/mobile/security/bio/task/SubTask;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public clearTask()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    .line 96
    return-void
.end method

.method public getCurrentTask()Lcom/alipay/mobile/security/bio/task/SubTask;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    return-object v0
.end method

.method public getLeftTaskCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSubTaskCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getTasks()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/alipay/mobile/security/bio/task/SubTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public initAndBegin()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;

    invoke-interface {v0}, Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;->onTasksBegin()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/task/SubTask;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    invoke-interface {v0}, Lcom/alipay/mobile/security/bio/task/SubTask;->init()I

    .line 86
    :cond_1
    iput v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    .line 88
    return-void
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;

    if-eqz v0, :cond_0

    .line 38
    iput-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 42
    iput-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->d:Lcom/alipay/mobile/security/bio/task/SubTask;

    .line 44
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->e:I

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 151
    :cond_0
    return-void
.end method

.method public setTaskListener(Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioTaskServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioTaskService$TaskListener;

    .line 74
    return-void
.end method
