.class public final Lewm$1;
.super Ljava/lang/Object;
.source "TeleConfPushManager.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewm;


# direct methods
.method public constructor <init>(Lewm;)V
    .locals 0
    .param p1, "this$0"    # Lewm;

    .prologue
    .line 63
    iput-object p1, p0, Lewm$1;->a:Lewm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 14
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 66
    if-eqz p1, :cond_1

    iget v5, p1, Lcjo$b;->b:I

    const/16 v6, 0x7d1

    if-eq v5, v6, :cond_0

    iget v5, p1, Lcjo$b;->b:I

    const/16 v6, 0x7d7

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v5, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    if-nez v5, :cond_2

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    .line 74
    .local v2, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;
    new-instance v3, Leyk;

    invoke-direct {v3}, Leyk;-><init>()V

    .line 75
    .local v3, "object":Leyk;
    invoke-virtual {v3, v2}, Leyk;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;)Leyk;

    .line 77
    iget-object v5, p0, Lewm$1;->a:Lewm;

    iget-object v6, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lewm;->a(Lewm;J)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    if-eqz v5, :cond_3

    iget-object v5, v3, Leyk;->b:Ljava/lang/String;

    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Leyk;->g:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    iget-object v5, v3, Leyk;->g:Ljava/lang/Integer;

    .line 80
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v9, :cond_5

    .line 81
    :cond_3
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x6

    new-array v8, v5, [Ljava/lang/String;

    const-string/jumbo v5, "Receive CONF_PUSH_MEMBER_CHANGED Push:"

    aput-object v5, v8, v11

    iget-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;->conferenceId:Ljava/lang/Long;

    .line 83
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    const-string/jumbo v5, ", info "

    aput-object v5, v8, v9

    iget-object v5, v3, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    if-eqz v5, :cond_4

    iget-object v5, v3, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 84
    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v8, v12

    const-string/jumbo v5, ", action "

    aput-object v5, v8, v13

    const/4 v5, 0x5

    iget-object v9, v3, Leyk;->b:Ljava/lang/String;

    aput-object v9, v8, v5

    .line 82
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v6, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_4
    const-string/jumbo v5, ""

    goto :goto_1

    .line 88
    :cond_5
    iget-object v1, v3, Leyk;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 90
    .local v1, "memberInfoObject":Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 91
    .local v0, "mBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "Receive CONF_PUSH_MEMBER_CHANGED Push: "

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "confId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Leyk;->d:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Leyk;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cause "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Leyk;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 95
    const-string/jumbo v5, "user "

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 96
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 97
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v5, "add-member"

    iget-object v6, v3, Leyk;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 100
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 101
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "User "

    aput-object v8, v7, v11

    iget-object v8, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    .line 102
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, " already in the conf "

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    .line 103
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const-string/jumbo v8, " for add"

    aput-object v8, v7, v13

    .line 101
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v5, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 106
    .local v4, "status":I
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5, v6, v4, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 107
    if-ne v4, v9, :cond_1

    .line 108
    iget-object v5, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v11, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    goto/16 :goto_0

    .line 111
    :cond_6
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v10, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    goto/16 :goto_0

    .line 115
    .end local v4    # "status":I
    :cond_7
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "User "

    aput-object v8, v7, v11

    iget-object v8, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    .line 116
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, " not in the conf, add him, status "

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    .line 117
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const-string/jumbo v8, " for add"

    aput-object v8, v7, v13

    .line 115
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lewm$1$1;

    invoke-direct {v8, p0, v1}, Lewm$1$1;-><init>(Lewm$1;Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_0

    .line 165
    :cond_8
    const-string/jumbo v5, "remove-member"

    iget-object v6, v3, Leyk;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lewm;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "User "

    aput-object v8, v7, v11

    iget-object v8, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    .line 168
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, " already in the conf "

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    .line 169
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const-string/jumbo v8, " for remove"

    aput-object v8, v7, v13

    .line 167
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v5, v3, Leyk;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    iget-object v5, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_9

    .line 172
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 173
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v5

    iget-object v6, v3, Leyk;->d:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc8

    invoke-interface {v5, v6, v7, v10}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 176
    :cond_9
    iget-object v5, p0, Lewm$1;->a:Lewm;

    invoke-static {v5}, Lewm;->a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZ)V

    goto/16 :goto_0
.end method
