.class final Lgfx$2$1;
.super Ljava/lang/Object;
.source "SpaceRecentFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfx$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgix;

.field final synthetic b:Lgfx$2;


# direct methods
.method constructor <init>(Lgfx$2;Lgix;)V
    .locals 0
    .param p1, "this$1"    # Lgfx$2;

    .prologue
    .line 219
    iput-object p1, p0, Lgfx$2$1;->b:Lgfx$2;

    iput-object p2, p0, Lgfx$2$1;->a:Lgix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 224
    :try_start_0
    iget-object v3, p0, Lgfx$2$1;->b:Lgfx$2;

    iget-object v3, v3, Lgfx$2;->c:Lgfx;

    iget-object v4, p0, Lgfx$2$1;->b:Lgfx$2;

    iget v4, v4, Lgfx$2;->b:I

    iget-object v5, p0, Lgfx$2$1;->a:Lgix;

    .line 1052
    invoke-virtual {v3, v4, v5}, Lgfx;->a(ILgix;)V

    .line 225
    iget-object v3, p0, Lgfx$2$1;->a:Lgix;

    iget-object v3, v3, Lgix;->f:Ljava/util/List;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 226
    .local v0, "dataSize":I
    :goto_0
    if-lez v0, :cond_0

    .line 227
    iget-object v3, p0, Lgfx$2$1;->b:Lgfx$2;

    iget-object v3, v3, Lgfx$2;->c:Lgfx;

    .line 2052
    iget-object v3, v3, Lgfx;->a:Ljava/lang/String;

    .line 227
    invoke-static {v3}, Lth;->c(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;

    move-result-object v2

    .line 228
    .local v2, "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    iget-object v3, p0, Lgfx$2$1;->b:Lgfx$2;

    iget-object v3, v3, Lgfx$2;->c:Lgfx;

    const/4 v4, 0x3

    const/4 v5, 0x3

    const/16 v6, 0x8

    const/16 v7, 0x1f4

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->queryLocalRecentOperationsDiffImage(IIII)Ljava/util/List;

    move-result-object v4

    .line 3052
    iput-object v4, v3, Lgfx;->c:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "dataSize":I
    .end local v2    # "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    :cond_0
    :goto_1
    iget-object v3, p0, Lgfx$2$1;->b:Lgfx$2;

    const/4 v4, 0x1

    iget-object v5, p0, Lgfx$2$1;->b:Lgfx$2;

    iget-object v5, v5, Lgfx$2;->c:Lgfx;

    .line 4052
    iget-object v5, v5, Lgfx;->c:Ljava/util/List;

    .line 236
    invoke-static {v3, v4, v5}, Lgfx$2;->a(Lgfx$2;ZLjava/util/List;)V

    .line 237
    return-void

    .line 225
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgfx$2$1;->a:Lgix;

    iget-object v3, v3, Lgix;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "local recent db operation error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
