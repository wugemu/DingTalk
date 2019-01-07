.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;
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
    .line 1157
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1160
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "left clicked"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v6, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1165
    .local v2, "desUid":J
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Levi;->a(Ljava/lang/Long;)V

    .line 1166
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    invoke-virtual {v6}, Lezd;->a()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1167
    sget v6, Leuj$l;->conf_txt_calling_no_operation:I

    invoke-static {v6}, Lcms;->a(I)V

    goto :goto_0

    .line 1170
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    invoke-virtual {v6}, Lezd;->a()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 1171
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    invoke-virtual {v6}, Lezd;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1172
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v7

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    iget-object v8, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2209
    if-eqz v8, :cond_2

    .line 2212
    const-string/jumbo v6, "tele_conf"

    sget-object v9, Lewk;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "unMuteMember "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-virtual {v6}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v6

    .line 2214
    new-instance v9, Lewk$b;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lewk$b;-><init>(Lewk;B)V

    .line 2215
    const/16 v10, 0x1b

    .line 2319
    iput v10, v9, Lewk$b;->a:I

    .line 2216
    iget-object v10, v7, Lewk;->d:Leyc;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v11

    const-string/jumbo v6, "EVENTBUTLER"

    .line 2217
    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v12, Leyo$d;

    iget-object v13, v7, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v6, v9, v12, v13}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leyo$d;

    .line 2216
    invoke-virtual {v10, v11, v6}, Leyc;->f(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 2218
    iget-object v6, v7, Lewk;->c:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v7, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 1173
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leze;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v7

    iget-object v7, v7, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v7, v10}, Leze;->a(JZZ)V

    .line 1174
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    .line 1175
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v8, Leuj$l;->conf_txt_leave_mute_mode_mine:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3034
    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v7, v10}, Leuv;->a(JLjava/lang/String;I)V

    .line 1190
    :cond_3
    :goto_1
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Mute/unmute "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v9

    iget-object v9, v9, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const-wide/16 v8, 0x12c

    const/4 v7, 0x0

    invoke-static {v6, v8, v9, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;JZ)V

    goto/16 :goto_0

    .line 1178
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v7

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    iget-object v8, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3194
    if-eqz v8, :cond_6

    .line 3197
    const-string/jumbo v6, "tele_conf"

    sget-object v9, Lewk;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "muteMember "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-virtual {v6}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v6

    .line 3200
    new-instance v9, Lewk$b;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lewk$b;-><init>(Lewk;B)V

    .line 3201
    const/16 v10, 0x1a

    .line 3319
    iput v10, v9, Lewk$b;->a:I

    .line 3202
    iget-object v10, v7, Lewk;->d:Leyc;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v11

    const-string/jumbo v6, "EVENTBUTLER"

    .line 3203
    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v12, Leyo$d;

    iget-object v13, v7, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v6, v9, v12, v13}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leyo$d;

    .line 3202
    invoke-virtual {v10, v11, v6}, Leyc;->e(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 3204
    iget-object v6, v7, Lewk;->c:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v7, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v7, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 1179
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leze;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v7

    iget-object v7, v7, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v7, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v7, v10}, Leze;->a(JZZ)V

    .line 1180
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_7

    .line 1181
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v8, Leuj$l;->conf_txt_enter_mute_mode_mine:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4034
    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v7, v10}, Leuv;->a(JLjava/lang/String;I)V

    .line 1182
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "phone_meeting_muteself_click"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1184
    :cond_7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1185
    .local v4, "property":Ljava/util/Map;
    const-string/jumbo v6, "uid"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "phone_meeting_muteother_click"

    invoke-interface {v6, v7, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1191
    .end local v4    # "property":Ljava/util/Map;
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v6

    invoke-virtual {v6}, Lezd;->a()I

    move-result v6

    if-nez v6, :cond_4

    .line 1192
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    if-nez v6, :cond_9

    .line 1193
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    new-instance v7, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v7}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    invoke-static {v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 1195
    :cond_9
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_RECALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v7, v6, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 1196
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    invoke-static {}, Levi;->p()Levi;

    move-result-object v7

    invoke-virtual {v7}, Levi;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 1197
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 1198
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    const-string/jumbo v7, "recall"

    iput-object v7, v6, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 1199
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v7

    iget-object v7, v7, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    .line 1200
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1201
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->P(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/32 v8, 0xea60

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1203
    :cond_a
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Redail to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v9

    iget-object v9, v9, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;

    move-result-object v7

    iget-object v7, v7, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v6, v7}, Lewk;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1207
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-virtual {v6}, Levi;->h()J

    move-result-wide v0

    .line 1208
    .local v0, "callerId":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_c

    .line 1209
    cmp-long v6, v2, v0

    if-nez v6, :cond_b

    .line 1210
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "phone_meeting_callerself_recall_click"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1221
    :goto_3
    cmp-long v6, v2, v0

    if-nez v6, :cond_d

    .line 1222
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v7, Leuj$l;->conf_txt_connecting:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leze;

    move-result-object v9

    invoke-virtual {v9}, Leze;->a()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1226
    .local v5, "recordInfo":Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5034
    const/4 v7, 0x0

    invoke-virtual {v6, v8, v9, v5, v7}, Leuv;->a(JLjava/lang/String;I)V

    goto/16 :goto_2

    .line 1212
    .end local v5    # "recordInfo":Ljava/lang/String;
    :cond_b
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1213
    .restart local v4    # "property":Ljava/util/Map;
    const-string/jumbo v6, "uid"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "phone_meeting_caller_recall_click"

    invoke-interface {v6, v7, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1217
    .end local v4    # "property":Ljava/util/Map;
    :cond_c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1218
    .restart local v4    # "property":Ljava/util/Map;
    const-string/jumbo v6, "uid"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "phone_meeting_caller_recall_click"

    invoke-interface {v6, v7, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1224
    .end local v4    # "property":Ljava/util/Map;
    :cond_d
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v7, Leuj$l;->conf_txt_connecting:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "recordInfo":Ljava/lang/String;
    goto :goto_4
.end method
