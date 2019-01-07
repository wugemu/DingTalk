.class final Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private b:Landroid/view/View;

.field private c:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)V
    .locals 3
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->c:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->b:Landroid/view/View;

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
