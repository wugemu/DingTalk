.class final Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 71
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 74
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcnv;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->clearFocus()V

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->requestFocusFromTouch()Z

    .line 77
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;

    move-result-object v2

    .line 1075
    iget v2, v2, Lcth;->b:I

    .line 77
    div-int/lit8 v0, v2, 0x2

    .line 78
    .local v0, "delta":I
    if-lt p3, v0, :cond_1

    sub-int v1, p3, v0

    .line 79
    .local v1, "newPosition":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V

    .line 80
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)I

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    .line 82
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcte;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcte;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(I)Ljava/lang/Object;

    .line 90
    .end local v0    # "delta":I
    .end local v1    # "newPosition":I
    :cond_0
    :goto_1
    return-void

    .line 78
    .restart local v0    # "delta":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 86
    .end local v0    # "delta":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcte;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcte;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getSelectionItem()Ljava/lang/Object;

    goto :goto_1
.end method
