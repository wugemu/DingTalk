.class final Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 347
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 350
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;

    move-result-object v1

    .line 1083
    iget v1, v1, Lcth;->c:I

    .line 350
    if-gtz v1, :cond_0

    .line 351
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 352
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "wheel item height <= 0."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-static {v1, p0}, Lcoq;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 357
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 358
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;

    move-result-object v1

    .line 2083
    iget v1, v1, Lcth;->c:I

    .line 358
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;

    move-result-object v2

    .line 3075
    iget v2, v2, Lcth;->b:I

    .line 358
    mul-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 360
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;

    move-result-object v4

    .line 4075
    iget v4, v4, Lcth;->b:I

    .line 360
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 361
    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;

    move-result-object v4

    .line 5075
    iget v4, v4, Lcth;->b:I

    .line 361
    div-int/lit8 v4, v4, 0x2

    .line 359
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;III)V

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;

    move-result-object v2

    .line 5091
    iget v2, v2, Lcth;->d:I

    .line 362
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setBackgroundColor(I)V

    .line 364
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method
