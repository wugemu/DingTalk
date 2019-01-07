.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->run()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "integer"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 455
    .local v0, "type":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    int-to-long v4, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;J)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 448
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;->onDataReceived(Ljava/lang/Integer;)V

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
    .line 465
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    const/4 v1, 0x2

    const-string/jumbo v2, "phoneNumber parameter error"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 461
    return-void
.end method
