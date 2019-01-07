.class final Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity$4;
.super Ljava/lang/Object;
.source "PostPictureDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity$4;->a:Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity$4;->a:Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;->c(Lcom/alibaba/android/user/connection/activity/PostPictureDetailActivity;)Lfdp;

    move-result-object v0

    invoke-virtual {v0}, Lfdp;->d()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
