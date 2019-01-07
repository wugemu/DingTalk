.class final Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;
.super Landroid/content/BroadcastReceiver;
.source "MsgSearchFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/widget/MsgSearchFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "choose_user_identities"

    .line 91
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    .local v1, "selectUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->a()V

    .line 106
    .end local v1    # "selectUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v2, "intent_action_forward_pick_data"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->c(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string/jumbo v2, "intent_key_forward_pick_data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, "dataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$1;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->a()V

    goto :goto_0
.end method
