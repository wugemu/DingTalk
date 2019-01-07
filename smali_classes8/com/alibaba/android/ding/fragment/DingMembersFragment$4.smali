.class final Lcom/alibaba/android/ding/fragment/DingMembersFragment$4;
.super Ljava/lang/Object;
.source "DingMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$4;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$4;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$4;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->c()V

    .line 302
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
