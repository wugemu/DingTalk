.class Lcom/laiwang/protocol/file/b$1;
.super Ljava/lang/Object;
.source "DefaultDownloadTask.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/file/b;->a(Lcom/laiwang/protocol/file/download/FileItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/file/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/laiwang/protocol/connection/LWPConnection;

.field final synthetic e:Lcom/laiwang/protocol/file/b;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/file/b;Lcom/laiwang/protocol/file/a;Ljava/lang/String;JLcom/laiwang/protocol/connection/LWPConnection;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/laiwang/protocol/file/b$1;->e:Lcom/laiwang/protocol/file/b;

    iput-object p2, p0, Lcom/laiwang/protocol/file/b$1;->a:Lcom/laiwang/protocol/file/a;

    iput-object p3, p0, Lcom/laiwang/protocol/file/b$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/laiwang/protocol/file/b$1;->c:J

    iput-object p6, p0, Lcom/laiwang/protocol/file/b$1;->d:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/core/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/laiwang/protocol/file/b$1;->a:Lcom/laiwang/protocol/file/a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/file/a;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string/jumbo v0, "[down] down is already canceled"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/file/b$1;->e:Lcom/laiwang/protocol/file/b;

    iget-object v2, p0, Lcom/laiwang/protocol/file/b$1;->a:Lcom/laiwang/protocol/file/a;

    iget-object v3, p0, Lcom/laiwang/protocol/file/b$1;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/laiwang/protocol/file/b$1;->c:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/laiwang/protocol/file/b;->a(Lcom/laiwang/protocol/file/b;Lcom/laiwang/protocol/core/Response;Lcom/laiwang/protocol/file/download/DownloadController;Ljava/lang/String;J)V

    .line 78
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/laiwang/protocol/file/b$1;->d:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    goto :goto_0
.end method

.method public synthetic on(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/file/b$1;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
