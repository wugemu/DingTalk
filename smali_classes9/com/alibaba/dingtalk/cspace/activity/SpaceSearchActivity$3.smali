.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$3;
.super Ljava/lang/Object;
.source "SpaceSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 193
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lggn;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 195
    check-cast v0, Lggn;

    .line 197
    .local v0, "item":Lggn;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Landroid/widget/SearchView;

    move-result-object v2

    iget-object v3, v0, Lggn;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 198
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Landroid/widget/SearchView;

    move-result-object v3

    invoke-static {v2, v3}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 200
    .end local v0    # "item":Lggn;
    :cond_0
    return-void
.end method
