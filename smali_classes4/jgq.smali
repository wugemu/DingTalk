.class public final Ljgq;
.super Ljgm;
.source "ProvideMultiMessageForWeiboResponse.java"


# instance fields
.field public e:Ljgi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljgm;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Ljgm;->a(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Ljgq;->e:Ljgi;

    invoke-virtual {v0, p1}, Ljgi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method final a(Landroid/content/Context;Ljgu;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Ljgq;->e:Ljgi;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v1, p0, Ljgq;->d:Ljava/lang/String;

    .line 1048
    iput-object v1, p2, Ljgu;->a:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Ljgq;->e:Ljgi;

    invoke-virtual {p2, p1, v1}, Ljgu;->a(Landroid/content/Context;Ljgi;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Ljgq;->e:Ljgi;

    invoke-virtual {v0}, Ljgi;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Ljgm;->b(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Ljgi;

    invoke-direct {v0, p1}, Ljgi;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Ljgq;->e:Ljgi;

    .line 51
    return-void
.end method
