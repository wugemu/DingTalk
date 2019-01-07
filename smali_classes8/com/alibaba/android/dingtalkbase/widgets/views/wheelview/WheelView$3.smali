.class final Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 92
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    const/4 v0, 0x0

    return v0
.end method
