.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

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

    .line 204
    check-cast p1, Ljava/util/List;

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->dismissLoadingDialog()V

    .line 1208
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1210
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;J)J

    .line 1212
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1213
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v0, v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->dismissLoadingDialog()V

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    .line 232
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 226
    return-void
.end method
