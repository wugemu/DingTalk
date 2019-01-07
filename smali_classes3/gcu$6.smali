.class public final Lgcu$6;
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
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgcu;


# direct methods
.method public constructor <init>(Lgcu;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgcu;

    .prologue
    .line 210
    iput-object p1, p0, Lgcu$6;->b:Lgcu;

    iput-object p2, p0, Lgcu$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 219
    iget-object v0, p0, Lgcu$6;->b:Lgcu;

    .line 1029
    iget-object v0, v0, Lgcu;->a:Ljava/lang/String;

    .line 219
    invoke-static {v0}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v0

    iget-object v1, p0, Lgcu$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->syncFavorite(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 210
    .line 1213
    const-string/jumbo v0, "pref_favorite_safe_clear"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1214
    iget-object v0, p0, Lgcu$6;->b:Lgcu;

    .line 2029
    iget-object v0, v0, Lgcu;->a:Ljava/lang/String;

    .line 1214
    invoke-static {v0}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v0

    iget-object v1, p0, Lgcu$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->syncFavorite(Ljava/lang/String;)V

    .line 210
    return-void
.end method
