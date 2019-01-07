.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;
.super Ljava/lang/Object;
.source "HorizontalToolBarScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->setItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    .prologue
    .line 89
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    iput p2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "paramAnonymousView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->a:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->setCurrentItem(I)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->a:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->a:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;->a(ILjava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method
