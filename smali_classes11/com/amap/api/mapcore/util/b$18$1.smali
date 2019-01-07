.class Lcom/amap/api/mapcore/util/b$18$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/b$18;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b$18;)V
    .locals 0

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$18$1;->a:Lcom/amap/api/mapcore/util/b$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$18$1;->a:Lcom/amap/api/mapcore/util/b$18;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b$18;->f:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->k(Lcom/amap/api/mapcore/util/b;)V

    .line 1662
    return-void
.end method
