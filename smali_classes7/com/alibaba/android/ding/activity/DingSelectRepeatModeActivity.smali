.class public Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingSelectRepeatModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private e:Lbba$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Lbba$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    .prologue
    const/4 v2, 0x0

    .line 31
    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 1362
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)V

    .line 1414
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 2366
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    invoke-interface {v1}, Lbba$a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->d:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    .line 31
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    invoke-interface {v0}, Lbba$a;->a()V

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Laxp$g;->ding_activity_ding_select_repeat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->setContentView(I)V

    .line 48
    sget v0, Laxp$i;->dt_create_event_item_repeat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1076
    sget v0, Laxp$f;->view_select_remind_frequency:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->setOnItemSelectedListener(Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;)V

    .line 1084
    sget v0, Laxp$f;->tv_repeat_frequency_deadline:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->c:Landroid/widget/TextView;

    .line 1085
    sget v0, Laxp$f;->layout_repeat_frequency_deadline:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->b:Landroid/view/View;

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Lbbb;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$a;-><init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;B)V

    invoke-direct {v0, v1}, Lbbb;-><init>(Lbba$b;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbba$a;->a(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->e:Lbba$a;

    invoke-interface {v0}, Lbba$a;->a()V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->finish()V

    .line 72
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
