.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 595
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 599
    :cond_0
    return-void
.end method
