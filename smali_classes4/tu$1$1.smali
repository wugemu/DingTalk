.class final Ltu$1$1;
.super Ljava/lang/Object;
.source "DownloadDentryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltu$1;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltu$1;


# direct methods
.method constructor <init>(Ltu$1;)V
    .locals 0
    .param p1, "this$1"    # Ltu$1;

    .prologue
    .line 415
    iput-object p1, p0, Ltu$1$1;->a:Ltu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 418
    iget-object v0, p0, Ltu$1$1;->a:Ltu$1;

    iget-object v0, v0, Ltu$1;->a:Ltu;

    const-string/jumbo v1, "callback.onNetworkException: retry download, executeDownloadNextChunked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1049
    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Ltu$1$1;->a:Ltu$1;

    iget-object v0, v0, Ltu$1;->a:Ltu;

    .line 2049
    invoke-virtual {v0}, Ltu;->a()V

    .line 420
    return-void
.end method
