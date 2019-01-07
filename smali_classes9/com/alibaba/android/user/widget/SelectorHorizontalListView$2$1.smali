.class final Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;
.super Ljava/lang/Object;
.source "SelectorHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;->b:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;

    iput p2, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    iget-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;->b:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;

    iget-object v1, v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    iget v2, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;->a:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a(I)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v0

    .line 103
    .local v0, "object":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    iget-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;->b:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;

    iget-object v1, v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;->b:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;

    iget-object v1, v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->c(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    .line 105
    return-void
.end method
