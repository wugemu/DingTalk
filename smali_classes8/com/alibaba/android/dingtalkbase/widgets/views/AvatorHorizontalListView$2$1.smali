.class final Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;
.super Ljava/lang/Object;
.source "AvatorHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;

    .prologue
    .line 90
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;

    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 93
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;->a:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->b(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;->a(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
