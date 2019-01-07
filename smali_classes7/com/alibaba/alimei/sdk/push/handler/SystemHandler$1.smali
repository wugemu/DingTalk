.class Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;
.super Ljava/lang/Object;
.source "SystemHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;->handleLogUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;->this$0:Lcom/alibaba/alimei/sdk/push/handler/SystemHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    invoke-static {}, Lyz;->b()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "logPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, "zipFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    new-instance v0, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1$1;-><init>(Lcom/alibaba/alimei/sdk/push/handler/SystemHandler$1;)V

    .line 91
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;>;"
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v2

    .line 92
    .local v2, "service":Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;
    const-string/jumbo v4, "Server push upload"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->feedback(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 96
    .end local v0    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;>;"
    .end local v2    # "service":Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string/jumbo v4, "zip file not exists, cannot feedback"

    invoke-static {v4}, Lzb;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
