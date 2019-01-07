.class final Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$b;
.super Ljava/lang/Object;
.source "AppsFileFilterFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$b;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 233
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 224
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$b;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;I)I

    .line 229
    return-void
.end method
