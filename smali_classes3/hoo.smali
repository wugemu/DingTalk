.class public Lhoo;
.super Landroid/widget/BaseAdapter;
.source "NavViewDropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhoo$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhoo$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;",
            ">;"
        }
    .end annotation
.end field


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
    .line 36
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lhoo$a;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lhoo;->b:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lhoo;->a:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method protected a(ILcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "navDropView"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;

    .prologue
    .line 97
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lhoo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lhoo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lhoo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    if-ltz p1, :cond_0

    iget-object v0, p0, Lhoo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lhoo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 74
    if-nez p2, :cond_2

    .line 75
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;

    iget-object v2, p0, Lhoo;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "navDropView":Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;
    :goto_0
    iget-object v2, p0, Lhoo;->c:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lhoo;->c:Landroid/util/SparseArray;

    .line 82
    :cond_0
    iget-object v2, p0, Lhoo;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lhoo;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    iget-object v2, p0, Lhoo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lhoo;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoo$a;

    .line 85
    .local v0, "data":Lhoo$a;
    iget v2, v0, Lhoo$a;->c:I

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;->setIcon(I)V

    .line 86
    iget-object v2, v0, Lhoo$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;->setText(Ljava/lang/String;)V

    .line 89
    .end local v0    # "data":Lhoo$a;
    :cond_1
    iget-object v2, p0, Lhoo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;->setLineVisible(Z)V

    .line 91
    invoke-virtual {p0, p1, v1}, Lhoo;->a(ILcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;)V

    .line 93
    return-object v1

    .end local v1    # "navDropView":Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;
    :cond_2
    move-object v1, p2

    .line 77
    check-cast v1, Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;

    .restart local v1    # "navDropView":Lcom/alibaba/lightapp/runtime/miniapp/view/NavDropView;
    goto :goto_0

    .line 89
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
