.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;
.super Ljava/lang/Object;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 185
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 186
    .local v2, "item":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lgit;

    if-nez v4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v2

    .line 189
    check-cast v3, Lgit;

    .line 191
    .local v3, "tempModel":Lgit;
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    iget-object v5, v3, Lgit;->a:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v4

    iget-object v5, v3, Lgit;->a:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lgle;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v4, v3, Lgit;->b:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->a:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "cspace_filelist_guidefile_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 199
    :cond_2
    invoke-static {}, Lglr;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;

    if-eqz v4, :cond_3

    .line 200
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v0

    .line 201
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    iget-object v4, v3, Lgit;->a:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v0, v5, v7}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    goto :goto_0

    .line 207
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lgdh;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "expiredNewSpaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v3, Lgit;->a:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {}, Lgam;->a()Lgam;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Lgam;->a(Ljava/util/List;Ljava/util/List;)V

    .line 211
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 212
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->notifyDataSetChanged()V

    .line 214
    :cond_4
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lgdh;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)I

    move-result v5

    invoke-interface {v4, v6, v7, v3, v5}, Lgdh;->a(JLgit;I)V

    goto/16 :goto_0
.end method
