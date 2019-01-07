.class Lcom/amap/api/services/a/dh$1;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/amap/api/services/a/di$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/dh;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/dh;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/amap/api/services/a/dh$1;->a:Lcom/amap/api/services/a/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/di;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public b(Lcom/amap/api/services/a/di;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amap/api/services/a/dh$1;->a:Lcom/amap/api/services/a/dh;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/a/dh;->a(Lcom/amap/api/services/a/dh;Lcom/amap/api/services/a/di;Z)V

    .line 39
    return-void
.end method
