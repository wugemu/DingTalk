.class Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;
.super Ljava/lang/Object;
.source "ModifyHandler.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleRemoveAccount(Lcom/alibaba/alimei/mail/operation/OperationData;)V
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
        "Lxv$a;",
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
    .line 134
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;->this$0:Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

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
    .line 142
    const-string/jumbo v0, "ModifyHandler"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;->this$0:Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->access$000(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Z)V

    .line 144
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p1, Lxv$a;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;->onSuccess(Lxv$a;)V

    return-void
.end method

.method public onSuccess(Lxv$a;)V
    .locals 3
    .param p1, "result"    # Lxv$a;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    iget-object v1, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;->this$0:Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;->val$data:Lcom/alibaba/alimei/mail/operation/OperationData;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->access$000(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Z)V

    .line 138
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
