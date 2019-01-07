.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;
.super Ljava/lang/Object;
.source "SpaceCategoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->x(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->x(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    if-gez p3, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->x(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    .line 855
    .local v0, "albumModel":Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
    if-eqz v0, :cond_0

    .line 856
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 857
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 858
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->a:J

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 859
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method
