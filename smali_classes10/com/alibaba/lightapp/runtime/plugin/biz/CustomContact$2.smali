.class Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$2;
.super Landroid/content/BroadcastReceiver;
.source "CustomContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    const-string/jumbo v2, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const-string/jumbo v2, "choose_user_identities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 233
    .local v0, "chooseMode":I
    if-nez v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    invoke-static {v2, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Ljava/util/List;)V

    .line 239
    .end local v0    # "chooseMode":I
    .end local v1    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v0    # "chooseMode":I
    .restart local v1    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    invoke-static {v2, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Ljava/util/List;)V

    goto :goto_0
.end method
