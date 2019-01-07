.class final Lcom/alibaba/android/user/connection/activity/PostDetailActivity$5;
.super Ljava/lang/Object;
.source "PostDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$5;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$5;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->d(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Lfdp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$5;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->d(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Lfdp;

    move-result-object v0

    invoke-virtual {v0}, Lfdp;->d()V

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
