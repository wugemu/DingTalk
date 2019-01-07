.class public Lcom/uc/webview/export/WebResourceRequest;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/net/Uri;

.field d:Z

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    .line 51
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v0, "Get"

    invoke-direct {p0, v0, p1, p2}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/net/Uri;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    .line 44
    iput-boolean p4, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    .line 45
    iput-boolean p5, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    .line 23
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    .line 24
    iput-boolean p4, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    .line 25
    iput-boolean p5, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p6, p0, Lcom/uc/webview/export/WebResourceRequest;->f:Z

    .line 32
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    .line 34
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    .line 35
    iput-boolean p4, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    .line 36
    iput-boolean p5, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    .line 37
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    return v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    return-void
.end method

.method public setUrl(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",hasGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",isForMainFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
