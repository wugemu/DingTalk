.class public Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChatThemeSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ldgf$b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ldgf$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;

    .prologue
    .line 35
    .line 5094
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;)V

    .line 5121
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5122
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v1

    invoke-virtual {v1}, Ldyn;->h()Ldfs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Ldfs;->a(Ljava/lang/String;ILcma;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 207
    .line 2221
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->dismissLoadingDialog()V

    .line 210
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 214
    .line 3221
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 200
    .line 1221
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->showLoadingDialog()V

    .line 203
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 221
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 180
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 162
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 166
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->e:Ldgf$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p3}, Ldgf$a;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 227
    .local v0, "id":I
    sget v1, Lctk$f;->layout_select_image:I

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->e:Ldgf$a;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ldgf$a;->a(I)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    sget v1, Lctk$f;->tv_clear:I

    if-ne v0, v1, :cond_0

    .line 230
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lctk$i;->dt_im_chat_group_background_clear_warning_title:I

    .line 231
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_chat_group_background_clear_warning_msg:I

    .line 232
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_common_cancel:I

    const/4 v3, 0x0

    .line 233
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_common_confirm:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;)V

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lctk$g;->activity_chat_theme_set:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->setContentView(I)V

    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "cid"

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->a:Ljava/lang/String;

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_menu_seed"

    invoke-static {v0, v2, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->b:J

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_chat_theme_item"

    invoke-static {v0, v2}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    sget v0, Lctk$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1065
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->finish()V

    move v0, v1

    .line 50
    :goto_0
    if-nez v0, :cond_2

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 1069
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v2, Lctk$i;->dt_im_chat_group_background:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setTitle(I)V

    .line 1077
    :cond_3
    new-instance v0, Ldgg;

    invoke-direct {v0, p0}, Ldgg;-><init>(Ldgf$b;)V

    .line 1079
    sget v0, Lctk$f;->tv_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->c:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1081
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    :goto_2
    sget v0, Lctk$f;->tv_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    sget v0, Lctk$f;->layout_select_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->d:Landroid/content/BroadcastReceiver;

    .line 1140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1141
    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->d:Landroid/content/BroadcastReceiver;

    .line 1143
    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1

    .line 1083
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->d:Landroid/content/BroadcastReceiver;

    .line 158
    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ldgf$a;

    .line 4195
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeSetActivity;->e:Ldgf$a;

    .line 35
    return-void
.end method
