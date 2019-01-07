.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$5;
.super Ljava/lang/Object;
.source "NameCardOrgsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$5;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$5;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$5;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCursorVisible(Z)V

    .line 254
    return v2
.end method
