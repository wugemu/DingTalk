.class final Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;
.super Ljava/lang/Object;
.source "DingCompleteDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


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
    .line 238
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 260
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 241
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;I)I

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->d(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Layo;

    move-result-object v0

    .line 1083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Layo;

    move-result-object v0

    .line 2083
    iget-object v0, v0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 249
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->c()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Layo;

    move-result-object v0

    .line 2087
    iget-object v0, v0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 252
    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Layo;

    move-result-object v0

    .line 3087
    iget-object v0, v0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 253
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->c()V

    goto :goto_0
.end method
