.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLRouterAdapter;
.super Ljava/lang/Object;
.source "WMLRouterAdapter.java"

# interfaces
.implements Ljpw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1, v0}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method
