.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

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
    .line 420
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->o(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->n(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 430
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->o(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfgw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfgw;

    move-result-object v1

    invoke-virtual {v1}, Lfgw;->notifyDataSetChanged()V

    .line 432
    return-void

    .line 425
    :cond_1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 426
    .local v0, "dummyHeader":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    const/high16 v2, 0x41000000    # 8.0f

    .line 427
    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 426
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 428
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2$1;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->o(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method
