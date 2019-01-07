.class final Lcom/uc/webview/export/internal/cd/e;
.super Ljava/util/HashMap;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/uc/webview/export/internal/cd/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string/jumbo v0, "act_push"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v0, "traffic_stat"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v0, "force_system"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "skip_old_extra_kernel"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v0, "print_log"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v0, "new_url"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "load"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "vmsize_saving_sample"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "vmsize_saving_blacklist"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "core_ver_excludes"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "sdk_ver_excludes"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v0, "apollo"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v0, "dec_thread"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v0, "disable_ucdns"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v0, "traffic_stat"

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/cd/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method
