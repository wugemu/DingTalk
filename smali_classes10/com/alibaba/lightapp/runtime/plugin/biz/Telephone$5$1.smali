.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 315
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    packed-switch p2, :pswitch_data_0

    .line 336
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$result:Lorg/json/JSONObject;

    const-string/jumbo v2, "clickIndex"

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$result:Lorg/json/JSONObject;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_1
    return-void

    .line 320
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .line 321
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->chat_copy_is_success:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v1, v2, v3}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-boolean v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$isSupportBiz:Z

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$telBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
