.class Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;
.super Ljava/lang/Object;
.source "ModifyHandler.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleClearSearchHistory(Lcom/alibaba/alimei/mail/operation/OperationData;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

.field final synthetic val$data:Lcom/alibaba/alimei/mail/operation/OperationData;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;->this$0:Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 215
    const-string/jumbo v0, "ModifyHandler"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;->this$0:Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->access$000(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Z)V

    .line 217
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 210
    iget-object v1, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;->this$0:Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->access$000(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Z)V

    .line 211
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method