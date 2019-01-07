.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;
.super Landroid/content/BroadcastReceiver;
.source "InternalChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const-string/jumbo v5, "activity_identify"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "identifyFlag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 316
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    const-string/jumbo v5, "choose_user_identities"

    .line 319
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 321
    .local v3, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 325
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 328
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/Context;)V

    goto :goto_0
.end method
