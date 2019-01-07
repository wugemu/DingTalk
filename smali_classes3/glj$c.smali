.class public final Lglj$c;
.super Lglj;
.source "SpaceLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public b:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field private final d:Lcom/alibaba/wukong/im/Conversation;

.field private e:Lgkl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 571
    invoke-direct {p0}, Lglj;-><init>()V

    .line 572
    iput-object p1, p0, Lglj$c;->a:Landroid/app/Activity;

    .line 573
    iput-object p2, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 574
    iput-object p3, p0, Lglj$c;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 575
    return-void
.end method

.method static synthetic a(Lglj$c;)V
    .locals 5
    .param p0, "x0"    # Lglj$c;

    .prologue
    .line 564
    .line 1666
    invoke-virtual {p0}, Lglj$c;->c()V

    .line 1668
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v0, p0, Lglj$c;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1670
    iget-object v0, p0, Lglj$c;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    sget v0, Lfzs$h;->dt_space_permission_recal_file_tips:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1675
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1676
    sget v0, Lfzs$h;->sure:I

    new-instance v2, Lglj$c$2;

    invoke-direct {v2, p0}, Lglj$c$2;-><init>(Lglj$c;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1683
    sget v0, Lfzs$h;->dt_common_cancel:I

    new-instance v2, Lglj$c$3;

    invoke-direct {v2, p0}, Lglj$c$3;-><init>(Lglj$c;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1690
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 564
    return-void

    .line 1673
    :cond_0
    sget v0, Lfzs$h;->dt_space_permission_recall_tips:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lglj$c;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lglj$c;)V
    .locals 5
    .param p0, "x0"    # Lglj$c;

    .prologue
    .line 564
    .line 1694
    invoke-virtual {p0}, Lglj$c;->b()V

    .line 1696
    iget-object v0, p0, Lglj$c;->e:Lgkl;

    if-nez v0, :cond_0

    .line 1697
    iget-object v0, p0, Lglj$c;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lglj$c;->a(Lcom/alibaba/wukong/im/Conversation;)Lgkl;

    move-result-object v0

    iput-object v0, p0, Lglj$c;->e:Lgkl;

    .line 1698
    iget-object v0, p0, Lglj$c;->e:Lgkl;

    if-nez v0, :cond_0

    .line 1699
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceLinkManager"

    const-string/jumbo v2, "checkAndRecallPermission: null mAclMember "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1703
    invoke-virtual {p0}, Lglj$c;->e()V

    .line 1704
    :goto_0
    return-void

    .line 1708
    :cond_0
    new-instance v0, Lglj$c$4;

    invoke-direct {v0, p0}, Lglj$c$4;-><init>(Lglj$c;)V

    .line 1743
    const-class v1, Lcma;

    iget-object v2, p0, Lglj$c;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1745
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iget-object v3, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    iget-object v4, p0, Lglj$c;->e:Lgkl;

    invoke-virtual {v1, v2, v3, v4, v0}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lgkl;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 756
    iget-object v0, p0, Lglj$c;->b:Lcma;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lglj$c;->b:Lcma;

    const-string/jumbo v1, "showLoadingDialogOfRecallSpaceLink"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_0
    invoke-super {p0}, Lglj;->b()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 765
    iget-object v0, p0, Lglj$c;->b:Lcma;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lglj$c;->b:Lcma;

    const-string/jumbo v1, "dismissLoadingDialogOfRecallSpaceLink"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-super {p0}, Lglj;->c()V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 582
    iget-object v0, p0, Lglj$c;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglj$c;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    .line 583
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceLinkManager"

    const-string/jumbo v2, "checkAndRecallPermission: null param "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 588
    invoke-virtual {p0}, Lglj$c;->e()V

    .line 663
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    invoke-static {v0}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lgqu;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_conf_space_acl_permission_setting_enable"

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 593
    if-eqz v0, :cond_2

    .line 594
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    iget-object v1, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 596
    :cond_2
    invoke-virtual {p0}, Lglj$c;->e()V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v0, p0, Lglj$c;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lglj$c;->a(Lcom/alibaba/wukong/im/Conversation;)Lgkl;

    move-result-object v0

    iput-object v0, p0, Lglj$c;->e:Lgkl;

    .line 601
    iget-object v0, p0, Lglj$c;->e:Lgkl;

    if-nez v0, :cond_4

    .line 602
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceLinkManager"

    const-string/jumbo v2, "checkAndRecallPermission: null mAclMember "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 606
    invoke-virtual {p0}, Lglj$c;->e()V

    goto :goto_0

    .line 610
    :cond_4
    invoke-virtual {p0}, Lglj$c;->b()V

    .line 612
    new-instance v5, Lglj$c$1;

    invoke-direct {v5, p0}, Lglj$c$1;-><init>(Lglj$c;)V

    .line 659
    .local v5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lglj$c;->a:Landroid/app/Activity;

    invoke-static {v5, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v5, Lcma;

    .line 661
    .restart local v5    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lglj$c;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    iget-object v3, p0, Lglj$c;->e:Lgkl;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lgkl;ILcma;)V

    goto :goto_0
.end method

.method e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 749
    iget-object v0, p0, Lglj$c;->b:Lcma;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lglj$c;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 752
    :cond_0
    return-void
.end method
