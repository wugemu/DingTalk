.class public Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
.source "MailServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcMailService;


# static fields
.field private static final EndTimeParam:Ljava/lang/String; = "endTime"

.field private static final MailFilterTypeParam:Ljava/lang/String; = "mailFilterType"

.field private static final ReadParam:Ljava/lang/String; = "read"

.field private static final ReturnStructure:Ljava/lang/String; = "returnStructure"

.field private static final StartTimeParam:Ljava/lang/String; = "startTime"

.field private static final TagParam:Ljava/lang/String; = "tag"

.field private static final UnreadParam:Ljava/lang/String; = "unread"


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .param p2, "asynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;ZLjava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public addOrRemoveMailTags(Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "addTagMails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "removeTagMails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    const/4 v6, 0x0

    .line 556
    if-nez p1, :cond_0

    move v0, v6

    .line 557
    .local v0, "count":I
    :goto_0
    if-nez p2, :cond_1

    :goto_1
    add-int/2addr v0, v6

    .line 559
    if-gtz v0, :cond_2

    .line 560
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid params"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 556
    .end local v0    # "count":I
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    .line 557
    .restart local v0    # "count":I
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    goto :goto_1

    .line 563
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p1, :cond_3

    .line 565
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 566
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 567
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 568
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 569
    .local v3, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 570
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTags(Ljava/util/List;)V

    .line 571
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 575
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v3    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    :cond_3
    if-eqz p2, :cond_4

    .line 576
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 577
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 578
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 579
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 580
    .restart local v3    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 581
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTags(Ljava/util/List;)V

    .line 582
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 587
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v3    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    :cond_4
    new-instance v5, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 588
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v5, v4}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 589
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v6

    return-object v6
.end method

.method public addTag(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 596
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 597
    .local v1, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 598
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 599
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTags(Ljava/util/List;)V

    .line 600
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 604
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 605
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public changeMailFlag(Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 314
    .local p1, "mailFlags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    .line 315
    .local v6, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v3, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 317
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 319
    .local v5, "serverId":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v0, "flagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v2, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 323
    .local v2, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 324
    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setFlagList(Ljava/util/List;)V

    .line 326
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    .end local v0    # "flagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    .end local v5    # "serverId":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 330
    .local v4, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v4, v3}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 331
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v7

    new-instance v8, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;

    invoke-direct {v8}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;-><init>()V

    invoke-interface {v7, v4, v8, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v7

    return-object v7
.end method

.method public changeMailReadStatus(Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 289
    .local p1, "mailReadStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    .line 290
    .local v5, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .local v2, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 292
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 294
    .local v4, "serverId":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 295
    .local v1, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 296
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 297
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setRead(Z)V

    .line 298
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    .end local v1    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    .end local v4    # "serverId":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 301
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;

    invoke-direct {v7}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;-><init>()V

    invoke-interface {v6, v3, v7, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v6

    return-object v6
.end method

.method public deleteMail(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 354
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 355
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 356
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .local v1, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 362
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 363
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;-><init>()V

    invoke-interface {v3, v2, v4, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public deleteMails(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 338
    .local p1, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 339
    .local v4, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v1, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    .local v3, "serverId":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 342
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 343
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v0    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    .end local v3    # "serverId":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 347
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 348
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v5

    new-instance v6, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;

    invoke-direct {v6}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;-><init>()V

    invoke-interface {v5, v2, v6, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v5

    return-object v5
.end method

.method public fetchMailDetail(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->fetchMailDetail(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public fetchMailDetail(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "isOnlyBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 412
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;-><init>(Ljava/lang/String;Z)V

    .line 413
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 415
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_FETCH_EMAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 417
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public fetchMailDetail(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "isOnlyBody"    # Z
    .param p3, "fromEmailAddress"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 424
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;-><init>(Ljava/lang/String;Z)V

    .line 425
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;
    invoke-virtual {v0, p3}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->setFrom(Ljava/lang/String;)V

    .line 426
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    invoke-virtual {v0, p4}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->setMessageId(Ljava/lang/String;)V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 431
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_FETCH_EMAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 433
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, v2, p5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public fetchMailDetail(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "isOnlyBody"    # Z
    .param p3, "fromEmailAddress"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "needTag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 440
    .local p6, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;-><init>(Ljava/lang/String;Z)V

    .line 441
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;
    invoke-virtual {v0, p3}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->setFrom(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p5}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->setNeedTag(Z)V

    .line 443
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    invoke-virtual {v0, p4}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->setMessageId(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 448
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_FETCH_EMAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 450
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, v2, p6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public getCareOrderResult(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 765
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;>;"
    const-string/jumbo v0, "{}"

    .line 766
    .local v0, "datajson":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 767
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_FOLDER_AND_TAG_CARE_ORDER:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 769
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v3, Lcom/alibaba/alimei/restfulapi/parser/CareOrderParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/CareOrderParser;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 770
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public getFoldersPushSetting(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Folder;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 685
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Folder;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/GetPushFoldersRequestData;

    invoke-direct {v2, p1}, Lcom/alibaba/alimei/restfulapi/request/data/GetPushFoldersRequestData;-><init>(Ljava/util/List;)V

    .line 686
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/GetPushFoldersRequestData;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/request/data/GetPushFoldersRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_GET_FOLDERS_PUSH_SETTING:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 690
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public getGroupEmailChildren(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 651
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;

    invoke-direct {v2, p1, p2}, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;-><init>(Ljava/lang/String;I)V

    .line 652
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_MAILGROUP_MEMBERS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 656
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public getMailInfoByMail(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 705
    .local p1, "mailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/MailInfoRequestData;

    invoke-direct {v2, p1}, Lcom/alibaba/alimei/restfulapi/request/data/MailInfoRequestData;-><init>(Ljava/util/List;)V

    .line 706
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/MailInfoRequestData;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/request/data/MailInfoRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    .line 709
    .local v3, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_GET_MAILINFO_BY_MAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 711
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v4, Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 712
    invoke-virtual {v1, v3, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public moveMailIntoAnotherFolder(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "targetFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 389
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 390
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 391
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setFolderId(Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    .local v1, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 398
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;-><init>()V

    invoke-interface {v3, v2, v4, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public moveMailsIntoAnotherFolder(Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 369
    .local p1, "mailServerdAndTargetFolderIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    .line 370
    .local v5, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v2, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 374
    .local v4, "serverId":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 375
    .local v6, "targetFolderId":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 376
    .local v1, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 377
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setFolderId(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v1    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    .end local v4    # "serverId":Ljava/lang/String;
    .end local v6    # "targetFolderId":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 382
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 383
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v7

    new-instance v8, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;

    invoke-direct {v8}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;-><init>()V

    invoke-interface {v7, v3, v8, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v7

    return-object v7
.end method

.method public queryAllRevokeMailStatus(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;",
            ">;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 755
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;>;>;"
    const-string/jumbo v0, "{}"

    .line 756
    .local v0, "datajson":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 757
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_QUERY_ALL_REVOKE_STATUS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 759
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v3, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 760
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public queryMailReadlist(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "maillist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 537
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{mailId:\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    if-eqz p2, :cond_0

    .line 541
    const-string/jumbo v4, "\",maillist:\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_0
    const-string/jumbo v4, "\"}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    .line 548
    .local v3, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SENT_STATUS_DETAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 550
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, v3, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public queryRevokeMailStatus(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 741
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "{mailId:\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string/jumbo v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v2

    .line 747
    .local v2, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_QUERY_REVOKE_STATUS:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 749
    .local v0, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v3, Lcom/alibaba/alimei/restfulapi/parser/RevokeMailQueryParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/RevokeMailQueryParser;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 750
    invoke-virtual {v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public removeTag(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 612
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v1, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 614
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 615
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTags(Ljava/util/List;)V

    .line 616
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 620
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 621
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public reportOrTrustSpamMail(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "moveFolderId"    # Ljava/lang/String;
    .param p3, "report"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 674
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;

    invoke-direct {v2, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 675
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    .line 677
    .local v3, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_REPORT_SPAM_MAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 679
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v4, Lcom/alibaba/alimei/restfulapi/parser/ReportSpamParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/ReportSpamParser;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 680
    invoke-virtual {v1, v3, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public reportSpam(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 661
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{mailId:\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string/jumbo v4, "\"}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    .line 667
    .local v3, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_REPORT_SPAM:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 669
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, v3, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public revokeMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "senderMail"    # Ljava/lang/String;
    .param p3, "mailStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 717
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 718
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "revokeMail serverId can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 721
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 722
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "revokeMail senderMail can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 725
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 726
    const-string/jumbo p3, "UNREAD"

    .line 729
    :cond_2
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;

    invoke-direct {v2, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    .line 733
    .local v3, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_REVOKE_MAIL:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 735
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    sget-object v4, Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V

    .line 736
    invoke-virtual {v1, v3, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public saveMailDraft(Lcom/alibaba/alimei/restfulapi/data/Mail;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 5
    .param p1, "draft"    # Lcom/alibaba/alimei/restfulapi/data/Mail;
    .param p2, "isNewDraft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            "Z",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;>;"
    const/4 v4, 0x1

    .line 267
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 268
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 274
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v1, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 278
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v3

    new-instance v4, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;-><init>()V

    invoke-interface {v3, v2, v4, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3

    .line 271
    .end local v1    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .end local v2    # "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    goto :goto_0
.end method

.method public searchMail(Ljava/lang/String;IIILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .param p3, "length"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;>;"
    const/4 v7, 0x1

    .line 463
    new-instance v3, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;

    invoke-direct {v3, v7}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;-><init>(I)V

    .line 464
    .local v3, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;
    invoke-virtual {v3, p3}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setLength(I)V

    .line 465
    invoke-virtual {v3, p4}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setOffset(I)V

    .line 466
    invoke-virtual {v3, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setKeyword(Ljava/lang/String;)V

    .line 467
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 468
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "mailFilterType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {v3, v1}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setExtend(Ljava/util/Map;)V

    .line 470
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 473
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SEARCH:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 474
    .local v2, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v4

    invoke-virtual {v2, v4, p5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public searchMail(Ljava/lang/String;IIILjava/lang/String;IJJLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 11
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .param p3, "length"    # I
    .param p4, "offset"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "returnStructure"    # I
    .param p7, "startTime"    # J
    .param p9, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "IJJ",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 481
    .local p11, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    new-instance v5, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;-><init>(I)V

    .line 482
    .local v5, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;
    invoke-virtual {v5, p3}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setLength(I)V

    .line 483
    invoke-virtual {v5, p4}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setOffset(I)V

    .line 484
    invoke-virtual {v5, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setKeyword(Ljava/lang/String;)V

    .line 485
    new-instance v3, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 486
    .local v3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "mailFilterType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string/jumbo v6, "unread"

    move-object/from16 v0, p5

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 488
    const-string/jumbo v6, "read"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_0
    :goto_0
    if-eqz p6, :cond_1

    const/4 v6, 0x1

    move/from16 v0, p6

    if-ne v0, v6, :cond_2

    .line 493
    :cond_1
    const-string/jumbo v6, "returnStructure"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-lez v6, :cond_3

    .line 496
    const-string/jumbo v6, "startTime"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, p9, v6

    if-lez v6, :cond_4

    .line 499
    const-string/jumbo v6, "endTime"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_4
    invoke-virtual {v5, v3}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->setExtend(Ljava/util/Map;)V

    .line 502
    invoke-virtual {v5}, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "data":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v6

    .line 505
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v7

    sget-object v8, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SEARCH:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v9, 0x1

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 506
    .local v4, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v6

    move-object/from16 v0, p11

    invoke-virtual {v4, v6, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v6

    return-object v6

    .line 489
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    :cond_5
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 490
    const-string/jumbo v6, "tag"

    move-object/from16 v0, p5

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public searchMail(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 456
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;>;"
    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->searchMail(Ljava/lang/String;IIILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public setFoldersPushSetting(Ljava/util/List;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p2, "accountSwitch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;",
            ">;Z",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 695
    .local p1, "folderSettings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;

    invoke-direct {v2, p1, p2}, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;-><init>(Ljava/util/List;Z)V

    .line 696
    .local v2, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v4

    sget-object v5, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SET_FOLDERS_PUSH_SETTING:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 700
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    return-object v3
.end method

.method public syncMail(ILjava/lang/String;ILjava/lang/String;IIILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "filterType"    # I
    .param p2, "folderServerId"    # Ljava/lang/String;
    .param p3, "folderServerType"    # I
    .param p4, "syncKey"    # Ljava/lang/String;
    .param p5, "windowSize"    # I
    .param p6, "support"    # I
    .param p7, "summarySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 112
    .local p8, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->syncMail(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public syncMail(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "filterType"    # I
    .param p2, "folderServerId"    # Ljava/lang/String;
    .param p3, "folderServerType"    # I
    .param p4, "syncKey"    # Ljava/lang/String;
    .param p5, "windowSize"    # I
    .param p6, "support"    # I
    .param p7, "summarySize"    # I
    .param p8, "getSentStatus"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/Boolean;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    .local p9, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 149
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 150
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderId(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p3}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 152
    invoke-virtual {v0, p4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 153
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setOldestItemId(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSummarySize(I)V

    .line 155
    invoke-virtual {v0, p6}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSupport(I)V

    .line 156
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFilterType(I)V

    .line 157
    invoke-virtual {v0, p8}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setGetSentStatus(Ljava/lang/Boolean;)V

    .line 159
    const/4 v3, 0x1

    .line 161
    .local v3, "isSetWindowSize":Z
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailSyncInitCount()I

    move-result v2

    .line 162
    .local v2, "initTotal":I
    if-lez v2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "0"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    :cond_0
    const/4 v3, 0x0

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setInitTotal(Ljava/lang/Integer;)V

    .line 166
    :cond_1
    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {v0, p5}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 169
    :cond_2
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    .line 171
    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;-><init>()V

    .line 172
    invoke-interface {v4, v1, v5, p9}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public syncMailReadlist(Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
            ">;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 512
    .local p1, "syncKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 514
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    if-eqz p1, :cond_0

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 515
    :cond_0
    const/4 v2, 0x0

    .line 516
    .local v2, "pos":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 517
    .local v3, "serverId":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 518
    .local v4, "syncKey":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 519
    if-nez v4, :cond_1

    .line 520
    const-string/jumbo v4, ""

    .line 522
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 523
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderId(Ljava/lang/String;)V

    .line 524
    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 525
    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKeyWithoutDefaultValue(Ljava/lang/String;)V

    .line 526
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setOldestItemId(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    goto :goto_0

    .line 529
    .end local v0    # "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    .end local v3    # "serverId":Ljava/lang/String;
    .end local v4    # "syncKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v5

    new-instance v6, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser;

    invoke-direct {v6}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser;-><init>()V

    invoke-interface {v5, v1, v6, p3}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v5

    return-object v5
.end method

.method public syncMailUpdate(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 259
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;-><init>()V

    .line 260
    .local v0, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->setMails(Ljava/util/List;)V

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;-><init>()V

    invoke-interface {v1, v0, v2, p2}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncUpdateItems(Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v1

    return-object v1
.end method

.method public syncMoreMails(Ljava/lang/String;ILjava/lang/String;IIILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .param p1, "folderServerId"    # Ljava/lang/String;
    .param p2, "folderServerType"    # I
    .param p3, "oldestItemId"    # Ljava/lang/String;
    .param p4, "windowSize"    # I
    .param p5, "support"    # I
    .param p6, "summarySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    .local p7, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->syncMoreMails(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public syncMoreMails(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 4
    .param p1, "folderServerId"    # Ljava/lang/String;
    .param p2, "folderServerType"    # I
    .param p3, "oldestItemId"    # Ljava/lang/String;
    .param p4, "windowSize"    # I
    .param p5, "support"    # I
    .param p6, "summarySize"    # I
    .param p7, "getSentStatus"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/Boolean;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 214
    .local p8, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 215
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 216
    .local v0, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderId(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p3}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setOldestItemId(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p6}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSummarySize(I)V

    .line 221
    invoke-virtual {v0, p5}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSupport(I)V

    .line 222
    invoke-virtual {v0, p4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 223
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFilterType(I)V

    .line 224
    invoke-virtual {v0, p7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setGetSentStatus(Ljava/lang/Boolean;)V

    .line 225
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;-><init>()V

    invoke-interface {v2, v1, v3, p8}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v2

    return-object v2
.end method

.method public syncMultipleMail(I[Ljava/lang/String;[I[Ljava/lang/String;IIILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "filterType"    # I
    .param p2, "folderServerId"    # [Ljava/lang/String;
    .param p3, "folderServerType"    # [I
    .param p4, "syncKey"    # [Ljava/lang/String;
    .param p5, "windowSize"    # I
    .param p6, "support"    # I
    .param p7, "summarySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "[I[",
            "Ljava/lang/String;",
            "III",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<[",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 122
    .local p8, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->syncMultipleMail(I[Ljava/lang/String;[I[Ljava/lang/String;III[Ljava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public syncMultipleMail(I[Ljava/lang/String;[I[Ljava/lang/String;III[Ljava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .param p1, "filterType"    # I
    .param p2, "folderServerId"    # [Ljava/lang/String;
    .param p3, "folderServerType"    # [I
    .param p4, "syncKey"    # [Ljava/lang/String;
    .param p5, "windowSize"    # I
    .param p6, "support"    # I
    .param p7, "summarySize"    # I
    .param p8, "getSentStatus"    # [Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "[I[",
            "Ljava/lang/String;",
            "III[",
            "Ljava/lang/Boolean;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<[",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 179
    .local p9, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    new-instance v3, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 180
    .local v3, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    array-length v2, p2

    .line 181
    .local v2, "count":I
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailSyncInitCount()I

    move-result v5

    .line 182
    .local v5, "initTotal":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 183
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 184
    .local v1, "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    aget-object v7, p2, v4

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderId(Ljava/lang/String;)V

    .line 185
    aget v7, p3, v4

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 186
    aget-object v7, p4, v4

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 187
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setOldestItemId(Ljava/lang/String;)V

    .line 188
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSummarySize(I)V

    .line 189
    invoke-virtual {v1, p6}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSupport(I)V

    .line 190
    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFilterType(I)V

    .line 191
    invoke-virtual {v3, v1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 192
    const/4 v6, 0x1

    .line 194
    .local v6, "isSetWindowSize":Z
    if-lez v5, :cond_1

    aget-object v7, p4, v4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "0"

    aget-object v8, p4, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    :cond_0
    const/4 v6, 0x0

    .line 196
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setInitTotal(Ljava/lang/Integer;)V

    .line 199
    :cond_1
    if-eqz v6, :cond_2

    .line 200
    invoke-virtual {v1, p5}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 202
    :cond_2
    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    array-length v7, v0

    if-le v7, v4, :cond_3

    .line 203
    aget-object v7, p8, v4

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setGetSentStatus(Ljava/lang/Boolean;)V

    .line 182
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "baseData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    .end local v6    # "isSetWindowSize":Z
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v8

    .line 206
    invoke-static {v7, v8}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v7

    new-instance v8, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMultipleMailResponseParser;

    invoke-direct {v8}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMultipleMailResponseParser;-><init>()V

    .line 207
    move-object/from16 v0, p9

    invoke-interface {v7, v3, v8, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v7

    return-object v7
.end method

.method public syncMultipleMoreMails([Ljava/lang/String;[I[Ljava/lang/String;IIILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .param p1, "folderServerIds"    # [Ljava/lang/String;
    .param p2, "folderServerTypes"    # [I
    .param p3, "oldestItemIds"    # [Ljava/lang/String;
    .param p4, "windowSize"    # I
    .param p5, "support"    # I
    .param p6, "summarySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I[",
            "Ljava/lang/String;",
            "III",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<[",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    .local p7, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->syncMultipleMoreMails([Ljava/lang/String;[I[Ljava/lang/String;III[Ljava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    return-object v0
.end method

.method public syncMultipleMoreMails([Ljava/lang/String;[I[Ljava/lang/String;III[Ljava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "folderServerIds"    # [Ljava/lang/String;
    .param p2, "folderServerTypes"    # [I
    .param p3, "oldestItemIds"    # [Ljava/lang/String;
    .param p4, "windowSize"    # I
    .param p5, "support"    # I
    .param p6, "summarySize"    # I
    .param p7, "getSentStatus"    # [Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I[",
            "Ljava/lang/String;",
            "III[",
            "Ljava/lang/Boolean;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<[",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 233
    .local p8, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    array-length v3, p1

    .line 234
    .local v3, "length":I
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;-><init>()V

    .line 235
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 236
    aget-object v4, p3, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>()V

    .line 240
    .local v2, "itemData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderId(Ljava/lang/String;)V

    .line 241
    aget v4, p2, v1

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFolderType(I)V

    .line 242
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 243
    aget-object v4, p3, v1

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setOldestItemId(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2, p6}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSummarySize(I)V

    .line 245
    invoke-virtual {v2, p5}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSupport(I)V

    .line 246
    invoke-virtual {v2, p4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setWindowSize(I)V

    .line 247
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setFilterType(I)V

    .line 248
    if-eqz p7, :cond_0

    array-length v4, p7

    if-le v4, v1, :cond_0

    .line 249
    aget-object v4, p7, v1

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setGetSentStatus(Ljava/lang/Boolean;)V

    .line 251
    :cond_0
    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V

    .line 235
    .end local v2    # "itemData":Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMultipleMailResponseParser;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMultipleMailResponseParser;-><init>()V

    invoke-interface {v4, v0, v5, p8}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncItems(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method

.method public tokenMailReadStatus(Ljava/lang/String;ZILjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "read"    # Z
    .param p3, "size"    # I
    .param p4, "last"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 627
    .local p5, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{folderId:\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v4, "\","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string/jumbo v4, "read:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 633
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string/jumbo v4, "size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string/jumbo v4, "last:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "jsonData":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccessTokenAndCheckValid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequestsBuilder;->buildGeneralDataServiceRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-result-object v3

    .line 644
    .local v3, "serviceRequest":Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;->isAsynchronousService()Z

    move-result v5

    sget-object v6, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_TOKEN_READ:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;-><init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V

    .line 646
    .local v1, "proxy":Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;
    invoke-virtual {v1, v3, p5}, Lcom/alibaba/alimei/restfulapi/spi/http/ServiceClientProxy;->doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v4

    return-object v4
.end method
