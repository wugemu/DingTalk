.class public Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfGlobalDialogActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->g:I

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conf.globaldialog.close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "global_dialog_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "positiveBtn"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p0, :cond_0

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/conf_dialog"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$2;

    invoke-direct {v2, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 179
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 180
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v0, Leuj$a;->conf_redpacktes_alpha_in:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "negativeBtn"    # Ljava/lang/String;
    .param p2, "positiveBtn"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p5, "net"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    .line 83
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/page/conf_dialog"

    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 106
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 107
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v0, Leuj$a;->conf_redpacktes_alpha_in:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    .line 3313
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3314
    :cond_0
    :goto_0
    return-void

    .line 3316
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 234
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 235
    const/4 v0, 0x0

    sget v1, Leuj$a;->conf_redpacktes_alpha_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->overridePendingTransition(II)V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    sget v0, Leuj$j;->activity_teleconf_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->setContentView(I)V

    .line 198
    const-string/jumbo v0, "tele_conf"

    invoke-static {v0}, Leyu;->a(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1240
    if-eqz v1, :cond_0

    .line 1241
    const-string/jumbo v0, "global_dialog_type"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->g:I

    .line 1242
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->g:I

    if-gez v0, :cond_2

    .line 1243
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid dialog type"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->finish()V

    .line 1320
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->h:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 1321
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->h:Landroid/content/BroadcastReceiver;

    .line 1333
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.conf.globaldialog.close"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1334
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 201
    return-void

    .line 1247
    :cond_2
    const-string/jumbo v0, "global_dialog_negative_btn"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->e:Ljava/lang/String;

    .line 1248
    const-string/jumbo v0, "global_dialog_positive_btn"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->f:Ljava/lang/String;

    .line 1249
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->d:Ljava/lang/String;

    .line 1250
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1251
    const-string/jumbo v0, "conf_call_to_user_identity"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1252
    const-string/jumbo v0, "conf_voip_other_net"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 219
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2340
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->h:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :cond_0
    :goto_0
    return-void

    .line 2343
    :catch_0
    move-exception v0

    .line 2344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 226
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->d:Ljava/lang/String;

    .line 2258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    .local v0, "isSuccess":Z
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->finish()V

    .line 210
    :cond_2
    return-void

    .line 2262
    .end local v0    # "isSuccess":Z
    :cond_3
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2263
    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2264
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2265
    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$3;

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v4, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2288
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2289
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$4;

    invoke-direct {v1, p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v4, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2298
    :cond_5
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 2299
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2300
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2301
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 2302
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 2305
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method
