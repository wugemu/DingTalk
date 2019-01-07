.class public Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "SpaceRecentDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/cspace/model/RecentDentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 35
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->d:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->b:Z

    .line 40
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->c:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfzs$d;->cspace_recent_item_marginLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->d:I

    .line 42
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "itemFileView":Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;
    instance-of v1, p2, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 56
    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;

    .line 59
    :cond_0
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;

    .end local v0    # "itemFileView":Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;-><init>(Landroid/content/Context;)V

    .line 61
    .restart local v0    # "itemFileView":Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->d:I

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->d:I

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a(II)V

    .line 62
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->c:Landroid/content/Context;

    const/high16 v3, 0x428a0000    # 69.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setMinimumHeight(I)V

    .line 64
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->b:Z

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->c:Z

    .line 66
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->b:Z

    if-eqz v1, :cond_2

    .line 67
    sget v1, Lfzs$e;->alm_bg_recent_file_list_selector:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->setBackgroundResource(I)V

    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 73
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    instance-of v1, p3, Landroid/widget/AbsListView;

    if-eqz v1, :cond_3

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object v4, p3

    .line 74
    .local v4, "absListView":Landroid/widget/AbsListView;
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;ZLandroid/widget/AbsListView;Ljava/lang/String;)V

    .line 75
    return-object v0

    .line 70
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .end local v4    # "absListView":Landroid/widget/AbsListView;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentItemFileView;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentDetailAdapter;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lfzs$c;->alm_cmail_color_6_2:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .restart local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    :cond_3
    move-object v4, v5

    .line 73
    goto :goto_1
.end method
