.class public Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "BurnChatSessionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

.field private b:Landroid/content/BroadcastReceiver;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->c:I

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->d:I

    .line 275
    return-void
.end method

.method private a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 178
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 181
    if-eqz p1, :cond_0

    .line 182
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;Lcma;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    .prologue
    const/4 v3, 0x0

    .line 40
    .line 2132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2133
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2134
    const-string/jumbo v1, "title"

    sget v2, Lctk$i;->create_burn_chat_conversation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2136
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;

    const-string/jumbo v2, "boss_create"

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;-><init>(Ljava/lang/String;)V

    .line 2137
    const-string/jumbo v2, "choose_people_from_contact_logic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2138
    const-string/jumbo v1, "show_local_contact"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2139
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a(Lcma;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    .prologue
    .line 40
    .line 2209
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2210
    sget v1, Lctk$i;->dt_im_secret_chat_add_friends_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2211
    sget v1, Lctk$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2212
    sget v1, Lctk$i;->and_add_friend:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2220
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lctk$g;->burn_chat_session_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->setContentView(I)V

    .line 1028
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v1, Lctk$g;->fragment_im_list_burn_chat_empty:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 1078
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->b:Z

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lctk$f;->root_view:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1155
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1158
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->b:Landroid/content/BroadcastReceiver;

    .line 1165
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 129
    return-void

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 228
    const/4 v2, 0x1

    sget v3, Lctk$i;->chat_action_bar_title_setting:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 229
    .local v0, "menuBurnSettingEnter":Landroid/view/MenuItem;
    sget v2, Lctk$e;->actbar_icon_emotion_settings:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 230
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 232
    sget v2, Lctk$i;->action_create:I

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 233
    .local v1, "menuItem":Landroid/view/MenuItem;
    sget v2, Lctk$e;->ic_actbar_more:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 234
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 236
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 243
    :pswitch_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_bathhouse_list_create"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 245
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->a(Lcma;)V

    goto :goto_0

    .line 267
    :pswitch_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_bathhouse_set_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
