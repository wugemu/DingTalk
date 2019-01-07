.class final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;
.super Ljava/lang/Object;
.source "GroupConversationFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 224
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->c(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v5, "intent_key_message_forward_handler"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .line 226
    .local v2, "forwardHandler":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
    if-eqz v2, :cond_0

    .line 227
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 228
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v1

    .line 229
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    instance-of v4, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    .line 238
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .end local v2    # "forwardHandler":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
    :cond_0
    :goto_1
    return-void

    .line 229
    .restart local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .restart local v2    # "forwardHandler":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .end local v2    # "forwardHandler":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v3

    .line 234
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4, v3}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->e(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcvu;

    move-result-object v0

    invoke-virtual {v0}, Lcvu;->notifyDataSetChanged()V

    .line 220
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_message_recipients"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 244
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$4;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 245
    return-void
.end method
