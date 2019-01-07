.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$18;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Lkey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$18;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 499
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLkfe;)V
    .locals 3
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lkfe;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$18;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    move-result-object v0

    sget v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a:I

    .line 1101
    iget v2, p4, Lkfe;->e:I

    .line 518
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->setHeaderHeight(I)V

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$18;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .line 2101
    iget v1, p4, Lkfe;->e:I

    .line 519
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->setPullDistance(F)V

    .line 520
    return-void
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 504
    return-void
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 509
    return-void
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 514
    return-void
.end method
