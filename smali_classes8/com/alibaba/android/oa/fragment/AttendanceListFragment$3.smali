.class final Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;
.super Ljava/lang/Object;
.source "AttendanceListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
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
        "Lefz;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 272
    check-cast p1, Ljava/util/List;

    .line 1282
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)Z

    .line 1284
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->g(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    :goto_0
    return-void

    .line 1289
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)Z

    .line 1296
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->h(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I

    .line 1299
    iget-boolean v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->a:Z

    if-nez v0, :cond_3

    .line 1300
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->i(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1301
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->i(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1302
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->j(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->l(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->k(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Leeb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->k(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Leeb;

    move-result-object v0

    invoke-virtual {v0}, Leeb;->notifyDataSetChanged()V

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)Z

    goto :goto_1

    .line 1306
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->m(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->i(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1308
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->k(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Leeb;

    move-result-object v0

    invoke-virtual {v0}, Leeb;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->a:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->m(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;->b:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->n(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V

    .line 336
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 320
    return-void
.end method
