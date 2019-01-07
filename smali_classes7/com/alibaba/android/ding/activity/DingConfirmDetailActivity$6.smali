.class final Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;
.super Ljava/lang/Object;
.source "DingConfirmDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


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
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 218
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 198
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->b(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;I)I

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->supportInvalidateOptionsMenu()V

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->d(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)Laxu;

    move-result-object v0

    .line 1082
    iget-object v0, v0, Laxu;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)Laxu;

    move-result-object v0

    .line 2082
    iget-object v0, v0, Laxu;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .line 207
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->b()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)Laxu;

    move-result-object v0

    .line 2086
    iget-object v0, v0, Laxu;->b:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$6;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)Laxu;

    move-result-object v0

    .line 3086
    iget-object v0, v0, Laxu;->b:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .line 211
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->b()V

    goto :goto_0
.end method
