.class final Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;
.super Ljava/lang/Object;
.source "DeptMemberFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->j(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    .line 291
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->i(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->k(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, "dummyHeader":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 282
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->l(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->l(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->k(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->m(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    .line 287
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->l(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lfgq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5$1;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lfgq;

    move-result-object v1

    invoke-virtual {v1}, Lfgq;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
