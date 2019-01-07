.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$1;
.super Ljava/lang/Object;
.source "NameCardShareActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 100
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 90
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;I)I

    .line 95
    return-void
.end method
