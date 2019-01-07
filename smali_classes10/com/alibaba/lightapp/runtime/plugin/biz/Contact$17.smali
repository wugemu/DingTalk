.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;
.super Lcmi;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->manageContactAlert(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhjj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$tmpAgentId:Ljava/lang/String;

.field final synthetic val$tmpCorpId:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 3186
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$tmpCorpId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$tmpAgentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$data:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    const/4 v1, 0x3

    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorCode"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "= ,"

    .line 3202
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorMessage"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3201
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$5000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3203
    return-void
.end method

.method public onLoadSuccess(Lhjj;)V
    .locals 8
    .param p1, "manageContactAlertModel"    # Lhjj;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3189
    if-eqz p1, :cond_0

    .line 3190
    iget-object v0, p1, Lhjj;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$tmpCorpId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$tmpAgentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$type:Ljava/lang/String;

    iget-object v4, p1, Lhjj;->c:Ljava/lang/String;

    iget-object v5, p1, Lhjj;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$data:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    :cond_0
    :goto_0
    return-void

    .line 3194
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$tmpCorpId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$tmpAgentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$data:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3186
    check-cast p1, Lhjj;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;->onLoadSuccess(Lhjj;)V

    return-void
.end method
