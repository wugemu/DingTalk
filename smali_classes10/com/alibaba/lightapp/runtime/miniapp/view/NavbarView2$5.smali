.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;
.super Ljava/lang/Object;
.source "NavbarView2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/ListPopupWindow;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;Ljava/util/List;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->b:Landroid/widget/ListPopupWindow;

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
    .line 518
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->a:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoo$a;

    .line 520
    .local v0, "item":Lhoo$a;
    if-eqz v0, :cond_0

    .line 521
    iget v1, v0, Lhoo$a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 543
    .end local v0    # "item":Lhoo$a;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 544
    return-void

    .line 523
    .restart local v0    # "item":Lhoo$a;
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->c(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->d(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    goto :goto_0

    .line 529
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->e(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    goto :goto_0

    .line 532
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->b(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    goto :goto_0

    .line 535
    :pswitch_4
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->f(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    goto :goto_0

    .line 538
    :pswitch_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$5;->c:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->g(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
