.class Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;
.super Ljava/lang/Object;
.source "RedEnvelop.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->sendEnterpriseRedEnvelop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$cong:Ljava/lang/String;

.field final synthetic val$extraMsg:Ljava/lang/String;

.field final synthetic val$needSendResult:Z

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$thirdPartId:Ljava/lang/String;

.field final synthetic val$thirdPartSource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;ZLcom/alibaba/lightapp/runtime/ActionRequest;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$needSendResult:Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$cid:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$cong:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$thirdPartId:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$thirdPartSource:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$extraMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 11
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

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$needSendResult:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Ljava/lang/String;)V

    .line 144
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 145
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$needSendResult:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$302(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;)V

    .line 149
    :cond_1
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$cid:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$cong:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$thirdPartId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$thirdPartSource:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$extraMsg:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    :goto_0
    return-void

    .line 152
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$needSendResult:Z

    if-eqz v0, :cond_2

    .line 153
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v10, "error":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "sendResult"

    const/4 v1, 0x2

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v10, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v9

    .line 158
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo v2, "sendResult"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 167
    return-void
.end method
