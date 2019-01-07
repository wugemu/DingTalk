.class public Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailMeetingDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 52
    .line 3090
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-eqz v0, :cond_0

    .line 3091
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laxo$i;->mail_assistant_no_subject:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3094
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laxo$i;->mail_no_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3097
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    .line 3098
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3099
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$i;->alm_cmail_meeting_location:I

    .line 3100
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$i;->no_location_label:I

    .line 3101
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 3099
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3106
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$i;->alm_cmail_meeting_time:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 3108
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v6, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    invoke-static {v3, v4, v5, v6, v7}, Lsc;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 3106
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3111
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->b()V

    .line 3112
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3114
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_0
    return-void

    .line 3091
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    goto/16 :goto_0

    .line 3094
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    const-string/jumbo v2, "<img[^>]*>"

    const-string/jumbo v3, ""

    .line 3095
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 3103
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$i;->alm_cmail_meeting_location:I

    .line 3104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v8

    .line 3103
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private a(ZLjava/lang/String;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    if-nez p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->act_bar_btn_bg_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->alm_user_info_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private b()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/32 v12, 0xdbba0

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 125
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-eqz v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    .line 128
    .local v2, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v2, v6

    .line 129
    .local v4, "timeInterval":J
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v0, v6, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    .line 130
    .local v0, "endTime":J
    cmp-long v6, v4, v12

    if-lez v6, :cond_1

    .line 131
    const/4 v6, 0x1

    sget v7, Laxo$i;->mail_meeting_ding:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a(ZLjava/lang/String;)V

    .line 140
    .end local v0    # "endTime":J
    .end local v2    # "startTime":J
    .end local v4    # "timeInterval":J
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v0    # "endTime":J
    .restart local v2    # "startTime":J
    .restart local v4    # "timeInterval":J
    :cond_1
    cmp-long v6, v4, v12

    if-gez v6, :cond_2

    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    .line 133
    sget v6, Laxo$i;->meeting_will_start:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v10, v6}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    cmp-long v6, v4, v8

    if-gez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 135
    sget v6, Laxo$i;->meeting_already_start:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v10, v6}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 137
    sget v6, Laxo$i;->meeting_is_over:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v10, v6}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 172
    .local v0, "id":I
    sget v1, Laxo$f;->rl_participant:I

    if-ne v1, v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v7, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ZLcma;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget v1, Laxo$f;->ll_send_ding:I

    if-ne v1, v0, :cond_0

    .line 2181
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-eqz v1, :cond_0

    .line 2185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2186
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2190
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2191
    new-array v3, v9, [Ljava/lang/String;

    sget v4, Laxo$i;->mail_meeting_ding_txt1:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Laxo$i;->alm_cmail_mail_no_subject:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    sget v2, Laxo$i;->mail_meeting_ding_txt3:I

    .line 2193
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    .line 2191
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2827
    :goto_2
    const-string/jumbo v3, "ding_meeting_remind_click"

    invoke-static {v3}, Lafe;->a(Ljava/lang/String;)V

    .line 2203
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2204
    const-string/jumbo v4, "ding_source"

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2205
    const-string/jumbo v4, "ding_text_content"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const-string/jumbo v2, "seleced_members"

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2208
    const-string/jumbo v1, "ding_choose_send_time"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v4, v2, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    const-wide/32 v6, 0xdbba0

    sub-long/2addr v4, v6

    .line 2209
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 2208
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2210
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    .line 2211
    invoke-virtual {v1, p0, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2191
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    goto :goto_1

    .line 2195
    :cond_3
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    sget v4, Laxo$i;->mail_meeting_ding_txt1:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Laxo$i;->alm_cmail_mail_no_subject:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    sget v2, Laxo$i;->mail_meeting_ding_txt2:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    aput-object v5, v4, v8

    .line 2197
    invoke-virtual {p0, v2, v4}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    sget v2, Laxo$i;->mail_meeting_ding_txt3:I

    .line 2198
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 2195
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->g:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v1, Laxo$g;->activity_mail_meeting_detail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->setContentView(I)V

    .line 1143
    sget v1, Laxo$f;->tv_subject:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a:Landroid/widget/TextView;

    .line 1144
    sget v1, Laxo$f;->tv_remark_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->b:Landroid/widget/TextView;

    .line 1145
    sget v1, Laxo$f;->alm_event_panel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->c:Landroid/view/View;

    .line 1146
    sget v1, Laxo$f;->alm_event_meeting_addr:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->e:Landroid/widget/TextView;

    .line 1147
    sget v1, Laxo$f;->alm_event_meeting_time:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->f:Landroid/widget/TextView;

    .line 1148
    sget v1, Laxo$f;->ll_send_ding:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->h:Landroid/view/View;

    .line 1149
    sget v1, Laxo$f;->rl_participant:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->d:Landroid/view/View;

    .line 1150
    sget v1, Laxo$f;->tv_ding:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->i:Landroid/widget/TextView;

    .line 1151
    sget v1, Laxo$f;->iv_ding:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->j:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v1, "mail_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->k:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1216
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;)V

    .line 1229
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    .line 1230
    invoke-static {v2}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    .line 1231
    if-nez v2, :cond_2

    .line 1232
    const-string/jumbo v1, "MailMeetingDetailActivity"

    const-string/jumbo v2, "mailApi == null"

    invoke-static {v1, v2}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->finish()V

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1236
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->k:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 249
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->b()V

    .line 122
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 244
    return-void
.end method
