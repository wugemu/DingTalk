.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;
.super Landroid/content/BroadcastReceiver;
.source "TeleConfHomeRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 883
    const-string/jumbo v19, "com.workapp.choose.people.from.contact"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 884
    const-string/jumbo v19, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 885
    .local v5, "idenfier":Ljava/lang/String;
    const-string/jumbo v19, "choose_mode"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 886
    .local v8, "mChooseMode":I
    const-string/jumbo v19, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 887
    .local v16, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 888
    :cond_0
    const-string/jumbo v19, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "Result of choosing member is null"

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .end local v5    # "idenfier":Ljava/lang/String;
    .end local v8    # "mChooseMode":I
    .end local v16    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    :goto_0
    return-void

    .line 891
    .restart local v5    # "idenfier":Ljava/lang/String;
    .restart local v8    # "mChooseMode":I
    .restart local v16    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    const-string/jumbo v19, "CONF_RECORD_ACTIVITY_CREATE_CALL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 892
    const-string/jumbo v19, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "create conf in record page "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    if-nez v8, :cond_1

    .line 895
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v19

    const-string/jumbo v20, "phone_makecall_seleccallee_click"

    invoke-interface/range {v19 .. v20}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_3
    const-string/jumbo v19, "CONF_RECORD_ACTIVITY_CREATE_VOIP_CALL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 899
    const-string/jumbo v19, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "create voip call size "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v0, v8, :cond_1

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 905
    :cond_4
    const-string/jumbo v19, "CONF_RECORD_ACTIVITY_CREATE_CONF_CALL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 906
    const-string/jumbo v19, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "create conf call size "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    if-nez v8, :cond_1

    .line 909
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    sget v20, Leuj$l;->and_conf_callselect_conf_member_remind_tip:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "1"

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcms;->a(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 913
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 914
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v19, "conference_from_home"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 915
    const-string/jumbo v19, "conversation_id"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v4}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 919
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_6
    const-string/jumbo v19, "CONF_RECORD_ACTIVITY_CREATE_VOIP_CONF"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 920
    const-string/jumbo v19, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "create voip conf size "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    if-nez v8, :cond_1

    .line 922
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 923
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v19, "conference_from_home"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 924
    const-string/jumbo v19, "conversation_id"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string/jumbo v19, "conf_type"

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v4}, Lewb;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 929
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_7
    const-string/jumbo v19, "CONF_RECORD_ACTIVITY_CREATE_VIDEO_CALL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 930
    const-string/jumbo v19, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "create video call size "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    if-nez v8, :cond_1

    .line 933
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 934
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v19, "message"

    const-string/jumbo v20, "conf_caller"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string/jumbo v19, "conf_video_to_user_type"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 936
    const-string/jumbo v19, "conf_video_auto"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 937
    const-string/jumbo v19, "conf_video_3g_remind_flag"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    .line 1370
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    .line 938
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v4}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 941
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "idenfier":Ljava/lang/String;
    .end local v8    # "mChooseMode":I
    .end local v16    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_8
    const-string/jumbo v19, "com.workapp.conf.setting"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    .line 944
    const-string/jumbo v19, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 945
    .local v6, "identifier":Ljava/lang/String;
    const-string/jumbo v19, "CONF_RECORD_ACTIVITY_SELECT_FAVO"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 946
    const-string/jumbo v19, "choose_user_identities"

    .line 947
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 948
    .restart local v16    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_d

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_c

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v20}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)Ljava/util/List;

    .line 954
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 955
    .local v7, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v7, :cond_9

    .line 958
    new-instance v17, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v20, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 960
    .local v17, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 974
    .end local v7    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v17    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->s(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    .line 977
    .end local v16    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    goto/16 :goto_0

    .line 952
    .restart local v16    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 969
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_a

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 978
    .end local v6    # "identifier":Ljava/lang/String;
    .end local v16    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_e
    const-string/jumbo v19, "com.workapp.conf.feedback.update"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 979
    const-string/jumbo v19, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 980
    .local v18, "uuid":Ljava/lang/String;
    const-string/jumbo v19, "conf_quality_time"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 982
    .local v12, "time":J
    invoke-static {}, Lewh;->a()Lewh;

    move-object/from16 v0, v18

    invoke-static {v0, v12, v13}, Lewh;->b(Ljava/lang/String;J)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Leur;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Leur;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Leur;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 987
    .end local v12    # "time":J
    .end local v18    # "uuid":Ljava/lang/String;
    :cond_f
    const-string/jumbo v19, "com.workapp.org.external.added"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 988
    const-string/jumbo v19, "employee_info"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 989
    .local v9, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 991
    .local v11, "teleConfRecordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v11, :cond_10

    iget-object v0, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    move-object/from16 v20, v0

    sget-object v21, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 992
    iget-object v10, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 993
    .local v10, "record":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v10, :cond_10

    iget v0, v10, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 994
    iget-object v0, v10, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 995
    .local v14, "uid":J
    iget-wide v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    move-wide/from16 v20, v0

    cmp-long v20, v14, v20

    if-nez v20, :cond_10

    .line 996
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    .line 997
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Leur;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Leur;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1005
    .end local v9    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v10    # "record":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v11    # "teleConfRecordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    .end local v14    # "uid":J
    :cond_11
    const-string/jumbo v19, "com.workapp.conf.localcalllog.close"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->v(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 1007
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v19

    new-instance v20, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;)V

    const-wide/16 v22, 0xbb8

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
