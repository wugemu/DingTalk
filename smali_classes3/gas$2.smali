.class final Lgas$2;
.super Ljava/lang/Object;
.source "FavoriteRPC.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgas;->c()V
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
.field final synthetic a:Lgas;


# direct methods
.method constructor <init>(Lgas;)V
    .locals 0
    .param p1, "this$0"    # Lgas;

    .prologue
    .line 57
    iput-object p1, p0, Lgas$2;->a:Lgas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 57
    check-cast p1, Ljava/lang/String;

    .line 1060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v0

    .line 1209
    const-string/jumbo v1, "pref_favorite_safe_clear"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1210
    iget-object v1, v0, Lgcu;->a:Ljava/lang/String;

    invoke-static {v1}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v1

    new-instance v2, Lgcu$6;

    invoke-direct {v2, v0, p1}, Lgcu$6;-><init>(Lgcu;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->clearSyncKey(Lxv;)V

    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-object v0, v0, Lgcu;->a:Ljava/lang/String;

    invoke-static {v0}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->syncFavorite(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 72
    const-string/jumbo v0, "FavoriteRPC"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "favorite sync error code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " reason="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 73
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 68
    return-void
.end method
