.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$21;
.super Landroid/content/BroadcastReceiver;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerSpaceReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

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
    .line 2548
    if-eqz p2, :cond_0

    const-string/jumbo v1, "com.alibaba.ligthapp.choose.space"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2550
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return-void

    .line 2554
    :cond_1
    const-string/jumbo v1, "msg_entity_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2556
    .local v0, "spaceDoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    goto :goto_0
.end method
