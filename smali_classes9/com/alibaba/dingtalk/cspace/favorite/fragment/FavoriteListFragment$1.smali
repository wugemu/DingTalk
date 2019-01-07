.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;
.super Ljava/lang/Object;
.source "FavoriteListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 113
    check-cast p1, Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->j:Ljava/lang/String;

    .line 1120
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    .line 1121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v0

    invoke-virtual {v0}, Lgas;->b()V

    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    sget v1, Lfzs$h;->network_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->c(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "navList errorCode="

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " errorMsg="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 140
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "2021"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    sget v1, Lfzs$h;->network_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;Z)Z

    .line 147
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 131
    return-void
.end method
