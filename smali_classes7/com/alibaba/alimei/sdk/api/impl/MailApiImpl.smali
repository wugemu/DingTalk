.class public Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
.super Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
.source "MailApiImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailApiImpl "


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string/jumbo v0, "MailApiImpl "

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Ljava/util/List;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->notifyGroupMails(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;JLcom/alibaba/alimei/framework/api/ApiResult;Ljava/lang/String;JJLxv;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # J
    .param p8, "x6"    # J
    .param p10, "x7"    # Lxv;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->loadHistoryMailsByTagFromServer(Ljava/lang/String;JLcom/alibaba/alimei/framework/api/ApiResult;Ljava/lang/String;JJLxv;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;JILxv;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "x2"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Lxv;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->loadHistoryMailsFromServer(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;JILxv;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;[J[I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "x2"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p3, "x3"    # [J
    .param p4, "x4"    # [I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->loadMultipleHistoryMailsFromServer(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;[J[I)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs checkArguments([Ljava/lang/String;)V
    .locals 2
    .param p1, "serverIds"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1354
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid argument, mailServerIds cannot be empty!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_1
    return-void
.end method

.method private getMailsMap(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 557
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 558
    :cond_0
    const/4 v2, 0x0

    .line 571
    :cond_1
    return-object v2

    .line 562
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 563
    .local v2, "modelMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 564
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 565
    .local v1, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v1, :cond_3

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .restart local v1    # "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadHistoryMailsByTagFromServer(Ljava/lang/String;JLcom/alibaba/alimei/framework/api/ApiResult;Ljava/lang/String;JJLxv;)V
    .locals 18
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/alimei/framework/api/ApiResult;",
            "Ljava/lang/String;",
            "JJ",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p10, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v3, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$3;

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    move-wide/from16 v6, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$3;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 278
    .local v3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    sget-object v2, Lagy;->a:Lagy;

    .line 2030
    iget v8, v2, Lagy;->b:I

    .line 280
    .local v8, "windowSize":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v10, p5

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-object/from16 v16, v3

    invoke-interface/range {v5 .. v16}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->searchMail(Ljava/lang/String;IIILjava/lang/String;IJJLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 282
    return-void
.end method

.method private loadHistoryMailsFromServer(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;JILxv;)V
    .locals 23
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p3, "folderId"    # J
    .param p5, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/framework/api/ApiResult;",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            "JI",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p6, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-static/range {p5 .. p5}, Laja;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 473
    invoke-static/range {p5 .. p5}, Laja;->d(I)I

    move-result v18

    .line 474
    .local v18, "folderServerType":I
    new-instance v22, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Mailbox"

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .local v22, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "accountKey"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "serverId"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "syncKey"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "messageOldestServerId"

    aput-object v6, v4, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 476
    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v5, v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v19

    check-cast v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 478
    .local v19, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    const-string/jumbo v4, "MailApiImpl loadHistoryMailsFromServer"

    invoke-static {v4}, Lyx;->c(Ljava/lang/String;)I

    .line 479
    new-instance v2, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$7;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$7;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;J)V

    .line 516
    .local v2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v3

    .line 517
    .local v3, "mailService":Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
    sget-object v4, Lagy;->a:Lagy;

    .line 3030
    iget v7, v4, Lagy;->b:I

    .line 518
    .local v7, "windowSize":I
    sget-object v4, Lagy;->a:Lagy;

    .line 3043
    iget v8, v4, Lagy;->c:I

    .line 519
    .local v8, "support":I
    sget-object v4, Lagy;->a:Lagy;

    .line 3051
    iget v9, v4, Lagy;->d:I

    .line 521
    .local v9, "summarySize":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mMessageOldesetServerId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 522
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v20

    .line 523
    .local v20, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    move-object/from16 v0, v19

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5, v12, v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryOldestMail(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v21

    .line 524
    .local v21, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v21, :cond_0

    .line 525
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mMessageOldesetServerId:Ljava/lang/String;

    .line 531
    .end local v20    # "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v21    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MailApiImpl loadHistoryMails syncMoreMails: windowSize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " support="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " summarySize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->c(Ljava/lang/String;)I

    .line 533
    invoke-static/range {v18 .. v18}, Laja;->e(I)Ljava/lang/Boolean;

    move-result-object v10

    .line 534
    .local v10, "sentStatus":Ljava/lang/Boolean;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mMessageOldesetServerId:Ljava/lang/String;

    move/from16 v5, v18

    move-object v11, v2

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMoreMails(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 542
    .end local v2    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    .end local v3    # "mailService":Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
    .end local v7    # "windowSize":I
    .end local v8    # "support":I
    .end local v9    # "summarySize":I
    .end local v10    # "sentStatus":Ljava/lang/Boolean;
    .end local v18    # "folderServerType":I
    .end local v19    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v22    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v11

    .line 538
    .local v11, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v12

    const/16 v16, 0x0

    move-wide/from16 v14, p3

    invoke-interface/range {v11 .. v16}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryAllLocalMails(JJLjava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 539
    .local v17, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 540
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MailApiImpl loadHistoryMails syncMoreMails: data size="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v17, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->c(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1
.end method

.method private loadMultipleHistoryMailsFromServer(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;[J[I)V
    .locals 32
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p3, "folderIds"    # [J
    .param p4, "folderTypes"    # [I

    .prologue
    .line 606
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_0

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v28, v0

    if-gtz v28, :cond_1

    .line 607
    :cond_0
    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 743
    :goto_0
    return-void

    .line 610
    :cond_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    .line 611
    .local v19, "length":I
    const/4 v15, 0x0

    .line 612
    .local v15, "canSyncCount":I
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v25, "syncFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 614
    .local v26, "syncFolderTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 615
    aget v28, p4, v18

    invoke-static/range {v28 .. v28}, Laja;->b(I)Z

    move-result v28

    if-nez v28, :cond_2

    .line 618
    add-int/lit8 v15, v15, 0x1

    .line 619
    aget-wide v28, p3, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    aget v28, p4, v18

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 623
    :cond_3
    if-gtz v15, :cond_5

    .line 624
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v23, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v28, "MailApiImpl "

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string/jumbo v28, ", can not load history mails for folderTypes = "

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 628
    aget v28, p4, v18

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    const-string/jumbo v28, ", "

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 631
    :cond_4
    const-string/jumbo v28, ", "

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 633
    .local v16, "errorLog":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lzb;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 637
    .end local v16    # "errorLog":Ljava/lang/String;
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    .line 638
    move/from16 v0, v19

    new-array v0, v0, [Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-object/from16 v27, v0

    .line 639
    .local v27, "syncMailboxes":[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    move/from16 v0, v19

    new-array v8, v0, [I

    .line 640
    .local v8, "folderServerTypes":[I
    move/from16 v0, v19

    new-array v7, v0, [Ljava/lang/String;

    .line 641
    .local v7, "serverIds":[Ljava/lang/String;
    move/from16 v0, v19

    new-array v9, v0, [Ljava/lang/String;

    .line 642
    .local v9, "oldestServerIds":[Ljava/lang/String;
    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/Boolean;

    .line 643
    .local v13, "sentStatuses":[Ljava/lang/Boolean;
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 644
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Laja;->d(I)I

    move-result v17

    .line 645
    .local v17, "folderServerType":I
    aput v17, v8, v18

    .line 646
    invoke-static/range {v17 .. v17}, Laja;->e(I)Ljava/lang/Boolean;

    move-result-object v28

    aput-object v28, v13, v18

    .line 647
    new-instance v24, Lcom/alibaba/alimei/orm/query/Select;

    const-class v28, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v29, "EmailProvider.db"

    const-string/jumbo v30, "Mailbox"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v24, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "_id"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string/jumbo v30, "accountKey"

    aput-object v30, v28, v29

    const/16 v29, 0x2

    const-string/jumbo v30, "serverId"

    aput-object v30, v28, v29

    const/16 v29, 0x3

    const-string/jumbo v30, "syncKey"

    aput-object v30, v28, v29

    const/16 v29, 0x4

    const-string/jumbo v30, "messageOldestServerId"

    aput-object v30, v28, v29

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 649
    const-string/jumbo v28, "_id=?"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v20

    check-cast v20, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 651
    .local v20, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    aput-object v20, v27, v18

    .line 652
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v18

    .line 653
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mMessageOldesetServerId:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v9, v18

    .line 654
    aget-object v28, v9, v18

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 655
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v21

    .line 656
    .local v21, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryOldestMail(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v22

    .line 657
    .local v22, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v22, :cond_6

    .line 658
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v9, v18

    .line 643
    .end local v21    # "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v22    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 671
    .end local v17    # "folderServerType":I
    .end local v20    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v24    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_7
    new-instance v14, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/util/ArrayList;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 736
    .local v14, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v6

    .line 737
    .local v6, "mailService":Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
    sget-object v28, Lagy;->a:Lagy;

    .line 4030
    move-object/from16 v0, v28

    iget v10, v0, Lagy;->b:I

    .line 738
    .local v10, "windowSize":I
    sget-object v28, Lagy;->a:Lagy;

    .line 4043
    move-object/from16 v0, v28

    iget v11, v0, Lagy;->c:I

    .line 739
    .local v11, "support":I
    sget-object v28, Lagy;->a:Lagy;

    .line 4051
    move-object/from16 v0, v28

    iget v12, v0, Lagy;->d:I

    .line 741
    .local v12, "summarySize":I
    invoke-interface/range {v6 .. v14}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMultipleMoreMails([Ljava/lang/String;[I[Ljava/lang/String;III[Ljava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto/16 :goto_0
.end method

.method private notifyGroupMails(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p3, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p4, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p5, "deleteMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 548
    .local v0, "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getMailsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->setAddedMails(Ljava/util/Map;)V

    .line 549
    invoke-direct {p0, p4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getMailsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->setChangedMails(Ljava/util/Map;)V

    .line 550
    invoke-direct {p0, p5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getMailsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->setDeletedMails(Ljava/util/Map;)V

    .line 551
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method public autoSetCopySendMail2SentFolder(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1742
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 1743
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 1745
    :cond_0
    return-void
.end method

.method public cancelAutoDownloadMailDetailTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1755
    new-instance v0, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;-><init>(Ljava/lang/String;)V

    .line 1756
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;->cancelCommand()V

    .line 1757
    return-void
.end method

.method public cancelOutgoingMail(JILxv;)V
    .locals 1
    .param p1, "messageId"    # J
    .param p3, "cancelType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->cancelOutgoingMail(JILxv;)V

    .line 1195
    return-void
.end method

.method public changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;IILxv;)V
    .locals 7
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "calendarSerId"    # Ljava/lang/String;
    .param p3, "oldStatus"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1761
    .local p5, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1771
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1772
    return-void
.end method

.method public changeMailAllReadStatus(JZLjava/lang/String;Lxv;)V
    .locals 9
    .param p1, "mailboxId"    # J
    .param p3, "readStatus"    # Z
    .param p4, "oldestSerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1580
    .local p5, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MailApiImpl changeAllMailReadStatus mailboxId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    .line 1581
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p4

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;JLjava/lang/String;Z)V

    .line 1603
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v1, p5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1604
    return-void
.end method

.method public varargs changeMailFavorite(ZLxv;[Ljava/lang/String;)V
    .locals 2
    .param p1, "isFavorite"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1312
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->checkArguments([Ljava/lang/String;)V

    .line 1313
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$20;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$20;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1326
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1327
    return-void
.end method

.method public varargs changeMailReadStatus(ZLxv;[Ljava/lang/String;)V
    .locals 3
    .param p1, "readStatus"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1291
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->checkArguments([Ljava/lang/String;)V

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MailApiImpl changeMailReadStatus mailServerIds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->g(Ljava/lang/String;)I

    .line 1293
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1306
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1307
    return-void
.end method

.method public changeMailReadStatusByTag(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "readStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1608
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1621
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v1, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1622
    return-void
.end method

.method public changeMailReadTimestamp(Lxv;Ljava/lang/String;J)V
    .locals 1
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1209
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->changeMailReadTimestamp(Lxv;Ljava/lang/String;J)V

    .line 1210
    return-void
.end method

.method public varargs changeMailReminder(ZLxv;[Ljava/lang/String;)V
    .locals 0
    .param p1, "isReminder"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->changeMailReminder(ZLxv;[Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public varargs deleteMailByServerId(Lxv;[Ljava/lang/String;)V
    .locals 4
    .param p2, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1214
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const-string/jumbo v1, "MailApiImpl "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteMailByServerId mailServerIds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->checkArguments([Ljava/lang/String;)V

    .line 1217
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;[Ljava/lang/String;Lxv;)V

    .line 1285
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1286
    return-void
.end method

.method public fetchSearchMailFromServer(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1480
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$24;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$24;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1512
    return-void
.end method

.method public getOnlinePreviewUrl(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lxv;)V
    .locals 2
    .param p1, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1527
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)V

    .line 1569
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1570
    return-void
.end method

.method public hasLocalTagMail(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasLocalTagMail(Ljava/lang/String;Lxv;)V

    .line 788
    return-void
.end method

.method public hasMoreHistoryMails(JILxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasMoreHistoryMails(JILxv;)V

    .line 293
    return-void
.end method

.method public hasMoreHistoryMails(JI)Z
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->hasMoreHistoryMails(JI)Z

    move-result v0

    return v0
.end method

.method public loadHistoryMails(JILjava/lang/String;Lxv;)V
    .locals 9
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .param p4, "oldestSerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "MailApiImpl "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadHistoryMails "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p4

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;JLjava/lang/String;ILxv;)V

    .line 467
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1, p5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public loadMailBodyFromServer(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 850
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$11;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$11;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 885
    return-void
.end method

.method public loadMailHistoryByTag(Ljava/lang/String;JJLxv;)V
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p6, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 234
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v5, p1

    move-wide/from16 v6, p4

    move-wide v8, p2

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;JJLxv;)V

    .line 233
    .local v2, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p6

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 814
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$10;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$10;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 847
    return-void
.end method

.method public loadMultipleHistoryMails([J[I[Ljava/lang/String;Lxv;)V
    .locals 6
    .param p1, "folderIds"    # [J
    .param p2, "folderTypes"    # [I
    .param p3, "oldestSerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I[",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 576
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    const-string/jumbo v1, "MailApiImpl "

    const-string/jumbo v3, "loadMultipleHistoryMails"

    invoke-static {v1, v3}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "accountName":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$8;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$8;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;[I[J[Ljava/lang/String;)V

    .line 602
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 603
    return-void
.end method

.method public loadSearchMailFromServer(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 889
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$12;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$12;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 924
    return-void
.end method

.method public varargs moveMailToNewFolder(JLxv;[Ljava/lang/String;)V
    .locals 7
    .param p1, "targetFolderId"    # J
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1332
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->checkArguments([Ljava/lang/String;)V

    .line 1333
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 1350
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v1, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1351
    return-void
.end method

.method public queryAllLocalFavoriteMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalFavoriteMails(Lxv;)V

    .line 768
    return-void
.end method

.method public queryAllLocalMails(JLxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalMails(JLxv;)V

    .line 748
    return-void
.end method

.method public queryAllLocalMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalMails(Lxv;)V

    .line 763
    return-void
.end method

.method public queryAllLocalMailsByTag(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalMailsByTag(Ljava/lang/String;Lxv;)V

    .line 778
    return-void
.end method

.method public queryAllLocalRecentReadMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllLocalRecentReadMails(Lxv;)V

    .line 773
    return-void
.end method

.method public queryAllUnloadedMails(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAllUnloadedMails(Lxv;)V

    .line 758
    return-void
.end method

.method public queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 1
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 961
    invoke-super {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v0

    return-object v0
.end method

.method public queryAttachmentByContentUri(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "contentUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryAttachmentByContentUri(Ljava/lang/String;Lxv;)V

    .line 971
    return-void
.end method

.method public queryLocalCommunicateEmails(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "targetEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1516
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalCommunicateEmails(Ljava/lang/String;Lxv;)V

    .line 1517
    return-void
.end method

.method public queryLocalMails(ILxv;)V
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 752
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalMails(ILxv;)V

    .line 753
    return-void
.end method

.method public queryLocalMailsByConversationId(JLjava/lang/String;Lxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalMailsByConversationId(JLjava/lang/String;Lxv;)V

    .line 794
    return-void
.end method

.method public queryLocalMailsByTag(JLjava/lang/String;Lxv;)V
    .locals 1
    .param p1, "folderId"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryLocalMailsByTag(JLjava/lang/String;Lxv;)V

    .line 783
    return-void
.end method

.method public queryMailAttachmentNumber(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeResourceAttachment"    # Z

    .prologue
    .line 952
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailAttachmentNumber(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public queryMailAttachmentNumber(Ljava/lang/String;ZLxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeResourceAttachment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailAttachmentNumber(Ljava/lang/String;ZLxv;)V

    .line 947
    return-void
.end method

.method public queryMailAttachments(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailAttachments(Ljava/lang/String;Lxv;)V

    .line 929
    return-void
.end method

.method public queryMailById(J)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 1
    .param p1, "mailId"    # J

    .prologue
    .line 804
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailById(J)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v0

    return-object v0
.end method

.method public queryMailById(JLxv;)V
    .locals 1
    .param p1, "mailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 809
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailById(JLxv;)V

    .line 810
    return-void
.end method

.method public queryMailByTagFromServer(Ljava/lang/String;JJLxv;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p6, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-interface {p6, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 204
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    invoke-virtual {p0, v0, p6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emailUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1086
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V

    .line 1087
    return-void
.end method

.method public queryMailDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .locals 8
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "fromAddress"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "forceLoadFromServer"    # Z
    .param p5, "shouldStoreIntoLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1031
    .local p6, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$14;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p4

    move-object v4, p1

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$14;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1081
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1082
    return-void
.end method

.method public queryMailDetail(Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
    .locals 7
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "fromAddress"    # Ljava/lang/String;
    .param p3, "forceLoadFromServer"    # Z
    .param p4, "shouldStoreIntoLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1024
    .local p5, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->queryMailDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    .line 1025
    return-void
.end method

.method public queryMailDetail(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "forceLoadFromServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 975
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$13;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$13;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1017
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1018
    return-void
.end method

.method public queryMailDetailById(JLxv;)V
    .locals 1
    .param p1, "mailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 798
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailDetailById(JLxv;)V

    .line 799
    return-void
.end method

.method public queryMailDraft(JLxv;)V
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lagz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p3, "listener":Lxv;, "Lxv<Lagz;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailDraft(JLxv;)V

    .line 1200
    return-void
.end method

.method public queryMailNormalAttachments(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailNormalAttachments(Ljava/lang/String;Lxv;)V

    .line 935
    return-void
.end method

.method public queryMailResourceAttachments(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 940
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailResourceAttachments(Ljava/lang/String;Lxv;)V

    .line 941
    return-void
.end method

.method public queryRelatedMails(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "targetEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryRelatedMails(Ljava/lang/String;Lxv;)V

    .line 1523
    return-void
.end method

.method public refreshMails(JILxv;)V
    .locals 7
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailGroupModel;>;"
    const-string/jumbo v1, "MailApiImpl "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refreshMails "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "accountName":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;

    move-object v1, p0

    move v3, p3

    move-wide v4, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;IJLjava/lang/String;)V

    .line 434
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailGroupModel;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 435
    return-void
.end method

.method public refreshMailsAndQueryAllLocal(JILxv;)V
    .locals 7
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    const-string/jumbo v1, "MailApiImpl "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refreshMailsAndQueryAllLocal "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "accountName":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

    move-object v1, p0

    move v3, p3

    move-wide v4, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;IJLjava/lang/String;)V

    .line 365
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 366
    return-void
.end method

.method public reportOrTrustSpamMail(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "report"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1693
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1737
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1738
    return-void
.end method

.method public reportSpam(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1643
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1689
    return-void
.end method

.method public resetFoldersSyncStatus(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1626
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$28;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$28;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;)V

    .line 1638
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lxv$a;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1639
    return-void
.end method

.method public saveMailDraft(Lagz;ZLxv;)V
    .locals 6
    .param p1, "newMail"    # Lagz;
    .param p2, "syncToServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1156
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lagz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lagz;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    invoke-virtual {p1}, Lagz;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lagz;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Argument: Cannot save an completely empty email as draft!!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 1161
    .local v2, "accountName":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;Z)V

    .line 1181
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1182
    return-void
.end method

.method public searchAttachmentFromServer(Ljava/lang/String;IILxv;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lagu;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1411
    .local p4, "listener":Lxv;, "Lxv<Lagu;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1474
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lagu;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1475
    return-void
.end method

.method public searchLocalMail(Ljava/lang/String;ILxv;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1362
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->searchLocalMail(Ljava/lang/String;ILxv;)V

    .line 1363
    return-void
.end method

.method public searchMailFromServer(Ljava/lang/String;IIILxv;)V
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .param p3, "length"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1368
    .local p5, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$22;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1405
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1406
    return-void
.end method

.method public sendMail(Lagz;)V
    .locals 1
    .param p1, "newMail"    # Lagz;

    .prologue
    .line 1107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->sendMail(Lagz;Lxv;)V

    .line 1108
    return-void
.end method

.method public sendMail(Lagz;Lxv;)V
    .locals 4
    .param p1, "newMail"    # Lagz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1112
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    const-string/jumbo v2, "MailApiImpl "

    const-string/jumbo v3, "sendMail"

    invoke-static {v2, v3}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {p1}, Lagz;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Argument: NewMailModel must have a recipient at least"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;

    invoke-direct {v1, p0, v0, v0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;)V

    .line 1150
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1151
    return-void
.end method

.method public sendMailById(J)V
    .locals 3
    .param p1, "mailId"    # J

    .prologue
    .line 1091
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$15;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$15;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;J)V

    .line 1102
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 1103
    return-void
.end method

.method public startAutoDownloadMailDetailTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1749
    new-instance v0, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;-><init>(Ljava/lang/String;)V

    .line 1750
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/download/cmmd/DownloadMailDetailCommand;->executeCommand()V

    .line 1751
    return-void
.end method

.method public startSyncHistoryMails(JI)V
    .locals 5
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I

    .prologue
    .line 119
    const-string/jumbo v1, "MailApiImpl "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSyncHistoryMails "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {p3}, Laja;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->buildHistoryMailTaskCommnad(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    move-result-object v0

    .line 125
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->executeCommand()V

    goto :goto_0
.end method

.method public startSyncHistoryMails([J[I)V
    .locals 5
    .param p1, "folderIds"    # [J
    .param p2, "folderTypes"    # [I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    const-string/jumbo v3, "MailApiImpl "

    const-string/jumbo v4, "startSyncHistoryMails"

    invoke-static {v3, v4}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    array-length v2, p1

    .line 133
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 134
    aget v3, p2, v1

    invoke-static {v3}, Laja;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    :goto_1
    return-void

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->buildHistoryMailTaskCommnad(Ljava/lang/String;[J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;

    move-result-object v0

    .line 140
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->executeCommand()V

    goto :goto_1
.end method

.method public startSyncMailByTagFromServer(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 150
    .local v1, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->executeCommand()V

    goto :goto_0
.end method

.method public startSyncMails(JIZ)V
    .locals 5
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I
    .param p4, "isIncrementSync"    # Z

    .prologue
    .line 75
    const-string/jumbo v1, "MailApiImpl "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSyncMails "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p3}, Laja;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    if-eqz p4, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->buildTaskCommnadForIncrement(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    move-result-object v0

    .line 86
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->executeCommand()V

    goto :goto_0

    .line 84
    .end local v0    # "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->buildTaskCommnad(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    move-result-object v0

    .restart local v0    # "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    goto :goto_1
.end method

.method public startSyncNewMails(JI)V
    .locals 5
    .param p1, "folderId"    # J
    .param p3, "folderType"    # I

    .prologue
    .line 92
    const-string/jumbo v1, "MailApiImpl "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSyncNewMails "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p3}, Laja;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->buildNewMailTaskCommnad(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    move-result-object v0

    .line 98
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->executeCommand()V

    goto :goto_0
.end method

.method public startSyncNewMails([J[I)V
    .locals 5
    .param p1, "folderIds"    # [J
    .param p2, "folderTypes"    # [I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 104
    const-string/jumbo v3, "MailApiImpl "

    const-string/jumbo v4, "startSyncNewMails"

    invoke-static {v3, v4}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    array-length v2, p1

    .line 106
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 107
    aget v3, p2, v1

    invoke-static {v3}, Laja;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    :goto_1
    return-void

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->buildNewMailTaskCommnad(Ljava/lang/String;[J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;

    move-result-object v0

    .line 113
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMultipleMailsTaskCommand;->executeCommand()V

    goto :goto_1
.end method

.method public updateImapMailStatus(Ljava/lang/String;JJJ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderId"    # J
    .param p4, "startUid"    # J
    .param p6, "endUid"    # J

    .prologue
    .line 1575
    return-void
.end method
