.class Lcom/amap/api/services/a/bo$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Lcom/amap/api/services/a/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/bo;

.field private b:Lcom/amap/api/services/a/by;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/bo;Lcom/amap/api/services/a/by;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amap/api/services/a/bo$a;->a:Lcom/amap/api/services/a/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/amap/api/services/a/bo$a;->b:Lcom/amap/api/services/a/by;

    .line 296
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bo$a;->b:Lcom/amap/api/services/a/by;

    iget-object v1, p0, Lcom/amap/api/services/a/bo$a;->a:Lcom/amap/api/services/a/bo;

    .line 302
    invoke-virtual {v1}, Lcom/amap/api/services/a/bo;->b()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/services/a/bi;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 301
    invoke-virtual {v0, p1, v1}, Lcom/amap/api/services/a/by;->b(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
