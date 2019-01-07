.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$2;
.super Ljava/lang/Object;
.source "SpaceRecentDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 194
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 195
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 196
    check-cast v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 197
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    invoke-static {v3}, Lggc;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V

    .line 204
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method
