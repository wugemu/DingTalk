.class public final Lgcu;
.super Ljava/lang/Object;
.source "FavoriteProxy.java"


# static fields
.field private static b:Lgcu;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lgar;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgcu;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a()Lgcu;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lgcu;

    invoke-direct {v0}, Lgcu;-><init>()V

    .line 42
    sput-object v0, Lgcu;->b:Lgcu;

    return-object v0
.end method


# virtual methods
.method public a(Lgcv;)Lxv;
    .locals 1
    .param p1, "listener"    # Lgcv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgcv;",
            ")",
            "Lxv",
            "<",
            "Lxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lgcu$8;

    invoke-direct {v0, p0, p1}, Lgcu$8;-><init>(Lgcu;Lgcv;)V

    .line 316
    .local v0, "listSDKListener":Lxv;, "Lxv<Lxf;>;"
    return-object v0
.end method

.method public final a(JLgcv;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lgcv;

    .prologue
    .line 242
    iget-object v0, p0, Lgcu;->a:Ljava/lang/String;

    invoke-static {v0}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v0

    new-instance v1, Lgcu$7;

    invoke-direct {v1, p0, p3}, Lgcu$7;-><init>(Lgcu;Lgcv;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->deleteFavorite(JLxv;)V

    .line 261
    return-void
.end method

.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v0, p0, Lgcu;->a:Ljava/lang/String;

    invoke-static {v0}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v0

    new-instance v1, Lgcu$1;

    invoke-direct {v1, p0, p1}, Lgcu$1;-><init>(Lgcu;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->getFavoriteSpaceId(Lxv;)V

    .line 69
    return-void
.end method
