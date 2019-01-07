.class Lcom/amap/api/services/a/ap$2;
.super Ljava/lang/Object;
.source "NearbySearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ap;->uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/nearby/UploadInfo;

.field final synthetic b:Lcom/amap/api/services/a/ap;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    iput-object p2, p0, Lcom/amap/api/services/a/ap$2;->a:Lcom/amap/api/services/nearby/UploadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v0}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 300
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 301
    iget-object v1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v1}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    iget-object v1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    iget-object v2, p0, Lcom/amap/api/services/a/ap$2;->a:Lcom/amap/api/services/nearby/UploadInfo;

    invoke-static {v1, v2}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v1

    .line 303
    iput v1, v0, Landroid/os/Message;->what:I

    .line 304
    iget-object v1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v1}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/a/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string/jumbo v1, "NearbySearch"

    const-string/jumbo v2, "uploadNearbyInfoAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
