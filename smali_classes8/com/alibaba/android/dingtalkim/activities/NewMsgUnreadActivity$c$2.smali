.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

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
    const/4 v0, 0x1

    .line 613
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 1509
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 613
    if-nez v1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->n(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 618
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 2509
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    .line 618
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 3509
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    .line 618
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 620
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 4509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    .line 620
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 5509
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 621
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 6509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    .line 622
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 628
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 629
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    goto :goto_0

    .line 618
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 7509
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 624
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 8509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    .line 625
    sget v1, Lctk$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 631
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldjl;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 632
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 9509
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 632
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    goto/16 :goto_0

    .line 634
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$2;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 10509
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 634
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_0
.end method
