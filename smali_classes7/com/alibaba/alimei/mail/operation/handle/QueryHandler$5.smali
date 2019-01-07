.class Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;
.super Ljava/lang/Object;
.source "QueryHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->handleSetting(Lcom/alibaba/alimei/mail/operation/OperationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

.field final synthetic val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

.field final synthetic val$opsSettingModel:Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->this$0:Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->val$opsSettingModel:Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 360
    const-string/jumbo v0, "QueryHandler"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getConversation fail code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->this$0:Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->val$opsSettingModel:Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->access$000(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;)V

    .line 362
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "i"    # I

    .prologue
    .line 367
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->val$opsSettingModel:Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;->isMailTop:Z

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->this$0:Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->val$opsSettingModel:Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;->access$000(Lcom/alibaba/alimei/mail/operation/handle/QueryHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Lcom/alibaba/alimei/mail/operation/model/OpsSettingModel;)V

    .line 356
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/QueryHandler$5;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
