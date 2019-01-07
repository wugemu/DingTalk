.class final Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;
.super Ljava/lang/Object;
.source "SelectorHorizontalListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/widget/SelectorHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

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
    .line 96
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->b(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->c(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2$1;-><init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView$2;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    return-void
.end method
