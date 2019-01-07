.class public final Lgcu$4;
.super Ljava/lang/Object;
.source "FavoriteProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgcu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgcv;

.field final synthetic b:Lgcu;


# direct methods
.method public constructor <init>(Lgcu;Lgcv;)V
    .locals 0
    .param p1, "this$0"    # Lgcu;

    .prologue
    .line 137
    iput-object p1, p0, Lgcu$4;->b:Lgcu;

    iput-object p2, p0, Lgcu$4;->a:Lgcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lgcu$4;->a:Lgcv;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lgcu$4;->a:Lgcv;

    invoke-virtual {v0, v1, v1}, Lgcv;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 165
    :cond_0
    const-string/jumbo v0, "FavoriteProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getFavoriteList exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 137
    check-cast p1, Ljava/util/List;

    .line 1140
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1141
    :cond_0
    iget-object v0, p0, Lgcu$4;->a:Lgcv;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lgcu$4;->a:Lgcv;

    invoke-virtual {v0, v1, v1}, Lgcv;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1144
    :cond_1
    :goto_0
    return-void

    .line 1146
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .line 1149
    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1150
    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_3
    new-instance v4, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;-><init>(Lcom/alibaba/alimei/fav/model/FavoriteModel;)V

    .line 1153
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1155
    :cond_4
    iget-object v0, p0, Lgcu$4;->a:Lgcv;

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lgcu$4;->a:Lgcv;

    invoke-virtual {v0, v1, v2}, Lgcv;->a(Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_0
.end method
