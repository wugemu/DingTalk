.class final Lcom/uc/webview/export/internal/setup/bb;
.super Ljava/util/HashMap;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/uc/webview/export/internal/setup/az;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/az;JJ)V
    .locals 4

    .prologue
    .line 185
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bb;->c:Lcom/uc/webview/export/internal/setup/az;

    iput-wide p2, p0, Lcom/uc/webview/export/internal/setup/bb;->a:J

    iput-wide p4, p0, Lcom/uc/webview/export/internal/setup/bb;->b:J

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 186
    const-string/jumbo v0, "csc_tp"

    iget-wide v2, p0, Lcom/uc/webview/export/internal/setup/bb;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/bb;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v0, "csc_tbp"

    iget-wide v2, p0, Lcom/uc/webview/export/internal/setup/bb;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/bb;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
