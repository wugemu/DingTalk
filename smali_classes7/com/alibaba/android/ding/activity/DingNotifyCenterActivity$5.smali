.class final Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$5;
.super Ljava/lang/Object;
.source "DingNotifyCenterActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$5;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 160
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 150
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$5;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;I)I

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$5;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->a(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    .line 156
    return-void
.end method
