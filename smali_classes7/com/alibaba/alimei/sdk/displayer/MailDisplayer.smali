.class public Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;
.source "MailDisplayer.java"


# instance fields
.field private isConversationMode:Z

.field private isUnreadMailListChanged:Z

.field private final mAllMailIdServerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllMailMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mDividerKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoadTagMails:Z

.field private mLocalDataListener:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServerListener:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnreadMailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnreadMailMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;-><init>(Ljava/lang/String;)V

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode:Z

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    .line 631
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mLocalDataListener:Lxv;

    .line 691
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mServerListener:Lxv;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Ljava/util/List;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->addedMails(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->syncNewMailsFromServer()V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->initDataFromServer()V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->changedMails(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private addConversationMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 385
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .end local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 387
    .restart local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 389
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 393
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0
.end method

.method private addedMails(Ljava/util/List;Z)Z
    .locals 6
    .param p2, "isForHandleNotifyData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 137
    :cond_0
    const/4 v2, 0x0

    .line 173
    :cond_1
    return v2

    .line 139
    :cond_2
    const/4 v2, 0x0

    .line 140
    .local v2, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 141
    .local v0, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 143
    .local v1, "mailId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "add exist mail--->> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_3
    const/4 v2, 0x1

    .line 151
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0, v1, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->handleUnreadMailList(Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    if-eqz p2, :cond_4

    .line 161
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkRemoveDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 163
    :cond_4
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->addConversationMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0

    .line 165
    :cond_5
    if-eqz p2, :cond_6

    .line 167
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkRemoveDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 169
    :cond_6
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 170
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildTimeDivierList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 979
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const-wide/16 v0, 0x0

    .line 983
    .local v0, "dateTime":J
    if-eqz p1, :cond_1

    .line 984
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 985
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v0, v1, v4, v5}, Laiq;->a(JJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 986
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v6, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    invoke-static {v6, v7, v4, v5}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v0, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 989
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1002
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method private changedMails(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 285
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v5

    .line 289
    :cond_1
    const/4 v3, 0x0

    .line 290
    .local v3, "updateConversionResult":Z
    const/4 v4, 0x0

    .line 292
    .local v4, "updateUnreadResult":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 293
    .local v0, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 294
    .local v1, "mailId":Ljava/lang/Long;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 296
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 297
    .local v2, "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    if-eqz v2, :cond_3

    .line 300
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    iget-object v9, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_3
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const/4 v3, 0x1

    goto :goto_1

    .line 307
    .end local v0    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v1    # "mailId":Ljava/lang/Long;
    .end local v2    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_4
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->updateConversationMailItems(Ljava/util/List;)V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 311
    .restart local v0    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 312
    .restart local v1    # "mailId":Ljava/lang/Long;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 314
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->updateConversationMailSingle(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 317
    const/4 v3, 0x1

    .line 320
    :cond_6
    iget-boolean v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-eqz v8, :cond_7

    .line 321
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 322
    iput-boolean v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    .line 323
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const/4 v4, 0x1

    goto :goto_2

    .line 327
    :cond_7
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 328
    iput-boolean v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    .line 329
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const/4 v4, 0x1

    goto :goto_2

    .line 334
    .end local v0    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v1    # "mailId":Ljava/lang/Long;
    :cond_8
    if-nez v3, :cond_9

    if-eqz v4, :cond_0

    :cond_9
    move v5, v6

    goto/16 :goto_0
.end method

.method private checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 6
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 181
    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->DividerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDisplayerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 182
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v2, v3}, Laiq;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 183
    .local v0, "dayTime":Ljava/lang/Long;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v0    # "dayTime":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private checkDividerAfterRemoveMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 8
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 223
    sget-object v3, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->DividerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDisplayerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    if-ne v3, v4, :cond_1

    .line 224
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "hasOneSameDay":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 228
    .local v2, "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v3, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-nez v3, :cond_2

    iget-wide v4, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v4, v5, v6, v7}, Laiq;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    const/4 v0, 0x1

    .line 234
    .end local v2    # "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    if-nez v0, :cond_1

    .line 235
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkRemoveDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 239
    .end local v0    # "hasOneSameDay":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 226
    .restart local v0    # "hasOneSameDay":Z
    .restart local v1    # "i":I
    .restart local v2    # "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkRemoveDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 8
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 196
    sget-object v6, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->DividerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDisplayerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    if-ne v6, v7, :cond_1

    .line 197
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v6, v7}, Laiq;->a(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 198
    .local v0, "dayTime":Ljava/lang/Long;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 201
    .local v4, "shouldRemoveTimeStamp":J
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 202
    const/4 v3, -0x1

    .line 203
    .local v3, "removePostion":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 204
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 205
    .local v2, "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-eqz v6, :cond_2

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v6, v7, v4, v5}, Laiq;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    move v3, v1

    .line 210
    .end local v2    # "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 211
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    .end local v0    # "dayTime":Ljava/lang/Long;
    .end local v1    # "i":I
    .end local v3    # "removePostion":I
    .end local v4    # "shouldRemoveTimeStamp":J
    :cond_1
    return-void

    .line 203
    .restart local v0    # "dayTime":Ljava/lang/Long;
    .restart local v1    # "i":I
    .restart local v2    # "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v3    # "removePostion":I
    .restart local v4    # "shouldRemoveTimeStamp":J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearAllMailDatas(Z)V
    .locals 1
    .param p1, "isNotifyDataChanged"    # Z

    .prologue
    .line 597
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 598
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 599
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 600
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 601
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 602
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 603
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 604
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 605
    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 608
    :cond_0
    return-void
.end method

.method private clearMailDatas(Z)V
    .locals 1
    .param p1, "isNotifyDataChanged"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mDividerKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 251
    :cond_0
    return-void
.end method

.method private deleteFromConversationMailSingle(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 10
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 556
    if-nez p1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 560
    move-object v5, p1

    .line 561
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 564
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->deleteConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    .line 566
    iget-object v6, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0, v6}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkDividerAfterRemoveMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 569
    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkDividerAfterRemoveMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 570
    iget-object v6, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0, v6}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 573
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemCounts()I

    move-result v6

    if-gtz v6, :cond_0

    .line 574
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v8, v9, v7}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->removeBySingleId(Ljava/util/List;JZ)Z

    .line 577
    iget-object v6, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0, v6}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkDividerAfterRemoveMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 578
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->clearAllConversationItems()V

    goto :goto_0

    .line 582
    .end local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v1    # "conversationId":Ljava/lang/String;
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    .line 583
    .local v2, "currentMailId":J
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 584
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 585
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 587
    .restart local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    .line 588
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 589
    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkDividerAfterRemoveMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0
.end method

.method private deletedMails(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 343
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 344
    :cond_0
    const/4 v2, 0x0

    .line 368
    :cond_1
    return v2

    .line 347
    :cond_2
    const/4 v2, 0x0

    .line 348
    .local v2, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 349
    .local v0, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 352
    .local v1, "mailId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->deleteFromConversationMailSingle(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 358
    const/4 v2, 0x1

    .line 362
    :cond_4
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 363
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    .line 364
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 372
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 373
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 375
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    goto :goto_0
.end method

.method private varargs getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "withRelationConversations"    # Z
    .param p2, "mailServerIds"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1012
    if-eqz p2, :cond_0

    array-length v6, p2

    if-nez v6, :cond_1

    .line 1038
    .end local p2    # "mailServerIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 1015
    .restart local p2    # "mailServerIds":[Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 1016
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v5, "serverIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v7, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v4, p2, v6

    .line 1018
    .local v4, "mailServerId":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1019
    .local v2, "lid":Ljava/lang/Long;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1021
    .local v3, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v3, :cond_3

    iget-object v8, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 1022
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    iget-object v9, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 1024
    .local v0, "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v8, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1025
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->getConversationItemServerIds()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1017
    .end local v0    # "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1027
    .restart local v0    # "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1030
    .end local v0    # "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1034
    .end local v2    # "lid":Ljava/lang/Long;
    .end local v3    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v4    # "mailServerId":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 1035
    .local v1, "ids":[Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ids":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .restart local v1    # "ids":[Ljava/lang/String;
    move-object p2, v1

    .line 1036
    goto :goto_0
.end method

.method private handleDeleteFromCache([Ljava/lang/String;)V
    .locals 8
    .param p1, "targetIds"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1267
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1268
    .local v3, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    array-length v6, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, p1, v5

    .line 1269
    .local v4, "serverId":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1270
    .local v1, "lid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 1271
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1272
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_0

    .line 1273
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1277
    .end local v1    # "lid":Ljava/lang/Long;
    .end local v4    # "serverId":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->deletedMails(Ljava/util/List;)Z

    move-result v0

    .line 1278
    .local v0, "isnotifyDataChanged":Z
    if-eqz v0, :cond_2

    .line 1279
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 1281
    :cond_2
    return-void
.end method

.method private handleUnreadMailList(Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 3
    .param p1, "mailId"    # Ljava/lang/Long;
    .param p2, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "result":Z
    iget-boolean v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    .line 265
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/4 v0, 0x1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    .line 272
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDataFromServer()V
    .locals 5

    .prologue
    .line 697
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncMails(JIZ)V

    .line 698
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyLoadSuccess()V

    .line 699
    return-void
.end method

.method private syncNewMailsFromServer()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 703
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncNewMails(JI)V

    goto :goto_0
.end method

.method private updateConversationMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 467
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->updateConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 471
    :cond_0
    return-void
.end method

.method private updateConversationMailItems(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 510
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    .local v0, "conversationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 513
    .local v6, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v12, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 514
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v5, :cond_0

    .line 515
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v12, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v6    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 521
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 522
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 523
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->updateConversationMails(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 526
    .end local v0    # "conversationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 527
    .local v7, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    const/4 v10, 0x0

    .line 528
    .local v10, "shouldAdd":Z
    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    .line 530
    .local v2, "currentMailId":J
    iget-object v12, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 531
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 532
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 533
    .restart local v6    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    .line 535
    .local v8, "mailId":J
    cmp-long v12, v2, v8

    if-nez v12, :cond_4

    .line 536
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 537
    const/4 v10, 0x1

    .line 541
    .end local v6    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v8    # "mailId":J
    :cond_5
    if-eqz v10, :cond_3

    .line 542
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkRemoveDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 543
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 544
    iget-object v12, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 548
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v2    # "currentMailId":J
    .end local v7    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v10    # "shouldAdd":Z
    :cond_6
    return-void
.end method

.method private updateConversationMailSingle(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 8
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 478
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 482
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->updateConversationMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0

    .line 484
    :cond_2
    const/4 v4, 0x0

    .line 486
    .local v4, "shouldAdd":Z
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 488
    .local v0, "currentMailId":Ljava/lang/Long;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 491
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 493
    .local v3, "mailId":Ljava/lang/Long;
    if-ne v0, v3, :cond_3

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 495
    const/4 v4, 0x1

    goto :goto_1

    .line 498
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v3    # "mailId":Ljava/lang/Long;
    :cond_4
    if-eqz v4, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 500
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateConversationMails(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 402
    .local p1, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 458
    :cond_0
    return-void

    .line 405
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0, v8}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 407
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_4

    .line 409
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->updateConversationItems(Ljava/util/ArrayList;)Z

    move-result v7

    .line 414
    .local v7, "shouldDeleteFromList":Z
    if-eqz v7, :cond_0

    .line 416
    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 418
    .local v5, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 419
    .local v4, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 420
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 421
    .local v6, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v6, :cond_3

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iget-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iget-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 422
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 423
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    .end local v4    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v6    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v7    # "shouldDeleteFromList":Z
    :cond_4
    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 435
    .restart local v5    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 436
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 437
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 438
    .local v2, "conversationModel":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v2, :cond_6

    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->contain(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 439
    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->deleteConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    .line 440
    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 445
    .end local v2    # "conversationModel":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_7
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 446
    .restart local v4    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 447
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 448
    .restart local v6    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v6, :cond_9

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iget-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    if-eqz v6, :cond_8

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iget-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 450
    :cond_a
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public varargs addMailTag(ZLjava/lang/String;Lxv;[Ljava/lang/String;)V
    .locals 5
    .param p1, "withRelationConversations"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 922
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 923
    .local v2, "targetIds":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_2

    .line 924
    :cond_0
    if-eqz p3, :cond_1

    .line 925
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 938
    :cond_1
    :goto_0
    return-void

    .line 929
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 930
    .local v0, "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 931
    .local v1, "serverId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 934
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, p2, v4}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->addMailTags(Ljava/util/List;Ljava/lang/String;Lxv;)V

    .line 935
    if-eqz p3, :cond_1

    .line 936
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;ILxv;)V
    .locals 5
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "calendarServerId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1168
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Lxv;Ljava/lang/String;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "basic_UpdateCalendarEvent"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    monitor-exit p0

    return-void

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized changeMailFavorite(ZZLxv;[Ljava/lang/String;)V
    .locals 9
    .param p1, "withRelationConversations"    # Z
    .param p2, "isFavorite"    # Z
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1130
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1131
    .local v5, "targetIds":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_2

    .line 1132
    :cond_0
    if-eqz p3, :cond_1

    .line 1133
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v6

    invoke-interface {p3, v6}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1138
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1139
    .local v3, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v4, v5, v6

    .line 1140
    .local v4, "serverId":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1141
    .local v1, "lid":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 1142
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1143
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_3

    .line 1145
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    iput-boolean p2, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    .line 1139
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1150
    .end local v1    # "lid":Ljava/lang/Long;
    .end local v4    # "serverId":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1151
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->changedMails(Ljava/util/List;)Z

    move-result v0

    .line 1152
    .local v0, "isNotifyDatachanged":Z
    if-eqz v0, :cond_5

    .line 1153
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 1158
    .end local v0    # "isNotifyDatachanged":Z
    :cond_5
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v6}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, p2, v7, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailFavorite(ZLxv;[Ljava/lang/String;)V

    .line 1160
    if-eqz p3, :cond_1

    .line 1161
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v6

    invoke-interface {p3, v6}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1130
    .end local v3    # "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public varargs declared-synchronized changeMailReadStatus(ZZLxv;[Ljava/lang/String;)V
    .locals 9
    .param p1, "withRelationConversations"    # Z
    .param p2, "isRead"    # Z
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1086
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1087
    .local v5, "targetIds":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_2

    .line 1088
    :cond_0
    if-eqz p3, :cond_1

    .line 1089
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v6

    invoke-interface {p3, v6}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1094
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1095
    .local v3, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v4, v5, v6

    .line 1096
    .local v4, "serverId":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1097
    .local v1, "lid":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 1098
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1099
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_3

    .line 1101
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    iput-boolean p2, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 1095
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1106
    .end local v1    # "lid":Ljava/lang/Long;
    .end local v4    # "serverId":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1107
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->changedMails(Ljava/util/List;)Z

    move-result v0

    .line 1108
    .local v0, "isNotifyDatachanged":Z
    if-eqz v0, :cond_5

    .line 1109
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 1114
    .end local v0    # "isNotifyDatachanged":Z
    :cond_5
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v6}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, p2, v7, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    .line 1116
    if-eqz p3, :cond_1

    .line 1117
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v6

    invoke-interface {p3, v6}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1086
    .end local v3    # "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public varargs declared-synchronized changeMailReminder(ZZLxv;[Ljava/lang/String;)V
    .locals 9
    .param p1, "withRelationConversations"    # Z
    .param p2, "isReminder"    # Z
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1049
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1050
    .local v5, "targetIds":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_2

    .line 1051
    :cond_0
    if-eqz p3, :cond_1

    .line 1052
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v6

    invoke-interface {p3, v6}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1057
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1058
    .local v3, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v4, v5, v6

    .line 1059
    .local v4, "serverId":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailIdServerIdMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1060
    .local v1, "lid":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 1061
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1062
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_3

    .line 1064
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    iput-boolean p2, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 1058
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1069
    .end local v1    # "lid":Ljava/lang/Long;
    .end local v4    # "serverId":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1070
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->changedMails(Ljava/util/List;)Z

    move-result v0

    .line 1071
    .local v0, "isNotifyDatachanged":Z
    if-eqz v0, :cond_5

    .line 1072
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 1075
    .end local v0    # "isNotifyDatachanged":Z
    :cond_5
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v6}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v6

    invoke-interface {v6, p2, p3, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReminder(ZLxv;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1049
    .end local v3    # "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public varargs declared-synchronized deleteMailByServerId(ZLxv;[Ljava/lang/String;)V
    .locals 3
    .param p1, "withRelationConversations"    # Z
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
    .line 1223
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, "targetIds":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ltz v1, :cond_0

    .line 1226
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->handleDeleteFromCache([Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->deleteMailByServerId(Lxv;[Ljava/lang/String;)V

    .line 1230
    :cond_0
    if-eqz p2, :cond_1

    .line 1231
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {p2, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    :cond_1
    monitor-exit p0

    return-void

    .line 1223
    .end local v0    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized executeLoad()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v2, :cond_0

    .line 635
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 637
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mContentObserver:Lxm;

    if-nez v2, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getObserver()Lxm;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mContentObserver:Lxm;

    .line 639
    const-class v2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mContentObserver:Lxm;

    invoke-static {v2, v3}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyLoadStarted()V

    .line 644
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 645
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v0, :cond_2

    .line 646
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :goto_0
    monitor-exit p0

    return-void

    .line 650
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mLocalDataListener:Lxv;

    .line 652
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    if-nez v1, :cond_3

    .line 653
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;

    .end local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;)V

    .line 679
    .restart local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mLocalDataListener:Lxv;

    .line 682
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isRecentReadFolder()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 683
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAllLocalRecentReadMails(Lxv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 634
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 684
    .restart local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 685
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAllLocalFavoriteMails(Lxv;)V

    goto :goto_0

    .line 687
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAllLocalMails(JLxv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized forceReload()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 718
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  forceReload cannot execute without a null folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 724
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->clearAllMailDatas(Z)V

    .line 727
    invoke-super {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->forceReload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    monitor-exit p0

    return-void
.end method

.method public getAllDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1007
    invoke-super {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    return-object v0
.end method

.method public getConversationMailList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 813
    :goto_0
    return-object v1

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 810
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_1

    .line 811
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->getConversationItems(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 813
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMailSnippetModel(JZ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 7
    .param p1, "mailId"    # J
    .param p3, "isContainsConversation"    # Z

    .prologue
    .line 787
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 789
    .local v2, "lmailId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 790
    .local v3, "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz p3, :cond_0

    if-eqz v3, :cond_0

    .line 791
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 793
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 794
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 797
    .end local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v1    # "conversationId":Ljava/lang/String;
    .end local v3    # "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    return-object v3
.end method

.method public getNextMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 10
    .param p1, "anchor"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 862
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 863
    :cond_0
    const/4 v4, 0x0

    .line 892
    :cond_1
    :goto_0
    return-object v4

    .line 866
    :cond_2
    const/4 v4, 0x0

    .line 868
    .local v4, "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 872
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    iget-boolean v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemCounts()I

    move-result v6

    if-gtz v6, :cond_4

    .line 873
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->find(Ljava/util/List;J)I

    move-result v2

    .line 874
    .local v2, "index":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 875
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .restart local v4    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    goto :goto_0

    .line 878
    .end local v2    # "index":I
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 880
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v5, :cond_5

    const/4 v3, 0x0

    .line 881
    .local v3, "itemsize":I
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->find(Ljava/util/List;J)I

    move-result v2

    .line 882
    .restart local v2    # "index":I
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v3, :cond_6

    .line 883
    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .restart local v4    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    goto :goto_0

    .line 880
    .end local v2    # "index":I
    .end local v3    # "itemsize":I
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 886
    .restart local v2    # "index":I
    .restart local v3    # "itemsize":I
    :cond_6
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->find(Ljava/util/List;J)I

    move-result v2

    .line 887
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 888
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .restart local v4    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    goto :goto_0
.end method

.method public getPreviousMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 10
    .param p1, "anchor"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 824
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 825
    :cond_0
    const/4 v3, 0x0

    .line 851
    :cond_1
    :goto_0
    return-object v3

    .line 827
    :cond_2
    const/4 v3, 0x0

    .line 829
    .local v3, "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mConversationMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 833
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    iget-boolean v5, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemCounts()I

    move-result v5

    if-gtz v5, :cond_4

    .line 834
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->find(Ljava/util/List;J)I

    move-result v2

    .line 835
    .local v2, "index":I
    if-lez v2, :cond_1

    .line 836
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .restart local v3    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    goto :goto_0

    .line 839
    .end local v2    # "index":I
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 840
    .local v4, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->find(Ljava/util/List;J)I

    move-result v2

    .line 841
    .restart local v2    # "index":I
    if-lez v2, :cond_5

    .line 842
    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .restart local v3    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    goto :goto_0

    .line 845
    :cond_5
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->find(Ljava/util/List;J)I

    move-result v2

    .line 846
    if-lez v2, :cond_1

    .line 847
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .restart local v3    # "result":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    goto :goto_0
.end method

.method public getUnreadMailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->buildTimeDivierList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized handleMailGroup(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V
    .locals 7
    .param p1, "group"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    monitor-enter p0

    if-nez p1, :cond_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 102
    .local v0, "folderId":J
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAddedMails(J)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->addedMails(Ljava/util/List;Z)Z

    move-result v2

    .line 104
    .local v2, "isAdded":Z
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getChangedMails(J)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->changedMails(Ljava/util/List;)Z

    move-result v3

    .line 105
    .local v3, "isChanged":Z
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getDeletedMails(J)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->deletedMails(Ljava/util/List;)Z

    move-result v4

    .line 107
    .local v4, "isDeleted":Z
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyDataChanged()V

    .line 110
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAddedMails(J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->downloadMailContent(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "folderId":J
    .end local v2    # "isAdded":Z
    .end local v3    # "isChanged":Z
    .end local v4    # "isDeleted":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public isConversationMode()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode:Z

    return v0
.end method

.method public declared-synchronized load()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " do not support current method, pleas invoke switchToFolder for load data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadMailsWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 897
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "\u6307\u5b9a\u7684tag\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 901
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mIsLoadTagMails:Z

    .line 902
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->clearMailDatas(Z)V

    .line 903
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 904
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    if-eqz v0, :cond_2

    .line 905
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 907
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 908
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->checkAddDivider(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 909
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->handleDataSorting(Ljava/util/List;)V

    .line 914
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->notifyLoadSuccess()V

    .line 915
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    return-object v2
.end method

.method public loadMoreHistoryMail(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1309
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 1336
    :goto_0
    return-void

    .line 1313
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer$3;-><init>(Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;Lxv;)V

    goto :goto_0
.end method

.method public varargs declared-synchronized moveMailToNewFolder(ZLcom/alibaba/alimei/sdk/model/FolderModel;Lxv;[Ljava/lang/String;)V
    .locals 6
    .param p1, "withRelationConversations"    # Z
    .param p2, "targetFolder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1244
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1245
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1246
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1248
    .local v1, "targetIds":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1250
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->handleDeleteFromCache([Ljava/lang/String;)V

    .line 1253
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-interface {v2, v4, v5, v3, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->moveMailToNewFolder(JLxv;[Ljava/lang/String;)V

    .line 1257
    .end local v1    # "targetIds":[Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 1258
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p3, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    :cond_1
    monitor-exit p0

    return-void

    .line 1244
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized notifyDataChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mUnreadMailList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->handleDataSorting(Ljava/util/List;)V

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isUnreadMailListChanged:Z

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mListDatas:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->handleDataSorting(Ljava/util/List;)V

    .line 126
    invoke-super {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mContentObserver:Lxm;

    if-eqz v0, :cond_0

    .line 613
    const-class v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mContentObserver:Lxm;

    invoke-static {v0, v1}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 614
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mContentObserver:Lxm;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_1

    .line 617
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mServerListener:Lxv;

    if-eqz v0, :cond_2

    .line 621
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mServerListener:Lxv;

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mLocalDataListener:Lxv;

    if-eqz v0, :cond_3

    .line 624
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mLocalDataListener:Lxv;

    .line 626
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->clearAllMailDatas(Z)V

    .line 627
    return-void
.end method

.method public queryLocalMail(ILxv;)V
    .locals 1
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
    .line 1289
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryLocalMails(ILxv;)V

    .line 1290
    return-void
.end method

.method public refreshMail()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncNewMails(JI)V

    goto :goto_0
.end method

.method public varargs removeMailTag(ZLjava/lang/String;Lxv;[Ljava/lang/String;)V
    .locals 5
    .param p1, "withRelationConversations"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 943
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, "targetIds":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_2

    .line 945
    :cond_0
    if-eqz p3, :cond_1

    .line 946
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 959
    :cond_1
    :goto_0
    return-void

    .line 950
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 951
    .local v0, "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 952
    .local v1, "serverId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 955
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, p2, v4}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->removeMailTags(Ljava/util/List;Ljava/lang/String;Lxv;)V

    .line 956
    if-eqz p3, :cond_1

    .line 957
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSessionFilter(Lcom/alibaba/alimei/sdk/displayer/filter/ISessionFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/alibaba/alimei/sdk/displayer/filter/ISessionFilter;

    .prologue
    .line 95
    return-void
.end method

.method public declared-synchronized switchToFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;Z)V
    .locals 4
    .param p1, "folder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p2, "isConversationMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 739
    monitor-enter p0

    if-nez p1, :cond_0

    .line 740
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid folder!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 744
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode:Z

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mIsLoadTagMails:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 771
    :goto_0
    monitor-exit p0

    return-void

    .line 754
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mIsLoadTagMails:Z

    .line 757
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->clearAllMailDatas(Z)V

    .line 761
    :cond_2
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 762
    iput-boolean p2, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->isConversationMode:Z

    .line 765
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 766
    sget-object v0, Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mComparator:Ljava/util/Comparator;

    .line 770
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->executeLoad()V

    goto :goto_0

    .line 768
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;->mComparator:Ljava/util/Comparator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
