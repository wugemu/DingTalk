.class public Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSignListActivity.java"


# instance fields
.field a:Z

.field b:Z

.field c:I

.field private d:Lrz;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ladc;

.field private h:Ladb;

.field private i:Laca;

.field private j:Landroid/widget/ExpandableListView;

.field private k:Landroid/widget/ListView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private m:Landroid/app/Activity;

.field private n:Landroid/content/BroadcastReceiver;

.field private o:J

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 63
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->d:Lrz;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->o:J

    .line 110
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a:Z

    .line 111
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;I)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    move v1, v2

    .line 11289
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 11290
    if-eq p1, v1, :cond_0

    .line 11291
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    invoke-virtual {v0, v2}, Laca;->a(Z)V

    .line 11292
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 11289
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 11294
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Laca;->a(Z)V

    .line 11295
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i:Laca;

    .line 11296
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i:Laca;

    .line 12065
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 12069
    iget-object v0, v0, Lacr;->i:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11298
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    invoke-virtual {v0}, Laca;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12164
    const-string/jumbo v0, "mail_sign_org"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 12201
    const-string/jumbo v0, "mail_signatureV2_EnableCorp"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 11301
    const-string/jumbo v0, "1"

    invoke-static {v0}, Lacq;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 12205
    :cond_2
    const-string/jumbo v0, "mail_signatureV2_EnablePerson"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 13168
    const-string/jumbo v0, "mail_sign_self"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 11308
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    invoke-virtual {v0}, Ladc;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;JI)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 60
    .line 13588
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    if-gez p3, :cond_1

    .line 13589
    :cond_0
    :goto_0
    return-void

    .line 13592
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(J)V

    .line 13593
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;J)V

    .line 13626
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13627
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lro;->a(JILcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;Lacz$a;Z)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
    .param p1, "x1"    # Lacz$a;
    .param p2, "x2"    # Z

    .prologue
    const/4 v1, 0x0

    .line 60
    .line 9415
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i:Laca;

    if-eqz v0, :cond_0

    .line 9418
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i:Laca;

    invoke-virtual {v0}, Laca;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9419
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i:Laca;

    iget v2, v0, Laca;->s:I

    .line 9511
    if-eqz p2, :cond_1

    .line 10185
    const-string/jumbo v0, "mail_signatureV2_OpenAll"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 9516
    :goto_0
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9517
    if-nez p2, :cond_2

    sget v0, Laxo$i;->dt_mail_enterprise_signature_turn_off_all:I

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9518
    if-nez p2, :cond_3

    sget v0, Laxo$i;->dt_mail_enterprise_signature_turn_off_all_des:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9519
    sget v0, Laxo$i;->sure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;

    invoke-direct {v4, p0, p2, v2}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;ZI)V

    invoke-virtual {v3, v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9534
    sget v0, Laxo$i;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$3;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;Z)V

    invoke-virtual {v3, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9543
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 9544
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9545
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 9419
    :cond_0
    :goto_3
    return-void

    .line 10193
    :cond_1
    const-string/jumbo v0, "mail_signatureV2_CloseAll"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9517
    :cond_2
    sget v0, Laxo$i;->dt_mail_enterprise_signature_turn_on_all:I

    goto :goto_1

    .line 9518
    :cond_3
    sget v0, Laxo$i;->dt_mail_enterprise_signature_turn_on_all_des:I

    goto :goto_2

    .line 9421
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h:Ladb;

    if-nez p2, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v2, v0}, Ladb;->a(Z)V

    .line 10430
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10431
    sget v1, Laxo$i;->dt_mail_enterprise_signature_turn_on_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10432
    sget v1, Laxo$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$13;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10439
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_3

    :cond_5
    move v0, v1

    .line 9421
    goto :goto_4
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->m:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 312
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(J)V

    .line 313
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-static {v2}, Laca;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 314
    .local v1, "models":Ljava/util/List;, "Ljava/util/List<Labr;>;"
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    .line 339
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 340
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lro;->a()Lro;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lro;->a(Ljava/util/List;Lcma;)V

    .line 341
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;JI)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 60
    .line 14549
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    if-gez p3, :cond_1

    .line 14550
    :cond_0
    :goto_0
    return-void

    .line 14553
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(J)V

    .line 14554
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;J)V

    .line 14583
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 14584
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    .line 15282
    const-string/jumbo v2, "MailRPC"

    const-string/jumbo v3, "closeOrgSignature"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15283
    new-instance v2, Lro$2;

    invoke-direct {v2, v1, v0}, Lro$2;-><init>(Lro;Lcma;)V

    .line 15300
    new-instance v0, Lzy;

    invoke-direct {v0}, Lzy;-><init>()V

    .line 15301
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lzy;->a:Ljava/lang/Long;

    .line 15302
    iget-object v1, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->closeOrgSignature(Lzy;Liyv;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    .line 9209
    const-string/jumbo v0, "mail_signatureV2_Edit"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 8405
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "CMailSignListActivity"

    invoke-static {p0, v0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    const/4 v2, 0x0

    .line 60
    .line 13252
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13253
    :cond_0
    const-string/jumbo v0, "CMailSignListActivity"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13255
    :goto_0
    return-void

    .line 13258
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 13259
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    move v1, v2

    .line 13260
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 13261
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    invoke-virtual {v0}, Laca;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13262
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 13263
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    .line 13315
    invoke-virtual {v3, v1}, Ladc;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    iput-object v0, v3, Ladc;->c:Laca;

    .line 13316
    iget-object v0, v3, Ladc;->c:Laca;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Laca;->a(Z)V

    .line 13260
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 13266
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    .line 13346
    iput-boolean v2, v0, Ladc;->b:Z

    .line 13267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    invoke-virtual {v0}, Ladc;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 344
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    sget v1, Laxo$i;->dt_cmail_network_error:I

    invoke-static {v1}, Lhcn;->a(I)V

    .line 393
    :goto_0
    return-void

    .line 348
    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(J)V

    .line 349
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    .line 391
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Laca;>;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Laca;>;>;"
    check-cast v0, Lcma;

    .line 392
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Laca;>;>;"
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lacr;->a(Ljava/lang/String;ZLcma;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->o:J

    return-wide v0
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 485
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    .line 7342
    iget-boolean v1, v1, Ladc;->b:Z

    .line 485
    if-eqz v1, :cond_2

    .line 486
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 487
    .local v0, "item":Laca;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laca;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7443
    if-eqz v0, :cond_1

    .line 7447
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(J)V

    .line 7448
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    .line 7479
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 7480
    invoke-static {}, Lro;->a()Lro;

    move-result-object v2

    .line 7481
    invoke-virtual {v0}, Laca;->a()Labr;

    move-result-object v3

    .line 7480
    invoke-virtual {v2, v3, v1}, Lro;->a(Labr;Lcma;)V

    .line 499
    .end local v0    # "item":Laca;
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a:Z

    if-eqz v1, :cond_3

    .line 494
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b()V

    goto :goto_0

    .line 496
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ladb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h:Ladb;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b:Z

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->finish()V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 60
    .line 15648
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h()V

    .line 60
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 248
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h()V

    .line 249
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b:Z

    .line 117
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i()V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v1, Laxo$g;->alm_cmail_fragment_mail_sign_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->setContentView(I)V

    .line 2152
    const-string/jumbo v1, "JustForStatisticActivity"

    const-string/jumbo v4, "mail_sign_list"

    invoke-static {v1, v4, v8}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e:Ljava/lang/String;

    .line 88
    iput-object p0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->m:Landroid/app/Activity;

    .line 2174
    sget v1, Laxo$g;->cmail_sign_header:I

    invoke-static {p0, v1, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    .line 2177
    sget v1, Laxo$f;->sign_list:I

    .line 2372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2177
    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    .line 2178
    sget v1, Laxo$f;->admin_option_list:I

    invoke-static {v4, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->k:Landroid/widget/ListView;

    .line 2181
    new-instance v1, Ladc;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->f:Ljava/util/List;

    new-instance v7, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$7;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    invoke-direct {v1, p0, v5, v6, v7}, Ladc;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ladc$c;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    .line 2202
    new-instance v1, Ladb;

    new-instance v5, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$8;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    invoke-direct {v1, p0, v5}, Ladb;-><init>(Landroid/app/Activity;Ladb$b;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h:Ladb;

    .line 2213
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h:Ladb;

    invoke-virtual {v1}, Ladb;->isEmpty()Z

    move-result v5

    .line 2214
    sget v1, Laxo$f;->admin_option_common_label:I

    .line 2376
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2214
    if-eqz v5, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2215
    sget v1, Laxo$f;->admin_option_label:I

    .line 3376
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2215
    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2217
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 2229
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 2237
    sget v1, Laxo$f;->list_empty_view:I

    .line 4372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2237
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 2238
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->h:Ladb;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2239
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v8}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 2241
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v4}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 2242
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 5143
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->n:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 5144
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->n:Landroid/content/BroadcastReceiver;

    .line 5156
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "action_mail_signature_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5157
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5632
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->p:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 5633
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->p:Landroid/content/BroadcastReceiver;

    .line 5643
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.workapp.PROFILE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5644
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 98
    return-void

    :cond_2
    move v1, v3

    .line 2214
    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 2215
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 105
    sget v0, Laxo$i;->dt_mail_preview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->q:Landroid/view/MenuItem;

    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->q:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 107
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 137
    .line 6163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 6164
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 6165
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->n:Landroid/content/BroadcastReceiver;

    .line 6167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->p:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 6168
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 6169
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->p:Landroid/content/BroadcastReceiver;

    .line 138
    :cond_1
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 139
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g:Ladc;

    .line 6359
    :try_start_0
    iget-object v0, v1, Ladc;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 6360
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 6361
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6363
    :catch_0
    move-exception v0

    .line 6364
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 6365
    iget-object v1, v1, Ladc;->a:Ljava/lang/String;

    const-string/jumbo v2, "cleanWebviews"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6366
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 132
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 123
    :sswitch_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b:Z

    .line 124
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i()V

    goto :goto_1

    .line 129
    :sswitch_1
    invoke-static {p0, v2, v2}, Lacg;->a(Landroid/content/Context;Landroid/net/Uri;Lcma;)V

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
