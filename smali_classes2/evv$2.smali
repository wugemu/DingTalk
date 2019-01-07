.class final Levv$2;
.super Ljava/lang/Object;
.source "TeleConfPushListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levv;


# direct methods
.method constructor <init>(Levv;)V
    .locals 0
    .param p1, "this$0"    # Levv;

    .prologue
    .line 144
    iput-object p1, p0, Levv$2;->a:Levv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 13
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 147
    if-eqz p1, :cond_1

    iget v8, p1, Lcjo$b;->b:I

    const/16 v9, 0x7d1

    if-eq v8, v9, :cond_0

    iget v8, p1, Lcjo$b;->b:I

    const/16 v9, 0x7d7

    if-ne v8, v9, :cond_1

    :cond_0
    iget-object v8, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v8, v8, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    if-nez v8, :cond_3

    .line 151
    :cond_1
    if-nez p1, :cond_2

    .line 152
    invoke-static {}, Levv;->a()Ljava/lang/String;

    .line 312
    :cond_2
    :goto_0
    return-void

    .line 156
    :cond_3
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->a(Levv;)V

    .line 158
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    .line 159
    .local v3, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;
    new-instance v6, Leyk;

    invoke-direct {v6}, Leyk;-><init>()V

    .line 160
    .local v6, "object":Leyk;
    invoke-virtual {v6, v3}, Leyk;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;)Leyk;

    .line 162
    iget-object v8, p0, Levv$2;->a:Levv;

    iget-object v9, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Levv;->a(Levv;J)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v6, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    if-eqz v8, :cond_4

    iget-object v8, v6, Leyk;->b:Ljava/lang/String;

    .line 164
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v6, Leyk;->g:Ljava/lang/Integer;

    if-eqz v8, :cond_5

    iget-object v8, v6, Leyk;->g:Ljava/lang/Integer;

    .line 165
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 166
    :cond_4
    const-string/jumbo v8, "tele_conf"

    invoke-static {}, Levv;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Receive CONF_PUSH_MEMBER_CHANGED Push, ERROR, not my conference, id "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_5
    iget-object v2, v6, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 173
    .local v2, "memberInfoObject":Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 174
    .local v1, "mBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v8, "Receive CONF_PUSH_MEMBER_CHANGED Push: "

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "confId "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "action "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Leyk;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "cause "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Leyk;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "user id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "user nick "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "status "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 181
    const-string/jumbo v8, "tele_conf"

    const-string/jumbo v9, "conference_call"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v8, "add-member"

    iget-object v9, v6, Leyk;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 184
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 185
    invoke-static {}, Levv;->a()Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Receive CONF_PUSH_MEMBER_CHANGED Push, already in the conference, status "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v8, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 187
    .local v7, "status":I
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v7, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 188
    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 189
    iget-object v8, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 190
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 196
    :cond_6
    :goto_1
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 197
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    goto/16 :goto_0

    .line 192
    :cond_7
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v9, 0x1

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    goto :goto_1

    .line 199
    .end local v7    # "status":I
    :cond_8
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->e(Levv;)Leze;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Leze;->b(J)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 200
    iget-object v8, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 201
    .restart local v7    # "status":I
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->e(Levv;)Leze;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v9, 0x1

    invoke-virtual {v8, v10, v11, v7, v9}, Leze;->a(JIZ)V

    .line 202
    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 203
    iget-object v8, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 204
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->e(Levv;)Leze;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v11, v9, v12}, Leze;->a(JZZ)V

    .line 210
    :cond_9
    :goto_2
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 211
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    goto/16 :goto_0

    .line 206
    :cond_a
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->e(Levv;)Leze;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v9, 0x1

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v11, v9, v12}, Leze;->a(JZZ)V

    goto :goto_2

    .line 214
    .end local v7    # "status":I
    :cond_b
    invoke-static {}, Levv;->a()Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Receive CONF_PUSH_MEMBER_CHANGED Push, not in the conference, add him, status "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v8, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    if-eqz v8, :cond_c

    .line 216
    iget-object v8, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->b()Lchy;

    move-result-object v10

    invoke-virtual {v10}, Lchy;->getCurrentUid()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 217
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->b(Levv;)Leuv;

    move-result-object v8

    iget-object v9, p0, Levv$2;->a:Levv;

    sget v10, Leuj$l;->conf_txt_enter_prompt:I

    invoke-static {v9, v10}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Leuv;->a(Ljava/lang/String;J)V

    .line 223
    :cond_c
    :goto_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v9, Levv$2$1;

    invoke-direct {v9, p0, v2}, Levv$2$1;-><init>(Levv$2;Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;)V

    invoke-virtual {v8, v10, v11, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_0

    .line 219
    :cond_d
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->b(Levv;)Leuv;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Levv$2;->a:Levv;

    invoke-static {v10}, Levv;->f(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v10

    sget v11, Leuj$l;->conf_txt_someone_invited:I

    invoke-virtual {v10, v11}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Leuv;->a(Ljava/lang/String;JI)V

    goto :goto_3

    .line 278
    :cond_e
    const-string/jumbo v8, "remove-member"

    iget-object v9, v6, Leyk;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 280
    invoke-static {}, Levv;->a()Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Receive CONF_PUSH_MEMBER_CHANGED Push, already in the conference, status "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v0, v6, Leyk;->c:Ljava/lang/String;

    .line 282
    .local v0, "cause":Ljava/lang/String;
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "nick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 284
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 285
    const-string/jumbo v8, "KICK_OUT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 286
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->b(Levv;)Leuv;

    move-result-object v8

    iget-object v9, p0, Levv$2;->a:Levv;

    sget v10, Leuj$l;->conf_txt_kickedout:I

    invoke-static {v9, v10}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Leuv;->a(Ljava/lang/String;JI)V

    .line 291
    :cond_f
    :goto_4
    iget-object v8, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->b()Lchy;

    move-result-object v10

    invoke-virtual {v10}, Lchy;->getCurrentUid()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_12

    .line 292
    const-string/jumbo v8, "KICK_OUT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 293
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->f(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Leuj$l;->conf_txt_kicked_out:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcms;->a(Ljava/lang/String;)V

    .line 295
    :cond_10
    iget-object v8, p0, Levv$2;->a:Levv;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Levv;->a(Levv;Z)V

    goto/16 :goto_0

    .line 287
    :cond_11
    const-string/jumbo v8, "leave conference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 288
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->b(Levv;)Leuv;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Levv$2;->a:Levv;

    sget v11, Leuj$l;->conf_txt_someone_leaved:I

    invoke-static {v10, v11}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Leuv;->a(Ljava/lang/String;JI)V

    goto :goto_4

    .line 297
    :cond_12
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v9, 0x1

    invoke-virtual {v8, v10, v11, v9}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZ)V

    .line 298
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v8

    iget-object v9, p0, Levv$2;->a:Levv;

    invoke-static {v9}, Levv;->g(Levv;)I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 299
    invoke-static {}, Lewg;->c()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 300
    invoke-static {}, Levv;->a()Ljava/lang/String;

    .line 302
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->f(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v8

    sget v9, Leuj$l;->conf_txt_guide_add_member_tip:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Levv$2;->a:Levv;

    invoke-static {v12}, Levv;->g(Levv;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Levv$2;->a:Levv;

    invoke-static {v8}, Levv;->c(Levv;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
