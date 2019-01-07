.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;
.super Landroid/content/BroadcastReceiver;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1275
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .line 1276
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/Plugin$a;

    .line 1278
    .local v0, "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    if-eqz v0, :cond_0

    .line 1279
    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin$a;->onReceived(Ljava/lang/Object;)V

    .line 1282
    .end local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    :cond_0
    const-string/jumbo v1, "choose_enterprise_group_conversation_back"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .line 1283
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/Plugin$a;

    .line 1285
    .restart local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    if-eqz v0, :cond_1

    .line 1286
    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin$a;->onReceived(Ljava/lang/Object;)V

    .line 1289
    .end local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    :cond_1
    const-string/jumbo v1, "jsapi_create_public_group_success"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .line 1290
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1291
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/Plugin$a;

    .line 1292
    .restart local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    if-eqz v0, :cond_2

    .line 1293
    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin$a;->onReceived(Ljava/lang/Object;)V

    .line 1296
    .end local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    :cond_2
    const-string/jumbo v1, "jsapi_edit_group_desc_success"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1297
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/Plugin$a;

    .line 1298
    .restart local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    if-eqz v0, :cond_3

    .line 1299
    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin$a;->onReceived(Ljava/lang/Object;)V

    .line 1302
    .end local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    :cond_3
    return-void
.end method
