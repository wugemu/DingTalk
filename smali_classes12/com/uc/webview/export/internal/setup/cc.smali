.class final Lcom/uc/webview/export/internal/setup/cc;
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


# direct methods
.method constructor <init>(J)V
    .locals 5

    .prologue
    .line 1582
    iput-wide p1, p0, Lcom/uc/webview/export/internal/setup/cc;->a:J

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1583
    const-string/jumbo v0, "csc_lsu"

    iget-wide v2, p0, Lcom/uc/webview/export/internal/setup/cc;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/cc;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
