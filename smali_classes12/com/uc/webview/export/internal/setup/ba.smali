.class final Lcom/uc/webview/export/internal/setup/ba;
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
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string/jumbo v0, "libcore_jar_kj_uc.so"

    const-string/jumbo v1, "core.jar"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ba;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v0, "libsdk_shell_jar_kj_uc.so"

    const-string/jumbo v1, "sdk_shell.jar"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ba;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v0, "libbrowser_if_for_export_jar_kj_uc.so"

    const-string/jumbo v1, "browser_if.jar"

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ba;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
