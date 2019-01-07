.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 603
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "phone_voip_after_caller_sendvoiceding"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 605
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4, v6}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    .line 606
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v5, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v5}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v5

    invoke-static {v4, v6, v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    .line 607
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 608
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v1, "identityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 610
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 612
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "ding_choose_remind_type"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    const-string/jumbo v4, "seleced_members"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 614
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 615
    return-void
.end method
