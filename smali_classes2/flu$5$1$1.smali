.class final Lflu$5$1$1;
.super Ljava/lang/Object;
.source "LocalOrgEmployeeCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflu$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflu$5$1;


# direct methods
.method constructor <init>(Lflu$5$1;)V
    .locals 0
    .param p1, "this$1"    # Lflu$5$1;

    .prologue
    .line 375
    iput-object p1, p0, Lflu$5$1$1;->a:Lflu$5$1;

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
    .line 378
    const-string/jumbo v0, "sync_local_employee_cache_last_time"

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 379
    const-string/jumbo v0, "local_employee_cache_oid"

    iget-object v1, p0, Lflu$5$1$1;->a:Lflu$5$1;

    iget-object v1, v1, Lflu$5$1;->b:Lflu$5;

    iget-wide v2, v1, Lflu$5;->a:J

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 380
    const/4 v0, 0x0

    invoke-static {v0}, Lflu;->a(Z)Z

    .line 381
    return-void
.end method
