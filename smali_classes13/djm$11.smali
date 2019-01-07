.class final Ldjm$11;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:I

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Ldjm$11;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldjm$11;->b:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldjm$11;->c:Lcom/alibaba/wukong/im/Conversation;

    iput p4, p0, Ldjm$11;->d:I

    iput-object p5, p0, Ldjm$11;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    .line 2527
    iget-object v0, p0, Ldjm$11;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Ldjm$11;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2531
    :cond_0
    sget v0, Lctk$i;->dt_im_create_ding_success_hud_title:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2532
    const-string/jumbo v0, "sendDingNotShowUI"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sendDingNotShowUI onSuccess msgId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ldjm$11;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    iget-object v0, p0, Ldjm$11;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldjm$11;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, p0, Ldjm$11;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 523
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 545
    iget-object v0, p0, Ldjm$11;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Ldjm$11;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 549
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v0, "431020"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 550
    iget-object v1, p0, Ldjm$11;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldjm$11;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjm$11;->b:Lcom/alibaba/wukong/im/Message;

    iget v4, p0, Ldjm$11;->d:I

    iget-object v5, p0, Ldjm$11;->e:Ljava/util/List;

    .line 1567
    if-eqz v1, :cond_1

    .line 1570
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v6, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1571
    invoke-virtual {v6, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1572
    sget v0, Lctk$i;->dt_ding_ignore_and_send:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ldjm$12;

    invoke-direct/range {v0 .. v5}, Ldjm$12;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;)V

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1578
    sget v0, Lctk$i;->cancel:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ldjm$2;

    invoke-direct {v1}, Ldjm$2;-><init>()V

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1583
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 557
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string/jumbo v0, "sendDingNotShowUI"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sendDingNotShowUI onException code:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", msgId="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Ldjm$11;->b:Lcom/alibaba/wukong/im/Message;

    .line 554
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 553
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 541
    return-void
.end method
