.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->g(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->g(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->d(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->g(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->d(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 418
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->g(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    :cond_1
    return-void
.end method
