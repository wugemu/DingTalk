.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$3;
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
    .line 218
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 221
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;)Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    invoke-static {v2}, Lggc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 223
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 224
    check-cast v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 225
    .local v0, "model":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;

    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRecentDetailActivity;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V

    .line 228
    .end local v0    # "model":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method
