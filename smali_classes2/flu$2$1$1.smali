.class final Lflu$2$1$1;
.super Ljava/lang/Object;
.source "LocalOrgEmployeeCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflu$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflu$2$1;


# direct methods
.method constructor <init>(Lflu$2$1;)V
    .locals 0
    .param p1, "this$1"    # Lflu$2$1;

    .prologue
    .line 487
    iput-object p1, p0, Lflu$2$1$1;->a:Lflu$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 490
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->j()Lfmx;

    move-result-object v0

    .line 491
    .local v0, "safeOplogDataSource":Lfmx;
    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-interface {v0}, Lfmx;->a()I

    goto :goto_0
.end method
