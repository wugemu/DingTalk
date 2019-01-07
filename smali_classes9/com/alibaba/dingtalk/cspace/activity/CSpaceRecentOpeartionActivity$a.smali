.class final Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;
.super Ljava/lang/Object;
.source "CSpaceRecentOpeartionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

.field private b:Lght;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Lght;)V
    .locals 1
    .param p2, "CSpaceRecentFileModel"    # Lght;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->c:I

    .line 477
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->d:I

    .line 480
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    .line 481
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v6, 0x1

    .line 474
    .line 1541
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1546
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v0, v0, Lght;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v2, v2, Lght;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v3, v3, Lght;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v3, Lfzs$h;->send_action:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v2, v2, Lght;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v3, v3, Lght;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1552
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v2, v2, Lght;->k:Ljava/lang/Integer;

    .line 2033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1552
    if-eq v2, v6, :cond_2

    .line 1553
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v3, Lfzs$h;->cspace_menu_forward_email:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v3, v3, Lght;->n:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1556
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v3, v3, Lght;->e:Ljava/lang/String;

    .line 1555
    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1557
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v3, Lfzs$h;->dt_cspace_action_print:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1591
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;Lght;I)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;
    .param p1, "x1"    # Lght;
    .param p2, "x2"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 474
    .line 2600
    if-eqz p1, :cond_0

    .line 2604
    iget-object v0, p1, Lght;->l:Ljava/lang/Integer;

    .line 3033
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2604
    if-ne v0, v4, :cond_2

    .line 2605
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->showLoadingDialogDelay(J)V

    .line 2606
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;I)V

    .line 2643
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2644
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v1, p1, Lght;->i:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string/jumbo v1, "0"

    :goto_0
    invoke-static {v2, v1, v0}, Lgpr;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 2648
    :cond_0
    :goto_1
    return-void

    .line 2644
    :cond_1
    iget-object v1, p1, Lght;->i:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2647
    :cond_2
    if-nez p2, :cond_3

    .line 2648
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "space_send_contact_success_click"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lfzu;->a(Landroid/content/Context;JLght;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_1

    .line 2649
    :cond_3
    if-ne p2, v4, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    invoke-static {v0, v2, v3, v1}, Lfzu;->a(Landroid/content/Context;JLght;)V

    goto :goto_1
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 486
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_recent_more_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    if-nez v1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v1, v1, Lght;->j:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 492
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 494
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v2, Lfzs$h;->dt_cspace_recent_file_delete_file_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v1, v1, Lght;->p:Ljava/lang/String;

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 499
    invoke-static {}, Lgpz;->a()Lgpz;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v1, v1, Lght;->n:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpz;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v2, Lfzs$h;->dt_cspace_org_file_send_denied:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->showLoadingDialogDelay(J)V

    .line 506
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)V

    .line 536
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    check-cast v0, Lcma;

    .line 537
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v2, v2, Lght;->i:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->b:Lght;

    iget-object v3, v3, Lght;->b:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
