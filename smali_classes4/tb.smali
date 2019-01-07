.class public final Ltb;
.super Lyq;
.source "UpdateBlackContactsTask.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lyq;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ltb;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 38
    iput p1, p0, Ltb;->b:I

    .line 39
    iput-object p2, p0, Ltb;->a:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic a(Ltb;)I
    .locals 1
    .param p0, "x0"    # Ltb;

    .prologue
    .line 29
    iget v0, p0, Ltb;->b:I

    return v0
.end method

.method static synthetic a(Ltb;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Ltb;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 29
    iput-object p1, p0, Ltb;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "UpdateBlackContactsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "blackContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;>;"
    iget-object v4, p0, Ltb;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ltb;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 46
    iget-object v4, p0, Ltb;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "email":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;-><init>()V

    .line 48
    .local v1, "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    iget v5, p0, Ltb;->b:I

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setAction(I)V

    .line 49
    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setItemId(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setEmail(Ljava/lang/String;)V

    .line 51
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setFolderType(I)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1070
    .end local v1    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    .end local v2    # "email":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;->getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    move-result-object v4

    .line 1071
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getContactService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    move-result-object v5

    .line 1072
    new-instance v6, Ltb$1;

    invoke-direct {v6, p0, v4}, Ltb$1;-><init>(Ltb;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;)V

    invoke-interface {v5, v0, v6}, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;->syncUpdateContacts(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 57
    :cond_1
    iget-object v4, p0, Ltb;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v4, :cond_2

    .line 58
    const/4 v3, 0x1

    .line 60
    :cond_2
    return v3
.end method
