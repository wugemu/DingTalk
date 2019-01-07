.class public final Lte;
.super Lyq;
.source "UploadAvatarTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "avatarUrl"    # Ljava/lang/String;
    .param p2, "avatarSize"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lyq;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lte;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 31
    iput p2, p0, Lte;->b:I

    .line 32
    iput-object p1, p0, Lte;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a(Lte;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lte;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 22
    iput-object p1, p0, Lte;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "UploadAvatarTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v0

    .line 38
    .local v0, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lte;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lte;->b:I

    new-instance v4, Lte$1;

    invoke-direct {v4, p0}, Lte$1;-><init>(Lte;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->uploadAvatar(Ljava/io/File;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 71
    iget-object v2, p0, Lte;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v2, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 74
    :cond_0
    return v1
.end method
