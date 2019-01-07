.class Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$4;
.super Ljava/lang/Object;
.source "QueryHandler.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleUserprofileFromCoreService(Lcom/alibaba/alimei/mail/operation/OperationData;)V
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
        "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
        ">;"
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
    .line 290
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$4;->this$0:Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$4;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 300
    const-string/jumbo v0, "QueryHandler"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 301
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/contact/model/UserSelfContactModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    new-instance v0, Lcom/alibaba/alimei/mail/operation/model/result/OpsCSUserProfileResultModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/operation/model/result/OpsCSUserProfileResultModel;-><init>()V

    .line 294
    .local v0, "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsCSUserProfileResultModel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/operation/model/result/OpsCSUserProfileResultModel;->setResult(Lcom/alibaba/alimei/contact/model/UserSelfContactModel;)V

    .line 295
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$4;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {v0}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 290
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$4;->onSuccess(Lcom/alibaba/alimei/contact/model/UserSelfContactModel;)V

    return-void
.end method
