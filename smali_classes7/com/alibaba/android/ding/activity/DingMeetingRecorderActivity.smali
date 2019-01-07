.class public Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingMeetingRecorderActivity.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private g:Lbht;

.field private h:Z

.field private i:Lbfv;

.field private j:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lbfv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;Lbfv;)Lbfv;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;
    .param p1, "x1"    # Lbfv;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->i:Lbfv;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 38
    .line 9230
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 9231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9232
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 9234
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9235
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 38
    .line 3197
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->i:Lbfv;

    if-nez v0, :cond_1

    .line 3198
    :cond_0
    :goto_0
    return-void

    .line 3200
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->i:Lbfv;

    .line 4036
    iget-wide v2, v0, Lbfv;->d:J

    .line 4205
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->g:Lbht;

    if-eqz v0, :cond_2

    .line 4206
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->g:Lbht;

    .line 5053
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbht;->a:Z

    .line 4208
    :cond_2
    new-instance v1, Lbht;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V

    const-class v4, Lbht$a;

    .line 4209
    invoke-static {v0, v4, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbht$a;

    invoke-direct {v1, v2, v3, v0}, Lbht;-><init>(JLbht$a;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->g:Lbht;

    .line 4226
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->g:Lbht;

    invoke-virtual {v0}, Lbht;->a()V

    .line 5271
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 5274
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->d:Landroid/widget/TextView;

    .line 6255
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_3

    .line 6258
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6261
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6264
    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->h:Z

    if-eqz v0, :cond_3

    .line 6265
    sget v0, Laxp$i;->dt_ding_meeting_minutes_has_recorded:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5274
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6267
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 38
    .line 7116
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 7121
    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->j:Lckm$a;

    .line 7134
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->e:Ljava/lang/String;

    .line 8109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 7134
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->j:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbhi;->a(JLckm$a;)V

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 38
    .line 8164
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 9109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 8164
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    .line 8165
    invoke-static {v0, v6, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    .line 8164
    invoke-virtual/range {v1 .. v6}, Lbhi;->a(JJLcom/alibaba/wukong/Callback;)V

    .line 38
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Laxp$g;->ding_activity_ding_meeting_recorder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->setContentView(I)V

    .line 1094
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1095
    const-string/jumbo v0, "[DingMeetingRecorderPage]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->finish()V

    .line 1138
    :goto_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->e:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V

    const-class v3, Lcma;

    .line 1139
    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1138
    invoke-virtual {v1, v2, v0}, Lbbp;->c(Ljava/lang/String;Lcma;)V

    .line 63
    return-void

    .line 1099
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ding_id"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->e:Ljava/lang/String;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    const-string/jumbo v0, "[DingMeetingRecorderPage]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->finish()V

    goto :goto_0

    .line 1109
    :cond_1
    sget v0, Laxp$f;->rl_recorder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->a:Landroid/widget/RelativeLayout;

    .line 1110
    sget v0, Laxp$f;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1111
    sget v0, Laxp$f;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->c:Landroid/widget/TextView;

    .line 1112
    sget v0, Laxp$f;->tv_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->d:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    .line 2239
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_1

    .line 2242
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2245
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2248
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2251
    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->h:Z

    if-nez v1, :cond_1

    move v1, v2

    .line 79
    :goto_0
    if-eqz v1, :cond_0

    .line 80
    sget v1, Laxp$i;->dt_ding_meeting_recorder_menu_edit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 82
    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 90
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v3

    .line 2251
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->g:Lbht;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->g:Lbht;

    .line 2053
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbht;->a:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->g:Lbht;

    .line 72
    :cond_0
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->e:Ljava/lang/String;

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->j:Lckm$a;

    invoke-virtual {v0, v2, v3, v1}, Lbhi;->b(JLckm$a;)V

    .line 74
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 75
    return-void
.end method
