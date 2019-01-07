.class final Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;
.super Ljava/lang/Object;
.source "AvatorHorizontalListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .prologue
    .line 84
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

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
    .line 87
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_0
    return-void
.end method
