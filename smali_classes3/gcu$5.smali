.class public final Lgcu$5;
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
        "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
        ">;"
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
    .line 177
    iput-object p1, p0, Lgcu$5;->b:Lgcu;

    iput-object p2, p0, Lgcu$5;->a:Lgcv;

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
    .line 188
    iget-object v0, p0, Lgcu$5;->a:Lgcv;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lgcu$5;->a:Lgcv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgcv;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    .line 191
    :cond_0
    const-string/jumbo v0, "FavoriteProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getFavoriteViewModel exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 177
    check-cast p1, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .line 1180
    iget-object v0, p0, Lgcu$5;->a:Lgcv;

    if-eqz v0, :cond_0

    .line 1181
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;-><init>(Lcom/alibaba/alimei/fav/model/FavoriteModel;)V

    .line 1182
    iget-object v1, p0, Lgcu$5;->a:Lgcv;

    invoke-virtual {v1, v0}, Lgcv;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    .line 177
    :cond_0
    return-void
.end method
