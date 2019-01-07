.class final Lgdi$5;
.super Ljava/lang/Object;
.source "AclMemberViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdi;
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
.field final synthetic a:Lgdi;

.field final synthetic b:Lgnu;

.field final synthetic c:Lgdi;


# direct methods
.method constructor <init>(Lgdi;Lgdi;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgdi;

    .prologue
    .line 359
    iput-object p1, p0, Lgdi$5;->c:Lgdi;

    iput-object p2, p0, Lgdi$5;->a:Lgdi;

    iput-object p3, p0, Lgdi$5;->b:Lgnu;

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
    .line 359
    check-cast p1, Ljava/util/List;

    .line 2362
    iget-object v0, p0, Lgdi$5;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lgdi$5;->b:Lgnu;

    .line 3195
    iget-object v1, v1, Lgnu;->a:Ljava/lang/String;

    .line 2362
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2368
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2369
    :cond_0
    iget-object v0, p0, Lgdi$5;->c:Lgdi;

    sget v0, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    .line 4050
    invoke-static {v0}, Lgdi;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2381
    :goto_0
    iget-object v1, p0, Lgdi$5;->a:Lgdi;

    iget-object v1, v1, Lgdi;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2382
    iget-object v1, p0, Lgdi$5;->b:Lgnu;

    .line 5207
    iput-object v0, v1, Lgnu;->b:Ljava/lang/String;

    .line 2383
    iget-object v0, p0, Lgdi$5;->b:Lgnu;

    .line 5263
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu;->i:Z

    .line 359
    :cond_1
    return-void

    .line 2372
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2374
    if-nez v0, :cond_3

    .line 2375
    iget-object v0, p0, Lgdi$5;->c:Lgdi;

    sget v0, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    .line 5050
    invoke-static {v0}, Lgdi;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2377
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
    .line 393
    iget-object v0, p0, Lgdi$5;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lgdi$5;->b:Lgnu;

    .line 1195
    iget-object v1, v1, Lgnu;->a:Ljava/lang/String;

    .line 393
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lgdi$5;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lgdi$5;->c:Lgdi;

    sget v1, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    .line 2050
    invoke-static {v1}, Lgdi;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 389
    return-void
.end method
