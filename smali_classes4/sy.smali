.class public final Lsy;
.super Lyq;
.source "SyncContactsTask.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field private final c:Z

.field private d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "forceSyncFull"    # Z

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lyq;-><init>()V

    .line 51
    iput-object v1, p0, Lsy;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 56
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lsy;->e:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lsy;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lsy;->g:I

    .line 67
    iput-object p1, p0, Lsy;->a:Ljava/lang/String;

    .line 68
    iput-boolean p2, p0, Lsy;->c:Z

    .line 69
    return-void
.end method

.method static synthetic a(Lsy;)I
    .locals 1
    .param p0, "x0"    # Lsy;

    .prologue
    .line 36
    iget v0, p0, Lsy;->g:I

    return v0
.end method

.method static synthetic a(Lsy;I)I
    .locals 0
    .param p0, "x0"    # Lsy;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lsy;->g:I

    return p1
.end method

.method static synthetic a(Lsy;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lsy;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 36
    iput-object p1, p0, Lsy;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic a(Lsy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lsy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lsy;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/alibaba/alimei/restfulapi/service/RpcContactService;)V
    .locals 3
    .param p1, "service"    # Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lsy;->e:Ljava/lang/String;

    const/16 v1, 0x64

    iget-object v2, p0, Lsy;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;->syncContacts(Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 197
    return-void
.end method

.method static synthetic a(Lsy;Lcom/alibaba/alimei/restfulapi/service/RpcContactService;)V
    .locals 0
    .param p0, "x0"    # Lsy;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lsy;->a(Lcom/alibaba/alimei/restfulapi/service/RpcContactService;)V

    return-void
.end method

.method static synthetic a(Lsy;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;)Z
    .locals 2
    .param p0, "x0"    # Lsy;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;

    .prologue
    .line 36
    .line 2179
    iget v0, p0, Lsy;->g:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 2183
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;->getCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 2184
    iget-object v0, p0, Lsy;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2185
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsy;->e:Ljava/lang/String;

    .line 2186
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2189
    :cond_0
    const/4 v0, 0x0

    .line 36
    goto :goto_0
.end method

.method static synthetic b(Lsy;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 1
    .param p0, "x0"    # Lsy;

    .prologue
    .line 36
    iget-object v0, p0, Lsy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    return-object v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string/jumbo v0, "SyncContactsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 73
    new-instance v9, Lyc;

    const-string/jumbo v0, "basic_SyncContacts"

    iget-object v1, p0, Lsy;->a:Ljava/lang/String;

    invoke-direct {v9, v0, v1, v10}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .local v9, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v8

    .line 76
    .local v8, "eventCenter":Lya;
    invoke-interface {v8, v9}, Lya;->a(Lyc;)V

    .line 79
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v1, p0, Lsy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iput-object v0, p0, Lsy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 80
    iget-object v0, p0, Lsy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, v9, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 82
    invoke-interface {v8, v9}, Lya;->a(Lyc;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sync contact for a not exist account: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    .line 165
    :goto_0
    return v11

    .line 87
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    .line 88
    .local v3, "boxdatsource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-static {}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;->getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    move-result-object v2

    .line 89
    .local v2, "datasource":Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
    iget-object v0, p0, Lsy;->a:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getContactService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    move-result-object v5

    .line 92
    .local v5, "service":Lcom/alibaba/alimei/restfulapi/service/RpcContactService;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v6, "contactIdKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v0, p0, Lsy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    invoke-interface {v2, v0, v1, v6}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->queryDirtyContacts(JLjava/util/HashMap;)Ljava/util/List;

    move-result-object v7

    .line 94
    .local v7, "dirtyContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1200
    new-instance v0, Lsy$2;

    invoke-direct {v0, p0, v6, v2}, Lsy$2;-><init>(Lsy;Ljava/util/HashMap;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;)V

    invoke-interface {v5, v7, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;->syncUpdateContacts(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 99
    :cond_1
    iget-object v0, p0, Lsy;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    const/16 v10, 0x47

    invoke-interface {v3, v0, v1, v10}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v4

    .line 100
    .local v4, "contactMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-boolean v0, p0, Lsy;->c:Z

    if-nez v0, :cond_2

    .line 103
    iget-object v0, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    iput-object v0, p0, Lsy;->e:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lsy;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsy;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 105
    :cond_2
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lsy;->e:Ljava/lang/String;

    .line 109
    :cond_3
    new-instance v0, Lsy$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lsy$1;-><init>(Lsy;Lcom/alibaba/alimei/contact/datasource/ContactDatasource;Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/restfulapi/service/RpcContactService;)V

    iput-object v0, p0, Lsy;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 149
    invoke-direct {p0, v5}, Lsy;->a(Lcom/alibaba/alimei/restfulapi/service/RpcContactService;)V

    .line 152
    iget v0, p0, Lsy;->g:I

    if-gtz v0, :cond_4

    .line 156
    iget-object v0, p0, Lsy;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_4

    .line 157
    const/4 v0, 0x2

    iput v0, v9, Lyc;->c:I

    .line 158
    iget-object v0, p0, Lsy;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v0, v9, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 159
    invoke-interface {v8, v9}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 161
    :cond_4
    iput v11, v9, Lyc;->c:I

    .line 162
    invoke-interface {v8, v9}, Lya;->a(Lyc;)V

    goto :goto_0
.end method
