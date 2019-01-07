.class public Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;,
        Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;,
        Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Lbxx;

.field private m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 314
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    return-object p1
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-nez v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->a:Landroid/widget/TextView;

    sget v3, Lbtp$g;->dt_lv_end_title:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lbyj;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->f:Landroid/widget/Button;

    sget v3, Lbtp$b;->ui_common_level1_text_color:I

    invoke-static {p0, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->f:Landroid/widget/Button;

    sget v3, Lbtp$d;->ui_common_level3_button_bg:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 150
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->d:Landroid/widget/TextView;

    sget v3, Lbtp$g;->dt_lv_saved_group_live_list:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;>;"
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v2, Lbtp$g;->dt_lv_live_duration:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->duration:J

    invoke-static {v4, v5}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->parseAppointmentTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v2, Lbtp$g;->dt_lv_live_praise_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->praiseCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v2, Lbtp$g;->dt_lv_watched_people_number:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->uv:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v2, Lbtp$g;->dt_lv_live_message_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->messageCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->h:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;

    .line 3262
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->a:Ljava/util/List;

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->h:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 134
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->a:Landroid/widget/TextView;

    sget v3, Lbtp$g;->dt_lv_live_end:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 153
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->d:Landroid/widget/TextView;

    sget v3, Lbtp$g;->dt_lv_record_not_save_by_setting:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 3248
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->recordSeenLevelReason:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    .line 156
    :goto_4
    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->d:Landroid/widget/TextView;

    sget v3, Lbtp$g;->dt_lv_no_save_by_time_less:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_6
    move v1, v2

    .line 3248
    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->a()V

    return-void
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->k:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->recordSeenLevel:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->recordSeenLevelReason:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 209
    .local v0, "id":I
    sget v2, Lbtp$e;->btn_action:I

    if-ne v0, v2, :cond_1

    .line 210
    const-string/jumbo v2, "live_stream_end_back_click"

    invoke-static {v2}, Lcps;->a(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, p0, v4, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget v2, Lbtp$e;->iv_back:I

    if-ne v0, v2, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->finish()V

    goto :goto_0

    .line 214
    :cond_2
    sget v2, Lbtp$e;->btn_share:I

    if-ne v0, v2, :cond_5

    .line 215
    const-string/jumbo v2, "live_stream_end_share_click"

    invoke-static {v2}, Lcps;->a(Ljava/lang/String;)V

    .line 4225
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4226
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lbtp$g;->dt_lv_record_not_save_by_setting:I

    .line 4229
    :goto_1
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4230
    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lbtp$g;->dt_common_confirm:I

    .line 4231
    invoke-virtual {v2, v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 4232
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 4226
    :cond_3
    sget v2, Lbtp$g;->dt_lv_no_save_by_time_less:I

    goto :goto_1

    .line 4234
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->l:Lbxx;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->j:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->k:J

    .line 5056
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lbxx;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5060
    new-instance v5, Lbxx$1;

    invoke-direct {v5, v2, v3, v6, v7}, Lbxx$1;-><init>(Lbxx;Ljava/lang/String;J)V

    .line 5078
    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v2, v2, Lbxx;->a:Landroid/app/Activity;

    invoke-static {v5, v3, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 5079
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v3, v2, v4}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_5
    sget v2, Lbtp$e;->tv_view_details:I

    if-ne v0, v2, :cond_0

    .line 218
    const-string/jumbo v2, "live_stream_view_statistics_click"

    invoke-static {v2}, Lcps;->a(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-nez v2, :cond_6

    move-object v1, v3

    .line 220
    .local v1, "title":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->j:Ljava/lang/String;

    invoke-static {p0, v2, v4, v1, v3}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 219
    .end local v1    # "title":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->title:Ljava/lang/String;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lbtp$f;->activity_live_data:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->setContentView(I)V

    .line 1077
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "cid"

    invoke-static {v0, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->i:Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_extra_live_uuid"

    invoke-static {v0, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->j:Ljava/lang/String;

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_extra_open_id"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->k:J

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_extra_live_statistics"

    invoke-static {v0, v3}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1084
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "LiveDataActivity params incorrect, cid="

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->i:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string/jumbo v3, ", uuid="

    aput-object v3, v0, v7

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->j:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    const-string/jumbo v3, "live"

    invoke-static {v3, v6, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 68
    :goto_0
    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->finish()V

    .line 2092
    :cond_1
    sget v0, Lbtp$e;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2093
    invoke-static {p0, v0}, Lbyh;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ImageView;)V

    .line 2094
    invoke-static {p0, v0}, Lbyf;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/view/View;)V

    .line 2096
    sget v0, Lbtp$e;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->a:Landroid/widget/TextView;

    .line 2097
    sget v0, Lbtp$e;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->e:Landroid/widget/TextView;

    .line 2098
    sget v0, Lbtp$e;->tv_summary:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->d:Landroid/widget/TextView;

    .line 2099
    sget v0, Lbtp$e;->tv_live_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->c:Landroid/widget/TextView;

    .line 2100
    sget v0, Lbtp$e;->tv_view_details:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->b:Landroid/widget/TextView;

    .line 2101
    sget v0, Lbtp$e;->btn_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->f:Landroid/widget/Button;

    .line 2102
    sget v0, Lbtp$e;->btn_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->g:Landroid/widget/Button;

    .line 2104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->b:Landroid/widget/TextView;

    new-array v3, v7, [Ljava/lang/String;

    sget v4, Lbtp$g;->dt_lv_view_detailed_data:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, " >"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2107
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v3, Lbtp$g;->dt_lv_live_duration:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v3, Lbtp$g;->dt_lv_live_praise_count:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v3, Lbtp$g;->dt_lv_watched_people_number:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    sget v3, Lbtp$g;->dt_lv_live_message_count:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;-><init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;B)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->h:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;

    .line 2112
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->h:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;

    .line 2262
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->a:Ljava/util/List;

    .line 2113
    sget v0, Lbtp$e;->grid_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 2114
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->h:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3120
    sget v0, Lbtp$e;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3121
    sget v0, Lbtp$e;->btn_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3122
    sget v0, Lbtp$e;->btn_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3123
    sget v0, Lbtp$e;->tv_view_details:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3174
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->m:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    if-eqz v0, :cond_3

    .line 3175
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->a()V

    .line 73
    :goto_1
    new-instance v0, Lbxx;

    invoke-direct {v0, p0}, Lbxx;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->l:Lbxx;

    .line 74
    return-void

    :cond_2
    move v0, v1

    .line 1088
    goto/16 :goto_0

    .line 3178
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;)V

    .line 3196
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3197
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lbxe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;->l:Lbxx;

    invoke-virtual {v0}, Lbxx;->i()V

    .line 203
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 204
    return-void
.end method
