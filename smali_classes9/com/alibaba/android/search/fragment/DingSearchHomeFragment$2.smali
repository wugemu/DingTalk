.class final Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$2;
.super Ljava/lang/Object;
.source "DingSearchHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method
