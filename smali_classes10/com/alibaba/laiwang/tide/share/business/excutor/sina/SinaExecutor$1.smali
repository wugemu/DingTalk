.class Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;
.super Ljava/lang/Object;
.source "SinaExecutor.java"

# interfaces
.implements Ljha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->doOAuth(Landroid/app/Activity;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

.field final synthetic val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    iput-object p2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onCancel()V

    .line 128
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    invoke-static {p1}, Ljgy;->a(Landroid/os/Bundle;)Ljgy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->access$002(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;Ljgy;)Ljgy;

    .line 105
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    invoke-static {v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Ljgy;

    move-result-object v1

    invoke-virtual {v1}, Ljgy;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    invoke-static {v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->access$100(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    invoke-static {v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->access$200(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getUserID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    invoke-static {v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Ljgy;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/utils/AccessTokenKeeper;->writeAccessToken(Landroid/content/Context;Ljava/lang/String;Ljgy;)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onSuccess()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string/jumbo v1, "code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2
    .param p1, "arg0"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method
