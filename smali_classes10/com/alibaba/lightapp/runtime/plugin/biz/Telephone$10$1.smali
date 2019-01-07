.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10$1;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 673
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 675
    .local v0, "object":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 676
    :try_start_0
    const-string/jumbo v1, "isSupport"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 683
    return-void

    .line 679
    :catch_0
    move-exception v1

    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "checkBizCall onDataReceived aBoolean"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 670
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10$1;->onDataReceived(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 692
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkBizCall is exception"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 688
    return-void
.end method
