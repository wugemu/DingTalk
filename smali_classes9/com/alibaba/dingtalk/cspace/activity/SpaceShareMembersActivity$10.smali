.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;
.super Landroid/os/Handler;
.source "SpaceShareMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    .line 714
    if-nez p1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 719
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 721
    :pswitch_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 722
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 723
    .local v3, "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 726
    .end local v3    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->onBackPressed()V

    .line 728
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 729
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 730
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 731
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->p(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 734
    :cond_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Ljava/util/List;)Ljava/util/List;

    .line 735
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 736
    .local v2, "model":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 739
    .end local v2    # "model":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v6}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;I)I

    .line 740
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V

    .line 741
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->q(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Ljava/util/List;)V

    .line 743
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V

    goto/16 :goto_0

    .line 747
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 748
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 749
    const-string/jumbo v4, "space_request_error_code_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v4, "space_request_error_message_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 751
    const-string/jumbo v4, "13020005"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 752
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    sget v5, Lfzs$h;->dt_cspace_cf_delete_member_no_auth_tip:I

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    :cond_5
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$10;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    sget v5, Lfzs$h;->delete_error:I

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
