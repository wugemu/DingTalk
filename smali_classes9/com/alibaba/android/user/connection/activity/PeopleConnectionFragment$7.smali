.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;
.super Ljava/lang/Object;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->circle_timeline_list:I

    if-ne v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->n(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfdp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->n(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lfdp;

    move-result-object v0

    invoke-virtual {v0}, Lfdp;->d()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 424
    :goto_0
    return v2

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$7;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
