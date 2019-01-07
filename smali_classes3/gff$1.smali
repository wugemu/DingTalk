.class final Lgff$1;
.super Ljava/lang/Object;
.source "SpaceMembersPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgff;
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
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

.field final synthetic b:Lcma;

.field final synthetic c:Lgff;


# direct methods
.method constructor <init>(Lgff;Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgff;

    .prologue
    .line 159
    iput-object p1, p0, Lgff$1;->c:Lgff;

    iput-object p2, p0, Lgff$1;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iput-object p3, p0, Lgff$1;->b:Lcma;

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
    .line 159
    check-cast p1, Ljava/util/List;

    .line 2162
    iget-object v0, p0, Lgff$1;->c:Lgff;

    iget-object v0, v0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2167
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2168
    :cond_0
    iget-object v0, p0, Lgff$1;->c:Lgff;

    iget-object v0, v0, Lgff;->b:Landroid/content/Context;

    sget v1, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2178
    :goto_0
    iget-object v1, p0, Lgff$1;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 3155
    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 2179
    iget-object v0, p0, Lgff$1;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v1, 0x1

    .line 3179
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 2180
    iget-object v0, p0, Lgff$1;->c:Lgff;

    iget-object v0, p0, Lgff$1;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$1;->b:Lcma;

    .line 4037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    .line 159
    :cond_1
    return-void

    .line 2171
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2172
    if-nez v0, :cond_3

    .line 2173
    iget-object v0, p0, Lgff$1;->c:Lgff;

    iget-object v0, v0, Lgff;->b:Landroid/content/Context;

    sget v1, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2175
    :cond_3
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lgff$1;->c:Lgff;

    iget-object v0, v0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lgff$1;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$1;->c:Lgff;

    iget-object v1, v1, Lgff;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1155
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lgff$1;->c:Lgff;

    iget-object v0, p0, Lgff$1;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$1;->b:Lcma;

    .line 2037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 185
    return-void
.end method
