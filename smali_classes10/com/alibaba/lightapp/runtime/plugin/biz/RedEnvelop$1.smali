.class Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;
.super Ljava/lang/Object;
.source "RedEnvelop.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->sendNormalRedEnvelop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cong:Ljava/lang/String;

.field final synthetic val$extraMsg:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$thirdPartId:Ljava/lang/String;

.field final synthetic val$thirdPartSource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Lcom/alibaba/lightapp/runtime/ActionRequest;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$cong:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$thirdPartId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$thirdPartSource:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$extraMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Ljava/lang/String;)V

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 83
    .local v2, "uid":J
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$cong:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$thirdPartId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$thirdPartSource:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$extraMsg:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v2    # "uid":J
    :cond_1
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    if-eqz v2, :cond_0

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "error":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v1    # "error":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 90
    return-void
.end method
