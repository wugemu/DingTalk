.class Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$3;
.super Ljava/lang/Object;
.source "QueryHandler.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleTag(Lcom/alibaba/alimei/mail/operation/OperationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

.field final synthetic val$data:Lcom/alibaba/alimei/mail/operation/OperationData;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$3;->this$0:Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$3;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 260
    const-string/jumbo v0, "QueryHandler"

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 253
    .local p1, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/operation/model/result/OpsTagResultModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/operation/model/result/OpsTagResultModel;-><init>()V

    .line 254
    .local v0, "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsTagResultModel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/operation/model/result/OpsTagResultModel;->setResult(Ljava/util/List;)V

    .line 255
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$3;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {v0}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V

    .line 256
    return-void
.end method
