.class final Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$2;
.super Ljava/lang/Object;
.source "MessageMoreMenuView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$2;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 195
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 185
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$2;->a:Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;->a(Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;I)V

    .line 190
    return-void
.end method
