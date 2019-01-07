.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->quickCallList(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhqu",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

.field final synthetic val$agentId:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$menuList:Ljava/util/List;

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$content:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$agentId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$corpId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$menuList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 543
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no staffid in this corpId"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    const/4 v1, 0x2

    const-string/jumbo v2, "no staffid in this corpId"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public onSuccess(Ljava/lang/Long;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    move-object v2, p1

    .line 550
    .local v2, "uid":Ljava/lang/Long;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$content:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$agentId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$corpId:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->val$menuList:Ljava/util/List;

    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 551
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 540
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;->onSuccess(Ljava/lang/Long;)V

    return-void
.end method
