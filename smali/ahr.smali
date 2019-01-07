.class public abstract Lahr;
.super Lyr;
.source "AbstractUpdateMailTask.java"


# instance fields
.field protected a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

.field protected b:I

.field protected c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lyr;-><init>()V

    .line 67
    iput v1, p0, Lahr;->b:I

    .line 68
    iput v1, p0, Lahr;->c:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lahr;->e:Ljava/util/List;

    .line 70
    iput v1, p0, Lahr;->f:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lahr;->g:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 38
    sget-object v4, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    sget-object v5, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lyr;-><init>(JLcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;Ljava/lang/String;)V

    .line 67
    iput v0, p0, Lahr;->b:I

    .line 68
    iput v0, p0, Lahr;->c:I

    .line 69
    iput-object v6, p0, Lahr;->e:Ljava/util/List;

    .line 70
    iput v0, p0, Lahr;->f:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lahr;->g:Ljava/util/ArrayList;

    .line 1050
    iput-wide p2, p0, Lyr;->x:J

    .line 40
    iput-object p1, p0, Lahr;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic a(Lahr;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lahr;

    .prologue
    .line 24
    iget-object v0, p0, Lahr;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lahr;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p0, "x0"    # Lahr;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lahr;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
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

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 137
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    iget-object v3, p0, Lahr;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 138
    invoke-virtual {p0}, Lahr;->f()V

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "totalSize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lahr;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", currentPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lahr;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzb;->i(Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    iget v3, p0, Lahr;->c:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lahr;->f:I

    if-gt v3, v4, :cond_0

    .line 142
    iget-object v3, p0, Lahr;->e:Ljava/util/List;

    iget v4, p0, Lahr;->c:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 143
    .local v2, "messageSync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    iget-object v3, p0, Lahr;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0, v2}, Lahr;->a(Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;)V

    .line 145
    iget v3, p0, Lahr;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lahr;->c:I

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "messageSync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_0
    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v3, "exit continueSync"

    invoke-static {v3}, Lzb;->i(Ljava/lang/String;)I

    .line 154
    :goto_1
    return-void

    .line 153
    :cond_1
    iget-object v3, p0, Lahr;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lahr;->a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_1
.end method

.method static synthetic b(Lahr;)I
    .locals 1
    .param p0, "x0"    # Lahr;

    .prologue
    .line 24
    iget v0, p0, Lahr;->f:I

    return v0
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
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

.method protected abstract a(Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lahr;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lahr;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "execute "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzb;->i(Ljava/lang/String;)I

    .line 78
    iput v2, p0, Lahr;->c:I

    .line 79
    iput v2, p0, Lahr;->b:I

    .line 80
    iput-object v5, p0, Lahr;->e:Ljava/util/List;

    .line 81
    iget-object v3, p0, Lahr;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 83
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    iput-object v3, p0, Lahr;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 84
    invoke-virtual {p0}, Lahr;->a()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lahr;->e:Ljava/util/List;

    .line 86
    iget-object v3, p0, Lahr;->e:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lahr;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 87
    :cond_0
    const-string/jumbo v2, "no mWaitingSync message list"

    invoke-static {v2}, Lzb;->i(Ljava/lang/String;)I

    .line 133
    :cond_1
    :goto_0
    return v1

    .line 90
    :cond_2
    iget-object v3, p0, Lahr;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lahr;->f:I

    .line 93
    new-instance v0, Lahr$1;

    invoke-direct {v0, p0}, Lahr$1;-><init>(Lahr;)V

    .line 122
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    invoke-direct {p0, v0}, Lahr;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 124
    iput-object v5, p0, Lahr;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 125
    iput-object v5, p0, Lahr;->e:Ljava/util/List;

    .line 126
    iput-object v5, p0, Lahr;->g:Ljava/util/ArrayList;

    .line 129
    iget v3, p0, Lahr;->b:I

    iget v4, p0, Lahr;->f:I

    if-ge v3, v4, :cond_1

    move v1, v2

    .line 133
    goto :goto_0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    return v0
.end method

.method protected abstract f()V
.end method
