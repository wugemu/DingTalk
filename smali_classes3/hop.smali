.class public final Lhop;
.super Lhoo;
.source "NavViewDropMenuWithMarginAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lhoo$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lhoo$a;>;"
    invoke-direct {p0, p1, p2}, Lhoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected final a(ILcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "navDropView"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 14
    if-nez p2, :cond_0

    .line 29
    :goto_0
    return-void

    .line 18
    :cond_0
    if-nez p1, :cond_1

    .line 19
    invoke-virtual {p2, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;->setMarginTop(I)V

    .line 24
    :goto_1
    iget-object v0, p0, Lhop;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhop;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 25
    invoke-virtual {p2, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;->setMarginBottom(I)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p2, v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;->setMarginTop(I)V

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p2, v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;->setMarginBottom(I)V

    goto :goto_0
.end method
