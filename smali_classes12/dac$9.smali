.class final Ldac$9;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic d:Ldac;


# direct methods
.method constructor <init>(Ldac;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Ldac;

    .prologue
    .line 630
    iput-object p1, p0, Ldac$9;->d:Ldac;

    iput-object p2, p0, Ldac$9;->a:Landroid/app/Activity;

    iput-object p3, p0, Ldac$9;->b:Lcom/alibaba/wukong/im/Message;

    iput-object p4, p0, Ldac$9;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/32 v10, 0x493e0

    const-wide/16 v0, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 633
    iget-object v2, p0, Ldac$9;->a:Landroid/app/Activity;

    iget-object v3, p0, Ldac$9;->b:Lcom/alibaba/wukong/im/Message;

    iget-object v4, p0, Ldac$9;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1592
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    const-string/jumbo v5, "ding_remind_time"

    invoke-interface {v3, v5}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1598
    const-string/jumbo v5, "ding_remind_time"

    invoke-interface {v3, v5}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2044
    invoke-static {v5, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1601
    :cond_2
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 1602
    cmp-long v5, v0, v10

    if-gtz v5, :cond_4

    .line 1603
    sub-long v0, v10, v0

    .line 1604
    const-wide/32 v4, 0xea60

    div-long v4, v0, v4

    long-to-int v3, v4

    .line 1605
    if-nez v3, :cond_3

    .line 1606
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$i;->dt_ding_second_AT:I

    new-array v5, v8, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldjm;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1611
    :goto_1
    const-string/jumbo v0, "chat_single_unconfirm_cannot_ding"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1608
    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_ding_minute_AT:I

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldjm;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1613
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1614
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2621
    const-string/jumbo v1, "chat_single_unconfirm_click"

    invoke-static {v1}, Lcps;->a(Ljava/lang/String;)V

    .line 2622
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2623
    sget v3, Lctk$i;->dt_message_to_ding_remind_agin_title:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2624
    sget v3, Lctk$b;->message_to_ding_remind_type:I

    new-instance v5, Ldjm$3;

    invoke-direct {v5, v4, v0, v2}, Ldjm$3;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2659
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ldjm$4;

    invoke-direct {v1}, Ldjm$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2664
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method
