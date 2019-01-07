.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 351
    check-cast p1, Ljava/util/List;

    .line 1354
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 1355
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1357
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;J)J

    .line 1359
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1360
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 1364
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->c(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0

    .line 1368
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->d(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->d(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 379
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 373
    return-void
.end method
