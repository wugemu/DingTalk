.class public Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;
.super Leza;
.source "TeleConfViewHolder.java"


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

.field c:Landroid/view/View;

.field d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Z

.field private j:Lezd;

.field private k:Landroid/content/Context;

.field private l:Lezd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "TeleConfViewHolder"

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Leza;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    .line 33
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->k:Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->h:Z

    .line 234
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->l:Lezd$a;

    .line 38
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->k:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 280
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_calling:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_deviceoff:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_hanguped:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 295
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_confrunning:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 298
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_noanswer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 301
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_no_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 304
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_poweroff:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 307
    :pswitch_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_rejected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const v11, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 21
    .line 5116
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->k:Landroid/content/Context;

    instance-of v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    if-eqz v0, :cond_0

    .line 5117
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->k:Landroid/content/Context;

    check-cast v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    .line 5694
    if-eqz v0, :cond_0

    iget-boolean v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m:Z

    if-nez v3, :cond_1

    .line 5819
    :cond_0
    :goto_0
    return-void

    .line 5697
    :cond_1
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5698
    invoke-static {}, Lewg;->c()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    .line 5699
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "The callee user is click."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5703
    :cond_3
    invoke-virtual {v0}, Lezd;->a()I

    move-result v3

    .line 5704
    const/16 v5, 0x10

    if-ne v3, v5, :cond_c

    .line 5705
    const-string/jumbo v0, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "On click add avatar "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5706
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v3, "phone_meeting_addmember_click"

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5707
    iget-boolean v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o:Z

    if-eqz v0, :cond_8

    .line 5710
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5711
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5712
    const-string/jumbo v0, "count_limit"

    iget v4, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5713
    const-string/jumbo v0, "title"

    sget v4, Leuj$l;->conf_txt_create_call_from_conv_title:I

    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5714
    const-string/jumbo v0, "count_limit_tips"

    sget v4, Leuj$l;->conference_choose_limit:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5715
    const-string/jumbo v0, "conversation_id"

    iget-object v4, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5716
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5717
    const-string/jumbo v0, "intent_key_support_fix_line"

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5719
    :cond_4
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5721
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v4

    .line 5722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5723
    :goto_1
    if-ge v2, v4, :cond_6

    .line 5724
    iget-object v5, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v5

    iget-object v5, v5, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v5, :cond_5

    .line 5725
    iget-object v5, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v5

    iget-object v5, v5, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5

    .line 5726
    iget-object v5, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v5

    iget-object v5, v5, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5723
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5730
    :cond_6
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5731
    const-string/jumbo v2, "key_request_select_user_list"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5736
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5733
    :cond_7
    const-string/jumbo v2, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 5739
    :cond_8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5740
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5741
    const-string/jumbo v0, "count_limit"

    iget v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5742
    const-string/jumbo v0, "count_limit_tips"

    sget v3, Leuj$l;->conference_choose_limit:I

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5743
    const-string/jumbo v0, "conversation_id"

    iget-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5745
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v3

    .line 5746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5747
    :goto_3
    if-ge v2, v3, :cond_a

    .line 5748
    iget-object v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v6, :cond_9

    .line 5749
    iget-object v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 5750
    iget-object v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5747
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5755
    :cond_a
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5756
    const-string/jumbo v2, "unchecked_users"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5760
    :goto_4
    sget v0, Leuj$l;->conf_txt_create_call_from_conv_title:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5762
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5758
    :cond_b
    const-string/jumbo v2, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 5767
    :cond_c
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->c()Z

    move-result v3

    if-nez v3, :cond_14

    .line 5769
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_d

    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 5772
    :cond_d
    const-string/jumbo v3, "tele_conf"

    sget-object v5, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Item click "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5773
    iget-boolean v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o:Z

    if-eqz v0, :cond_11

    .line 5775
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5776
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5777
    const-string/jumbo v0, "count_limit"

    iget v4, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5778
    const-string/jumbo v0, "title"

    sget v4, Leuj$l;->conf_txt_create_call_from_conv_title:I

    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5779
    const-string/jumbo v0, "count_limit_tips"

    sget v4, Leuj$l;->conference_choose_limit:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5780
    const-string/jumbo v0, "conversation_id"

    iget-object v4, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5782
    const-string/jumbo v0, "intent_key_support_fix_line"

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5784
    :cond_e
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5786
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v4

    .line 5787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5788
    :goto_5
    if-ge v2, v4, :cond_10

    .line 5789
    iget-object v5, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v5

    iget-object v5, v5, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v5, :cond_f

    .line 5790
    iget-object v5, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v5

    iget-object v5, v5, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f

    .line 5791
    iget-object v5, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v5

    iget-object v5, v5, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5788
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5795
    :cond_10
    const-string/jumbo v2, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5797
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5800
    :cond_11
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5801
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5802
    const-string/jumbo v0, "count_limit"

    iget v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5803
    const-string/jumbo v0, "count_limit_tips"

    sget v3, Leuj$l;->conference_choose_limit:I

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5804
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v3

    .line 5805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5806
    :goto_6
    if-ge v2, v3, :cond_13

    .line 5807
    iget-object v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v6, :cond_12

    .line 5808
    iget-object v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_12

    .line 5809
    iget-object v6, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v6

    iget-object v6, v6, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5806
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5813
    :cond_13
    const-string/jumbo v2, "conversation_id"

    iget-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5814
    const-string/jumbo v2, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5815
    sget v0, Leuj$l;->conf_txt_create_call_from_conv_title:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5817
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5821
    :cond_14
    iput-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j:Lezd;

    .line 5822
    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_15

    .line 5823
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Item click "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5824
    iget-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    iget-object v4, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v5, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5825
    iget-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->setTextSize(F)V

    .line 5826
    iget-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5827
    iget-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e:Landroid/widget/TextView;

    iget-object v4, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5829
    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_18

    .line 5830
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 5831
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5832
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g:Landroid/widget/TextView;

    sget v3, Leuj$l;->hands_Free_speaker:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5833
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5834
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f:Landroid/widget/ImageView;

    sget v3, Leuj$h;->conf_action_handfree_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5835
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    .line 5850
    :cond_15
    :goto_7
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j:Lezd;

    invoke-virtual {v0}, Lezd;->a()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a

    .line 5851
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c:Landroid/view/View;

    invoke-static {v0, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    .line 5852
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j:Lezd;

    invoke-virtual {v0}, Lezd;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5853
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i:Landroid/widget/TextView;

    sget v3, Leuj$l;->conf_txt_cancel_mute:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5854
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5855
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h:Landroid/widget/ImageView;

    sget v3, Leuj$h;->conf_action_mute_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5856
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    .line 5873
    :cond_16
    :goto_8
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    iget-object v3, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j:Lezd;

    invoke-virtual {v3}, Lezd;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->setStatus(I)V

    .line 5874
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->invalidate()V

    .line 5875
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5876
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3, v12}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(JZ)V

    goto/16 :goto_0

    .line 5837
    :cond_17
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g:Landroid/widget/TextView;

    sget v3, Leuj$l;->hands_Free_speaker:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5838
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5839
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f:Landroid/widget/ImageView;

    sget v3, Leuj$h;->conf_action_handfree_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5840
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f:Landroid/widget/ImageView;

    invoke-static {v0, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    goto :goto_7

    .line 5843
    :cond_18
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g:Landroid/widget/TextView;

    sget v3, Leuj$l;->remove:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5844
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5845
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f:Landroid/widget/ImageView;

    sget v3, Leuj$h;->conf_action_remove_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5846
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f:Landroid/widget/ImageView;

    invoke-static {v0, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    goto :goto_7

    .line 5858
    :cond_19
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i:Landroid/widget/TextView;

    sget v3, Leuj$l;->conf_txt_mute_her:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5859
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5860
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h:Landroid/widget/ImageView;

    sget v3, Leuj$h;->conf_action_mute_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5861
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h:Landroid/widget/ImageView;

    invoke-static {v0, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    goto :goto_8

    .line 5863
    :cond_1a
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j:Lezd;

    invoke-virtual {v0}, Lezd;->a()I

    move-result v0

    if-nez v0, :cond_1b

    .line 5864
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i:Landroid/widget/TextView;

    sget v3, Leuj$l;->conf_txt_redail:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5865
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h:Landroid/widget/ImageView;

    sget v3, Leuj$h;->conf_action_redial_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5866
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c:Landroid/view/View;

    invoke-static {v0, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    goto/16 :goto_8

    .line 5867
    :cond_1b
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j:Lezd;

    invoke-virtual {v0}, Lezd;->a()I

    move-result v0

    if-ne v0, v12, :cond_16

    .line 5868
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i:Landroid/widget/TextView;

    sget v3, Leuj$l;->conf_txt_redail:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5869
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h:Landroid/widget/ImageView;

    sget v3, Leuj$h;->conf_action_redial_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5870
    iget-object v0, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c:Landroid/view/View;

    invoke-static {v0, v11}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Landroid/view/View;F)V

    goto/16 :goto_8
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)Lezd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "raw"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    sget v0, Leuj$i;->fl_txt_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 45
    sget v0, Leuj$i;->fl_txt_avatar_anim:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    .line 46
    sget v0, Leuj$i;->fl_img_calling:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    .line 47
    sget v0, Leuj$i;->fl_img_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    .line 48
    sget v0, Leuj$i;->fl_img_mute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    .line 49
    sget v0, Leuj$i;->text_user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    .line 50
    sget v0, Leuj$i;->text_user_name_append:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_calling:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$2;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final a(Lezd;I)V
    .locals 12
    .param p1, "data"    # Lezd;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    .line 3115
    iput-object v4, v0, Lezd;->b:Lezd$a;

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 4093
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 4094
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 4096
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->clearAnimation()V

    .line 4097
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0, v4, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4098
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    sget v1, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setImageResource(I)V

    .line 4099
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 4101
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4103
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 4105
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 4106
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->bringToFront()V

    .line 4108
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 4111
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4112
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_3
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->l:Lezd$a;

    .line 4115
    iput-object v1, v0, Lezd;->b:Lezd$a;

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    .line 4122
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_a

    .line 4123
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 4125
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 4126
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Leuj$l;->me_flag:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4127
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 4133
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4134
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4135
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    invoke-virtual {v0}, Lezd;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4136
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4137
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 4142
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    invoke-virtual {v0}, Lezd;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4143
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    invoke-virtual {v0}, Lezd;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4144
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 4145
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->a()V

    .line 4158
    :goto_2
    invoke-virtual {v1}, Lezd;->a()I

    move-result v0

    .line 4159
    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 4160
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 4161
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 4162
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4163
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 4164
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_status_calling:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x1

    .line 4165
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_accessibility_avatar:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4164
    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4167
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4168
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4169
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4170
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4171
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4172
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a(I)V

    .line 4173
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 4221
    :cond_5
    :goto_3
    return-void

    .line 4129
    :cond_6
    const-string/jumbo v0, ""

    .line 4130
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_0

    .line 4139
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4140
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->bringToFront()V

    goto/16 :goto_1

    .line 4147
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 4148
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    goto/16 :goto_2

    .line 4151
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 4152
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4155
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_guide_add_member:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 4174
    :cond_b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 4179
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 4180
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4181
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_accessibility_avatar:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4183
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4184
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4185
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4186
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4187
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 4188
    :cond_c
    if-nez v0, :cond_e

    .line 4189
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 4190
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 4191
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4192
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 4193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 4194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->text_color_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4195
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->text_color_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4196
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4197
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4199
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->h:Z

    if-nez v0, :cond_d

    .line 4200
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4202
    :cond_d
    invoke-virtual {v1}, Lezd;->b()I

    move-result v0

    .line 4203
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a(I)V

    goto/16 :goto_3

    .line 4204
    :cond_e
    const/16 v2, 0x10

    if-ne v0, v2, :cond_10

    .line 4205
    invoke-virtual {v1}, Lezd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4206
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lezd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4210
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4211
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4212
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 4213
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 4214
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Leuj$h;->conf_add_member_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 4215
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 4216
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->bringToFront()V

    .line 4217
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_guide_add_member:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4219
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4220
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4221
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 4208
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_guide_add_member:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 4222
    :cond_10
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 4223
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_accessibility_avatar:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4226
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4227
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4228
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4229
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4230
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
