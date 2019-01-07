.class final Lgfo$8;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lgfo;

.field final synthetic c:Lgnu;

.field final synthetic d:Lgfo;


# direct methods
.method constructor <init>(Lgfo;Landroid/content/Context;Lgfo;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgfo;

    .prologue
    .line 571
    iput-object p1, p0, Lgfo$8;->d:Lgfo;

    iput-object p2, p0, Lgfo$8;->a:Landroid/content/Context;

    iput-object p3, p0, Lgfo$8;->b:Lgfo;

    iput-object p4, p0, Lgfo$8;->c:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 571
    check-cast p1, Ljava/util/List;

    .line 1575
    iget-object v0, p0, Lgfo$8;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1579
    iget-object v0, p0, Lgfo$8;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lgfo$8;->c:Lgnu;

    .line 2195
    iget-object v1, v1, Lgnu;->a:Ljava/lang/String;

    .line 1579
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1586
    :cond_0
    iget-object v0, p0, Lgfo$8;->d:Lgfo;

    sget v0, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    .line 3070
    invoke-static {v0}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1598
    :goto_0
    iget-object v1, p0, Lgfo$8;->b:Lgfo;

    iget-object v1, v1, Lgfo;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1599
    iget-object v1, p0, Lgfo$8;->c:Lgnu;

    .line 4207
    iput-object v0, v1, Lgnu;->b:Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lgfo$8;->c:Lgnu;

    .line 4263
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu;->i:Z

    .line 571
    :cond_1
    return-void

    .line 1589
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1591
    if-nez v0, :cond_3

    .line 1592
    iget-object v0, p0, Lgfo$8;->d:Lgfo;

    sget v0, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    .line 4070
    invoke-static {v0}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1594
    :cond_3
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 611
    iget-object v0, p0, Lgfo$8;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lgfo$8;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lgfo$8;->c:Lgnu;

    .line 1195
    iget-object v1, v1, Lgnu;->a:Ljava/lang/String;

    .line 615
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgfo$8$1;

    invoke-direct {v1, p0}, Lgfo$8$1;-><init>(Lgfo$8;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 606
    return-void
.end method
