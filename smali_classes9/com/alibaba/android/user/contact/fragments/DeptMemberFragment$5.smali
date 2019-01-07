.class final Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;
.super Ljava/lang/Object;
.source "DeptMemberFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 255
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->a:Z

    if-nez v0, :cond_2

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->i(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1265
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Z)Z

    .line 1267
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->offset:I

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->size:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->e(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I

    .line 1268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    iput v1, v0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->b:I

    .line 1269
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->a:Z

    if-nez v0, :cond_3

    .line 1270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1295
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->i(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lfgq;

    move-result-object v0

    invoke-virtual {v0}, Lfgq;->notifyDataSetChanged()V

    .line 1297
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->k(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1299
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->l(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->k(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeFooterView(Landroid/view/View;)Z

    .line 1301
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->m(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->n(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    .line 314
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 308
    return-void
.end method
