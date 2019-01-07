.class final Lcom/uc/webview/export/internal/setup/bc;
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
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 612
    iput p1, p0, Lcom/uc/webview/export/internal/setup/bc;->a:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 613
    const-string/jumbo v0, "csc_dcf"

    iget v1, p0, Lcom/uc/webview/export/internal/setup/bc;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/bc;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
