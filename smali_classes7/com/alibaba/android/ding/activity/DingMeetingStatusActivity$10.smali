.class final Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;
.super Ljava/lang/Object;
.source "DingMeetingStatusActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 268
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 244
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;I)I

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->supportInvalidateOptionsMenu()V

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->d(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v0

    .line 1083
    iget-object v0, v0, Layk;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 252
    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v0

    .line 2083
    iget-object v0, v0, Layk;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 253
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->b()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->d(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v0

    .line 2087
    iget-object v0, v0, Layk;->b:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v0

    .line 3087
    iget-object v0, v0, Layk;->b:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 257
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->b()V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->d(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v0

    .line 3091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 260
    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$10;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v0

    .line 4091
    iget-object v0, v0, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 261
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->b()V

    goto :goto_0
.end method
