.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;
.super Ljava/lang/Object;
.source "NavbarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/ListPopupWindow;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Ljava/util/List;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->b:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->a:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoo$a;

    .line 595
    .local v0, "item":Lhoo$a;
    iget v1, v0, Lhoo$a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 610
    .end local v0    # "item":Lhoo$a;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 611
    return-void

    .line 597
    .restart local v0    # "item":Lhoo$a;
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->h(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    goto :goto_0

    .line 600
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->i(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    goto :goto_0

    .line 603
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->j(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    goto :goto_0

    .line 606
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$11;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
