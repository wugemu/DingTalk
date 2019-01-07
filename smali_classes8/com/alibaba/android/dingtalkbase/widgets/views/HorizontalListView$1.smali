.class final Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$1;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
