.class public Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingSelectGroupTaskBoardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

.field private b:Lbaw$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)Lbaw$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b:Lbaw$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b:Lbaw$a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b:Lbaw$a;

    invoke-interface {v0}, Lbaw$a;->a()V

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Laxp$g;->ding_activity_select_group_task_board:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->setContentView(I)V

    .line 40
    sget v0, Laxp$i;->dt_ding_select_group_task_board:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1069
    sget v0, Laxp$f;->v_selected_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->a:Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->setOnItemSelectedListener(Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;)V

    .line 44
    new-instance v0, Lbax;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;-><init>(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;B)V

    invoke-direct {v0, v1}, Lbax;-><init>(Lbaw$b;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b:Lbaw$a;

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b:Lbaw$a;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbaw$a;->a(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b:Lbaw$a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b:Lbaw$a;

    invoke-interface {v0}, Lbaw$a;->a()V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->finish()V

    .line 64
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
