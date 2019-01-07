.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$2;
.super Ljava/lang/Object;
.source "SendOrientedRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_0

    .line 181
    const-string/jumbo v1, "red_packets"

    const/4 v2, 0x0

    const-string/jumbo v3, "Conversation is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string/jumbo v1, "count_limit"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v2, "seleced_members"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 189
    const-string/jumbo v1, "count_limit_tips"

    sget v2, Lcaj$f;->redpackets_enterprise_limit:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string/jumbo v1, "can_choose_current_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
