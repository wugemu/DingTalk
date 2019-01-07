.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "ContactApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->searchContactsFromServer(Ljava/lang/String;IILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/contact/model/SearchContactResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->d:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->a:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->b:I

    iput p5, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->c:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2$1;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 323
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/SearchContactResult;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "execute contact search from server : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    iget-object v1, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getContactService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->a:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->b:I

    iget v4, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;->c:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;->searchContacts(Ljava/lang/String;IILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 325
    return-void
.end method
