.class Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;
.super Lcmi;
.source "Telephone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;->call(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lhjk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->val$corpId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 78
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "code:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "reason:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "callMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;->access$500(Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->onLoadSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhjk;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "memberModels":Ljava/util/List;, "Ljava/util/List<Lhjk;>;"
    const/4 v7, 0x3

    .line 59
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhjk;

    .line 61
    .local v2, "memberModel":Lhjk;
    iget-object v3, v2, Lhjk;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 62
    .local v4, "uid":J
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;->access$000(Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 63
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v6

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;->access$100(Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->val$corpId:Ljava/lang/String;

    invoke-virtual {v6, v3, v7, v4, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;->access$200(Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 74
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "memberModel":Lhjk;
    .end local v4    # "uid":J
    :goto_0
    return-void

    .line 67
    .restart local v2    # "memberModel":Lhjk;
    .restart local v4    # "uid":J
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v6, "reason: context not activity"

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "callMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    invoke-static {v7, v0}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;->access$300(Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "callMsg":Ljava/lang/String;
    .end local v2    # "memberModel":Lhjk;
    .end local v4    # "uid":J
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v6, "reason: uid null"

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "callMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;

    invoke-static {v7, v0}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;->access$400(Lcom/alibaba/lightapp/runtime/plugin/retail/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
