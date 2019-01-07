.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;
.super Ljava/lang/Object;
.source "MailAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->queryMailParticipantsInMaillist(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/api/ApiResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$mailServerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->val$mailServerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMailParticipants(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V
    .locals 6
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 181
    .local p3, "addressList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v3, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;

    .line 187
    .local v1, "mailItem":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;
    if-eqz v1, :cond_2

    .line 190
    iget-object v0, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;->email:Ljava/lang/String;

    .line 191
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 192
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iput-object v0, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 194
    iget-object v5, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 199
    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 202
    :cond_3
    iput p2, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 203
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->val$mailServerId:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->mailServerId:Ljava/lang/String;

    .line 204
    iput-object p1, v2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    .line 205
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "mailItem":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;
    .end local v2    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_4
    invoke-interface {p4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleReadResult(Ljava/util/Map;ILcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;)V
    .locals 2
    .param p2, "type"    # I
    .param p3, "singleResult"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;I",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 168
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string/jumbo v0, "sent"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getSent()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->getMailParticipants(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 173
    const-string/jumbo v0, "sending"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getSending()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->getMailParticipants(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 174
    const-string/jumbo v0, "read"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getRead()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->getMailParticipants(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 175
    const-string/jumbo v0, "unread"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getUnread()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->getMailParticipants(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 176
    const-string/jumbo v0, "unknown"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getUnknown()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->getMailParticipants(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 177
    const-string/jumbo v0, "fail"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getFail()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->getMailParticipants(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 165
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    .prologue
    .line 155
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 160
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V
    .locals 4
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v0, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->getMaillist()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->handleReadResult(Ljava/util/Map;ILcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->getOutdomain()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->handleReadResult(Ljava/util/Map;ILcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;)V

    .line 148
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->getEmail()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->handleReadResult(Ljava/util/Map;ILcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v0, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$4;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V

    return-void
.end method
