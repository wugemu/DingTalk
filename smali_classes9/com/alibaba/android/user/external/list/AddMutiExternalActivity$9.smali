.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 681
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 682
    .local v0, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 684
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;J)J

    .line 685
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->b(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 686
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 687
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 688
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 689
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Z)Z

    .line 690
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    .line 691
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    .line 692
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lfnv$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 695
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lfnv$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lfnv$b;->a(J)V

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    .line 699
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b(J)V

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->c:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->n(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    .line 704
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 705
    return-void
.end method
