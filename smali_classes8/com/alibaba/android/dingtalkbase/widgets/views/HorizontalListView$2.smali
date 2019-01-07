.class final Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Z)Z

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Z)Z

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->invalidate()V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 387
    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Z)Z

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->invalidate()V

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 400
    return-void
.end method
