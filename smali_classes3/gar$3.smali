.class final Lgar$3;
.super Ljava/lang/Object;
.source "FavoriteNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgar;->a(Ljava/util/List;Lcma;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Ljava/util/List;Lcma;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lgar$3;->a:Ljava/util/List;

    iput-object p2, p0, Lgar$3;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 165
    check-cast p1, Ljava/lang/String;

    .line 1168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1169
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v6

    iget-object v0, p0, Lgar$3;->a:Ljava/util/List;

    iget-object v7, p0, Lgar$3;->b:Lcma;

    .line 2105
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 2108
    if-eqz v5, :cond_0

    .line 2111
    new-instance v0, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    iget-object v1, v6, Lgcu;->a:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2112
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->toJson()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2112
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1

    .line 2115
    :cond_2
    iget-object v0, v6, Lgcu;->a:Ljava/lang/String;

    invoke-static {v0}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v0

    new-instance v1, Lgcu$3;

    invoke-direct {v1, v6, v7}, Lgcu$3;-><init>(Lgcu;Lcma;)V

    invoke-interface {v0, v8, v1}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->addFavorites(Ljava/util/List;Lxv;)V

    .line 1169
    :cond_3
    :goto_2
    return-void

    .line 1171
    :cond_4
    iget-object v0, p0, Lgar$3;->b:Lcma;

    if-eqz v0, :cond_3

    .line 1172
    iget-object v0, p0, Lgar$3;->b:Lcma;

    invoke-interface {v0, v1, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lgar$3;->b:Lcma;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lgar$3;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 180
    return-void
.end method
