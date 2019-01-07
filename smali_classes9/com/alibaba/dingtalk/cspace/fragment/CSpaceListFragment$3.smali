.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1146
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "space_orgfile_chatfile_setting_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1148
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v6

    .line 1149
    .local v6, "spaceOrgCache":Lfzv;
    new-instance v1, Lgiy;

    invoke-direct {v1}, Lgiy;-><init>()V

    .line 1150
    .local v1, "model":Lgiy;
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgle;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgiy;->d:Ljava/lang/String;

    .line 1151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lgiy;->f:Ljava/util/Map;

    .line 1152
    iget-object v2, v1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "doc_readonly"

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    iget-object v2, v1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "watermark"

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lfzv;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v4

    .line 2109
    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1156
    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Lgiy;JJ)V

    .line 1157
    return-void

    .line 1152
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 1154
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
