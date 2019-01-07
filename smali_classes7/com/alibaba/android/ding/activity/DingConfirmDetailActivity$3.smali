.class final Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$3;
.super Ljava/lang/Object;
.source "DingConfirmDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->b(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcoq;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->b(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;I)I

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->c(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)V

    .line 129
    return-void
.end method
