.class public Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveReplayLinkShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->c:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    return-object p1
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 193
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->c:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-nez v2, :cond_1

    .line 194
    const-string/jumbo v2, "copy failed, live info is null"

    .line 3013
    const-string/jumbo v3, "live"

    invoke-static {v3, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->c:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->publicLandingUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    const-string/jumbo v2, "copy failed, publicLandingUrl is null"

    .line 4013
    const-string/jumbo v3, "live"

    invoke-static {v3, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 203
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->c:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->publicLandingUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 206
    sget v2, Lbtp$g;->dt_common_copy_success:I

    invoke-static {v2}, Lcms;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "setPrimaryClip failed, error="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5013
    const-string/jumbo v3, "live"

    invoke-static {v3, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    .line 5115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 5117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 8
    .param p1, "isChecked"    # Z
    .param p2, "rpcUpdate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v0, Lbtp$g;->dt_lv_replay_public_share_on_tips:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    if-eqz p2, :cond_0

    .line 128
    if-eqz p1, :cond_2

    const/4 v7, 0x1

    .line 129
    .local v7, "type":I
    :goto_1
    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;Z)V

    .line 152
    .local v2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    const-class v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v2, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 153
    .restart local v2    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->b:Ljava/lang/String;

    .line 2469
    new-instance v0, Lbxe$26;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v7}, Lbxe$26;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2475
    invoke-virtual {v0}, Lbxe$26;->start()V

    .line 155
    .end local v2    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    .end local v7    # "type":I
    :cond_0
    return-void

    .line 125
    :cond_1
    sget v0, Lbtp$g;->dt_lv_replay_link_off_footer_tips:I

    goto :goto_0

    :cond_2
    move v7, v3

    .line 128
    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a(ZZ)V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 104
    .local v0, "id":I
    sget v1, Lbtp$e;->layout_copy_link:I

    if-ne v0, v1, :cond_0

    .line 2159
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->c:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->c:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->publicLandingUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2160
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a()V

    :cond_0
    :goto_0
    return-void

    .line 2162
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->showLoadingDialog()V

    .line 2163
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;)V

    .line 2187
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 2188
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lbxe;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lbtp$f;->activity_live_replay_link_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->setContentView(I)V

    .line 1065
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a:Ljava/lang/String;

    .line 1066
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_live_uuid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->b:Ljava/lang/String;

    .line 2052
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lbtp$g;->dt_lv_replay_share_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 2055
    :cond_0
    sget v0, Lbtp$e;->tv_copy:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->d:Landroid/view/View;

    .line 2056
    sget v0, Lbtp$e;->tv_copy_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->e:Landroid/view/View;

    .line 2057
    sget v0, Lbtp$e;->layout_copy_link:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->f:Landroid/view/View;

    .line 2058
    sget v0, Lbtp$e;->tv_share_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->g:Landroid/widget/TextView;

    .line 2059
    sget v0, Lbtp$e;->toggle_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 2060
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2061
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2071
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->showLoadingDialog()V

    .line 2072
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;)V

    .line 2097
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2098
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lbxe;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 49
    return-void
.end method
