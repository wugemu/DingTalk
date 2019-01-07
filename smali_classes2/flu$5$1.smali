.class final Lflu$5$1;
.super Ljava/lang/Object;
.source "LocalOrgEmployeeCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflu$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lflu$5;


# direct methods
.method constructor <init>(Lflu$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lflu$5;

    .prologue
    .line 368
    iput-object p1, p0, Lflu$5$1;->b:Lflu$5;

    iput-object p2, p0, Lflu$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 371
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->i()Lfmt;

    move-result-object v0

    .line 372
    .local v0, "orgEmployeeClosestDataSource":Lfmt;
    if-eqz v0, :cond_0

    .line 373
    iget-object v2, p0, Lflu$5$1;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Lfmt;->a(Ljava/util/List;)I

    move-result v1

    .line 374
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLocalEmployeeCache success "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lflu$5$1$1;

    invoke-direct {v3, p0}, Lflu$5$1$1;-><init>(Lflu$5$1;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 391
    .end local v1    # "result":I
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lflu$5$1$2;

    invoke-direct {v3, p0}, Lflu$5$1$2;-><init>(Lflu$5$1;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
