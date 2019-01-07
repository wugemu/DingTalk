.class final Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;
.super Ljava/lang/Object;
.source "DingCompleteDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

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
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcoq;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;I)I

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->c(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    .line 142
    return-void
.end method
