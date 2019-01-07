.class final Lcom/uc/webview/export/internal/setup/ca;
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


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 882
    const-string/jumbo v0, "ucCoreImplVersion"

    const-string/jumbo v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 883
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ca;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    return-void
.end method
