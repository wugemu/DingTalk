.class public Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleVideoConfRecordActivity.java"

# interfaces
.implements Lexa$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Leuk;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lexa$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->j:Z

    .line 75
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->k:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;IILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    .line 3368
    if-lez p2, :cond_1

    .line 3373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3374
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3375
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3377
    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3378
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    invoke-virtual {v1}, Lewh;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3380
    const-string/jumbo v1, "intent_key_support_fix_line"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3382
    :cond_0
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3384
    const-string/jumbo v1, "intent_key_show_conference_room"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3390
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 58
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 58
    .line 4296
    if-nez p1, :cond_0

    .line 4297
    :goto_0
    return-void

    .line 4299
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/businessConference/schedule_datail.html"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->m:Lexa$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 58
    .line 5278
    if-nez p1, :cond_0

    .line 5279
    :goto_0
    return-void

    .line 5281
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/businessConference/control.html"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 58
    .line 6252
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6255
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6256
    sget v1, Leuj$l;->delete_tele_record:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->sure:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    .line 6257
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 6268
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 6274
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->j:Z

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 427
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 395
    return-object p0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b:Leuk;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b:Leuk;

    invoke-virtual {v0, p1}, Leuk;->b(Ljava/util/List;)V

    .line 403
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 437
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->ui_common_content_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 84
    sget v0, Leuj$j;->activity_teleconf_video_record_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->setContentView(I)V

    .line 1104
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_1

    .line 1106
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_0

    .line 1109
    :try_start_0
    const-string/jumbo v2, "corpid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_1

    .line 1117
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    const-string/jumbo v1, "corpid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->l:Ljava/lang/String;

    .line 1125
    :cond_1
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->k:I

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->m:Lexa$a;

    if-nez v0, :cond_2

    .line 1128
    new-instance v0, Lexk;

    invoke-direct {v0, p0}, Lexk;-><init>(Lexa$b;)V

    .line 1133
    :cond_2
    sget v0, Leuj$i;->btn_create_video_conf:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->d:Landroid/widget/Button;

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    sget v0, Leuj$i;->btn_order_conference:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->e:Landroid/widget/Button;

    .line 1155
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    sget v0, Leuj$i;->ll_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->f:Landroid/view/View;

    .line 1175
    sget v0, Leuj$i;->empty_video_conf:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->g:Landroid/view/View;

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    sget v0, Leuj$i;->rl_no_video_conf:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->h:Landroid/widget/ImageView;

    .line 1185
    invoke-static {p0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1188
    sget v0, Leuj$i;->list_records:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->c:Landroid/widget/ListView;

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1239
    new-instance v0, Leuk;

    invoke-direct {v0, p0}, Leuk;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b:Leuk;

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b:Leuk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1242
    sget v0, Leuj$l;->and_conference_video_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1312
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->i:Landroid/content/BroadcastReceiver;

    .line 1347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1348
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    const-string/jumbo v1, "com.workapp.teleconf.control.reservation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1350
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2246
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->m:Lexa$a;

    if-eqz v0, :cond_3

    .line 2247
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->m:Lexa$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lexa$a;->a(Z)V

    .line 90
    :cond_3
    return-void

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1186
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    .line 2354
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2355
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->i:Landroid/content/BroadcastReceiver;

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 101
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 95
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lexa$a;

    .line 2417
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->m:Lexa$a;

    .line 58
    return-void
.end method
