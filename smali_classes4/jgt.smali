.class public final Ljgt;
.super Ljgl;
.source "SendMultiMessageToWeiboRequest.java"


# instance fields
.field public b:Ljgi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljgl;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Ljgl;->a(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Ljgt;->b:Ljgi;

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
    iget-object v1, p0, Ljgt;->b:Ljgi;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v1, p0, Ljgt;->b:Ljgi;

    invoke-virtual {p2, p1, v1}, Ljgu;->a(Landroid/content/Context;Ljgi;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Ljgt;->b:Ljgi;

    invoke-virtual {v0}, Ljgi;->a()Z

    move-result v0

    goto :goto_0
.end method
