.class final Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity$1;
.super Lgcv;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;

    invoke-direct {p0}, Lgcv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    invoke-super {p0, p1}, Lgcv;->a(Z)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "favorite_action_delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "fav_id"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 127
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v1

    invoke-virtual {v1}, Lgas;->b()V

    .line 128
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteDetailActivity;->finish()V

    .line 129
    return-void
.end method
