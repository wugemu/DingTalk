.class public abstract Lqm;
.super Lqi;
.source "AbstractImapUpdateMailTask.java"


# instance fields
.field protected d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

.field protected e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

.field protected f:I

.field protected g:I

.field h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Lqi;-><init>()V

    .line 68
    iput v2, p0, Lqm;->f:I

    .line 69
    iput v2, p0, Lqm;->g:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lqm;->i:Ljava/util/List;

    .line 71
    iput v2, p0, Lqm;->j:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lqm;->k:Ljava/util/ArrayList;

    .line 74
    iput-boolean v2, p0, Lqm;->h:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 38
    sget-object v4, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    sget-object v5, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lqi;-><init>(JLcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;Ljava/lang/String;)V

    .line 68
    iput v7, p0, Lqm;->f:I

    .line 69
    iput v7, p0, Lqm;->g:I

    .line 70
    iput-object v6, p0, Lqm;->i:Ljava/util/List;

    .line 71
    iput v7, p0, Lqm;->j:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lqm;->k:Ljava/util/ArrayList;

    .line 74
    iput-boolean v7, p0, Lqm;->h:Z

    .line 1050
    iput-wide p2, p0, Lyr;->x:J

    .line 40
    iput-object p1, p0, Lqm;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic a(Lqm;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lqm;

    .prologue
    .line 22
    iget-object v0, p0, Lqm;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lqm;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lqm;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lqm;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lqm;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lqm;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lqm;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lqm;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p0, "x0"    # Lqm;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lqm;->b(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    return-void
.end method

.method static synthetic b(Lqm;)I
    .locals 1
    .param p0, "x0"    # Lqm;

    .prologue
    .line 22
    iget v0, p0, Lqm;->j:I

    return v0
.end method

.method private b(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    iget-object v3, p0, Lqm;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 151
    invoke-virtual {p0}, Lqm;->g()V

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "totalSize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lqm;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", currentPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lqm;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyx;->b(Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_0

    iget v3, p0, Lqm;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lqm;->j:I

    if-gt v3, v4, :cond_0

    .line 155
    iget-object v3, p0, Lqm;->i:Ljava/util/List;

    iget v4, p0, Lqm;->g:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 156
    .local v2, "messageSync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    iget-object v3, p0, Lqm;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0, v2}, Lqm;->a(Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;)V

    .line 158
    iget v3, p0, Lqm;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lqm;->g:I

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "messageSync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_0
    if-nez v0, :cond_1

    .line 163
    const-string/jumbo v3, "exit continueSync"

    invoke-static {v3}, Lyx;->b(Ljava/lang/String;)I

    .line 168
    :goto_1
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lqm;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lqm;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lqm;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "execute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->b(Ljava/lang/String;)I

    .line 80
    iput v1, p0, Lqm;->g:I

    .line 81
    iput v1, p0, Lqm;->f:I

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lqm;->i:Ljava/util/List;

    .line 83
    iget-object v2, p0, Lqm;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 85
    invoke-virtual {p0}, Lqm;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return v1

    .line 89
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    iput-object v1, p0, Lqm;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 90
    invoke-virtual {p0}, Lqm;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lqm;->i:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lqm;->i:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lqm;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 93
    :cond_1
    const-string/jumbo v1, "no mWaitingSync message list"

    invoke-static {v1}, Lyx;->b(Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lqm;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lqm;->j:I

    .line 100
    new-instance v0, Lqm$1;

    invoke-direct {v0, p0}, Lqm$1;-><init>(Lqm;)V

    .line 142
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    invoke-direct {p0, v0}, Lqm;->b(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 146
    iget-boolean v1, p0, Lqm;->h:Z

    goto :goto_0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    return v0
.end method

.method protected abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract g()V
.end method
