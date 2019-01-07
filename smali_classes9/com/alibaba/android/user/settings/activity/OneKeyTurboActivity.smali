.class public Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OneKeyTurboActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

.field private h:J

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 154
    new-instance v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->i:Landroid/view/View$OnClickListener;

    .line 164
    new-instance v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->j:Landroid/view/View$OnClickListener;

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->h:J

    return-wide v0
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 204
    .line 6130
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6131
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lezg$l;->dt_one_key_turbo_clear_doing:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6132
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6133
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6134
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6135
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6136
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_one_key_turbo_clear_action:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6137
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6138
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    .local v0, "startTime":J
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v2, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 6294
    iput-object v2, v4, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a:Lcom/alibaba/wukong/Callback;

    .line 6295
    iget-boolean v2, v4, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b:Z

    if-nez v2, :cond_0

    .line 6297
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b:Z

    .line 6299
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 6302
    const-string/jumbo v3, "turbo_clean_message"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 6303
    const-string/jumbo v3, "DD"

    const-string/jumbo v5, "turbo_clean_message"

    const-string/jumbo v6, "totalTime"

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6305
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v5, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    invoke-direct {v5, v4, v2}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;Lcom/alibaba/doraemon/statistics/Statistics;)V

    invoke-interface {v3, v5}, Lcom/alibaba/wukong/im/ConversationService;->clearInactiveConversations(Lcom/alibaba/wukong/Callback;)V

    .line 229
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;
    .param p1, "x1"    # J

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 31
    .line 7110
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7111
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_one_key_turbo_clear_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7113
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7114
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7115
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7116
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7117
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 7118
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_one_key_turbo_no_need_clear_action:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7119
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7120
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    .line 7122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_one_key_turbo_clear_action:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7123
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7124
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7125
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;
    .param p1, "x1"    # J

    .prologue
    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 31
    .line 7142
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7143
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7144
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7145
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7146
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7147
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->e:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_one_key_turbo_clear_result:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7148
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_one_key_turbo_clear_complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7149
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7150
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7151
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .line 5265
    iget-boolean v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b:Z

    .line 81
    if-eqz v0, :cond_0

    .line 82
    sget v0, Lezg$l;->dt_one_key_turbo_clear_doing:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lezg$j;->activity_settings_one_key_turbo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->setContentView(I)V

    .line 1089
    sget v0, Lezg$h;->guide_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    .line 1090
    sget v0, Lezg$h;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b:Landroid/view/View;

    .line 1091
    sget v0, Lezg$h;->space_size:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c:Landroid/widget/TextView;

    .line 1092
    sget v0, Lezg$h;->clear_done:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->d:Landroid/view/View;

    .line 1093
    sget v0, Lezg$h;->free_size:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->e:Landroid/widget/TextView;

    .line 1094
    sget v0, Lezg$h;->action_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    .line 51
    invoke-static {}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a()Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .line 1265
    iget-boolean v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b:Z

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b()V

    .line 59
    :goto_0
    const-string/jumbo v0, "setting_general_clean_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 60
    return-void

    .line 3098
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3099
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_one_key_turbo_scan:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3100
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3101
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3102
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3103
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3104
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_one_key_turbo_clear_action:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3105
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3106
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->f:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2173
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    new-instance v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3275
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 3276
    new-instance v3, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;

    invoke-direct {v3, v1, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b()V

    .line 65
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->g:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .line 4265
    iget-boolean v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b:Z

    .line 71
    if-eqz v0, :cond_0

    .line 72
    sget v0, Lezg$l;->dt_one_key_turbo_clear_doing:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
