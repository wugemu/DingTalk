.class final Lcom/alibaba/android/search/fragment/BaseSearchFragment$4;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 285
    const/4 v0, 0x0

    return v0
.end method
