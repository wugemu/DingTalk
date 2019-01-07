.class public final Lahv;
.super Lyr;
.source "MailChangeTagsTask.java"


# instance fields
.field protected a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected d:I

.field protected e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/util/ArrayList;
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

    .line 36
    invoke-direct {p0}, Lyr;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lahv;->g:Ljava/util/List;

    .line 42
    iput v2, p0, Lahv;->h:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lahv;->i:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahv;->b:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahv;->c:Ljava/util/Map;

    .line 46
    iput v2, p0, Lahv;->d:I

    .line 47
    iput v2, p0, Lahv;->e:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 50
    sget-object v4, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    sget-object v5, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lyr;-><init>(JLcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;Ljava/lang/String;)V

    .line 41
    iput-object v6, p0, Lahv;->g:Ljava/util/List;

    .line 42
    iput v7, p0, Lahv;->h:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lahv;->i:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahv;->b:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahv;->c:Ljava/util/Map;

    .line 46
    iput v7, p0, Lahv;->d:I

    .line 47
    iput v7, p0, Lahv;->e:I

    .line 1050
    iput-wide p2, p0, Lyr;->x:J

    .line 52
    iput-object p1, p0, Lahv;->f:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic a(Lahv;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lahv;

    .prologue
    .line 27
    iget-object v0, p0, Lahv;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lahv;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p0, "x0"    # Lahv;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lahv;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 112
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    iget-object v5, p0, Lahv;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v5, p0, Lahv;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v5, p0, Lahv;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "totalSize "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lahv;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", currentPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lahv;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzb;->i(Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x14

    if-ge v1, v5, :cond_4

    iget v5, p0, Lahv;->e:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lahv;->h:I

    if-gt v5, v6, :cond_4

    .line 120
    iget-object v5, p0, Lahv;->g:Ljava/util/List;

    iget v6, p0, Lahv;->e:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 121
    .local v3, "messageSync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    iget-object v5, p0, Lahv;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget v5, p0, Lahv;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lahv;->e:I

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 127
    iget-object v2, p0, Lahv;->c:Ljava/util/Map;

    .line 131
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 132
    iget-object v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 133
    .local v4, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .restart local v4    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v4    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_3
    iget v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 129
    iget-object v2, p0, Lahv;->b:Ljava/util/Map;

    goto :goto_1

    .line 142
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "messageSync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    :cond_4
    if-nez v0, :cond_6

    .line 143
    const-string/jumbo v5, "exit continueSync"

    invoke-static {v5}, Lzb;->i(Ljava/lang/String;)I

    .line 152
    :cond_5
    :goto_2
    return-void

    .line 148
    :cond_6
    iget-object v5, p0, Lahv;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_7

    iget-object v5, p0, Lahv;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 151
    :cond_7
    iget-object v5, p0, Lahv;->f:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v5

    iget-object v6, p0, Lahv;->c:Ljava/util/Map;

    iget-object v7, p0, Lahv;->b:Ljava/util/Map;

    invoke-interface {v5, v6, v7, p1}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->addOrRemoveMailTags(Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lahv;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lahv;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "MailChangeTagsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 77
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    iput-object v1, p0, Lahv;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 78
    iget-object v1, p0, Lahv;->a:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 2046
    iget-wide v2, p0, Lyr;->x:J

    .line 78
    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryChangeMailTagStatusList(J)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lahv;->g:Ljava/util/List;

    .line 79
    iget-object v1, p0, Lahv;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lahv;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iput v1, p0, Lahv;->h:I

    .line 81
    new-instance v0, Lahv$1;

    invoke-direct {v0, p0}, Lahv$1;-><init>(Lahv;)V

    .line 102
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    invoke-direct {p0, v0}, Lahv;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 103
    const/4 v1, 0x1

    return v1

    .line 79
    .end local v0    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0xa

    return v0
.end method
