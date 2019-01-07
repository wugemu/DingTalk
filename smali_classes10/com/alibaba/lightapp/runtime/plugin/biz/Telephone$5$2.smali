.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$result:Lorg/json/JSONObject;

    const-string/jumbo v2, "clickIndex"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$result:Lorg/json/JSONObject;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
