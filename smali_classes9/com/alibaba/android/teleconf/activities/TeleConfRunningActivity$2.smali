.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 28
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 824
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Levi;->c()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leze;

    move-result-object v20

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcid;->b()Lchy;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lchy;->getCurrentUid()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Leze;->b(J)Z

    move-result v9

    .line 826
    .local v9, "isCompere":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcid;->b()Lchy;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lchy;->getCurrentUid()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(J)I

    move-result v14

    .line 827
    .local v14, "position":I
    if-gez v14, :cond_1

    if-nez v9, :cond_1

    .line 938
    .end local v9    # "isCompere":Z
    .end local v14    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 833
    .restart local v9    # "isCompere":Z
    .restart local v14    # "position":I
    :cond_1
    if-eqz v9, :cond_3

    .line 834
    const-string/jumbo v13, "is Compere"

    .line 839
    .local v13, "posInfo":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 841
    const-string/jumbo v20, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "llJoin clicked, addMember  "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v12

    .line 843
    .local v12, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lccr;->c()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 844
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    iget-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Levi;->a(Ljava/lang/Long;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lewk;->a()V

    .line 847
    invoke-static {}, Lewg;->c()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    sget v21, Leuj$l;->conf_txt_connecting:I

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leze;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Leze;->a()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 849
    .local v17, "recordInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leze;

    move-result-object v20

    iget-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v21, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Leze;->a(JIZ)V

    .line 850
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v20

    const-string/jumbo v21, "phone_meeting_callerself_recall_click"

    invoke-interface/range {v20 .. v21}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 858
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1034
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v17

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Leuv;->a(JLjava/lang/String;I)V

    .line 887
    .end local v17    # "recordInfo":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lewg;->c()Z

    move-result v20

    if-nez v20, :cond_2

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 890
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    goto/16 :goto_0

    .line 836
    .end local v12    # "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    .end local v13    # "posInfo":Ljava/lang/String;
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "position"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "posInfo":Ljava/lang/String;
    goto/16 :goto_1

    .line 852
    .restart local v12    # "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(IIZ)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    sget v21, Leuj$l;->conf_txt_connecting:I

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v23

    iget-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 854
    .restart local v17    # "recordInfo":Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 855
    .local v15, "property":Ljava/util/Map;
    const-string/jumbo v20, "uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lccr;->c()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v20

    const-string/jumbo v21, "phone_meeting_callee_recall_click"

    invoke-interface/range {v20 .. v21}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 860
    .end local v12    # "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    .end local v15    # "property":Ljava/util/Map;
    .end local v17    # "recordInfo":Ljava/lang/String;
    :cond_5
    const-string/jumbo v20, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "llJoin clicked, addMember "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 862
    .local v11, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    .line 863
    .local v7, "extentionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 864
    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 865
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 867
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v12

    .line 868
    .restart local v12    # "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    iget-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    move-object/from16 v20, v0

    iget-wide v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iget-wide v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 870
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    iget-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Levi;->a(Ljava/lang/Long;)V

    .line 871
    invoke-static {}, Levi;->p()Levi;

    move-result-object v20

    iget-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Levi;->a(Ljava/util/List;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lewk;->a()V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Z)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->t(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 878
    invoke-static {}, Lewg;->c()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 879
    const-string/jumbo v20, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "addTail false"

    invoke-static/range {v20 .. v22}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    sget v21, Leuj$l;->conf_txt_guide_add_member_tip:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 882
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    .line 885
    .end local v10    # "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v21, v0

    sget v22, Leuj$l;->conf_txt_connecting:I

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v24

    iget-object v0, v12, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 2034
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Leuv;->a(JLjava/lang/String;I)V

    goto/16 :goto_3

    .line 894
    .end local v7    # "extentionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .end local v9    # "isCompere":Z
    .end local v11    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v12    # "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    .end local v13    # "posInfo":Ljava/lang/String;
    .end local v14    # "position":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-gtz v20, :cond_9

    .line 895
    :cond_8
    sget v20, Leuj$l;->conf_txt_add_mem_toast:I

    invoke-static/range {v20 .. v20}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 898
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->x(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->x(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->y(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v20

    sget v21, Leuj$l;->conf_txt_terminate:I

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->z(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->x(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setClickable(Z)V

    .line 904
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->B(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->B(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 909
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v21, v0

    sget v22, Leuj$l;->conf_txt_wifi_env_prompt:I

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    .line 3034
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Leuv;->a(JLjava/lang/String;I)V

    .line 912
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->C(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 919
    const-string/jumbo v20, "STATISTICS"

    invoke-static/range {v20 .. v20}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 920
    .local v18, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v18, :cond_0

    .line 921
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 922
    .local v6, "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_e

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_d

    .line 925
    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 922
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 928
    :cond_e
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 930
    .local v19, "uids":Ljava/lang/String;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 931
    .local v16, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "uids"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "{"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "}"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v20

    const-string/jumbo v21, "meeting_creat_from_confrecord_group"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 934
    .end local v6    # "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v8    # "i":I
    .end local v16    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v19    # "uids":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 935
    const-string/jumbo v20, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "Recreate conf times: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
