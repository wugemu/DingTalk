.class public Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "EventSelectRemindActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

.field private d:Lbay$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/dingtalkbase/BaseSelectView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->c:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->d:Lbay$a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->d:Lbay$a;

    invoke-interface {v0}, Lbay$a;->a()V

    .line 54
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Laxp$g;->ding_activity_event_select_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->setContentView(I)V

    .line 1069
    sget v0, Laxp$f;->view_select_remind_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    .line 1070
    sget v0, Laxp$f;->fl_send_type_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b:Landroid/widget/FrameLayout;

    .line 1071
    new-instance v0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->c:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->c:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    sget v1, Laxp$i;->dt_ding_create_remind_type_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a(I)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->c:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v0, Lbaz;

    new-instance v1, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity$a;-><init>(Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;B)V

    invoke-direct {v0, v1}, Lbaz;-><init>(Lbay$b;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->d:Lbay$a;

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->d:Lbay$a;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbay$a;->a(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->d:Lbay$a;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->d:Lbay$a;

    invoke-interface {v0}, Lbay$a;->a()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/EventSelectRemindActivity;->finish()V

    .line 65
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
