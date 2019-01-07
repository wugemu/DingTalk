.class public Lcom/alibaba/android/user/external/manage/LabelSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "LabelSettingActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private c:J

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private e:Lfnu;

.field private f:Ldq;

.field private g:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->g:Z

    .line 73
    new-instance v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;-><init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    .line 3256
    sget-object v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 3257
    new-instance v1, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;-><init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lfnu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->e:Lfnu;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    .line 3278
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3279
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    :goto_0
    return-void

    .line 3281
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 3282
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->e:Lfnu;

    invoke-virtual {v0, p1}, Lfnu;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    sget v0, Lezg$j;->activity_label_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->setContentView(I)V

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->c:J

    .line 1169
    sget v0, Lezg$l;->dt_external_contact_label_setting_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1171
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 1173
    new-instance v0, Lfnu;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->c:J

    invoke-direct {v0, p0, v2, v3}, Lfnu;-><init>(Landroid/app/Activity;J)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->e:Lfnu;

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->e:Lfnu;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2160
    const-string/jumbo v1, "action_key_save_label_group"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2161
    const-string/jumbo v1, "action_key_delete_label_group"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2162
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->f:Ldq;

    .line 2163
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->f:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2199
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->showLoadingDialog()V

    .line 2200
    sget-object v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 2201
    new-instance v1, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;-><init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    iget-boolean v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->g:Z

    if-eqz v1, :cond_0

    .line 180
    sget v1, Lezg$l;->action_add:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 181
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 184
    .end local v0    # "menuItemSent":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->f:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->f:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 155
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2287
    :pswitch_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/external/label_group_edit.html"

    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$4;-><init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
