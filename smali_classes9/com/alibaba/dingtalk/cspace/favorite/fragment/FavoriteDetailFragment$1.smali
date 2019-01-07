.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;
.super Ljava/lang/Object;
.source "FavoriteDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 153
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 154
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    .line 155
    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    .line 156
    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    .line 158
    .local v8, "picModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;
    new-instance v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v7}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 159
    .local v7, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getAuthMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lgao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "authUrl":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iput-object v6, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lgao;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    .line 165
    :cond_0
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getOrientation()I

    move-result v1

    iput v1, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    .line 166
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getOrigin()I

    move-result v1

    iput v1, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 167
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getSize()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 168
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 170
    iget-object v1, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "favorite_enter_hide"

    const-string/jumbo v9, "true"

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "space_transfer_src"

    const-string/jumbo v9, "collection"

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-array v5, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 175
    .local v5, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v1, 0x0

    aput-object v7, v5, v1

    .line 176
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    .line 178
    .local v0, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 181
    .end local v0    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v6    # "authUrl":Ljava/lang/String;
    .end local v7    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v8    # "picModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;
    :cond_1
    return-void
.end method
