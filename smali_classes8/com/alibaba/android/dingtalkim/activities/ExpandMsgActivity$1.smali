.class final Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ExpandMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->finish()V

    .line 63
    const/4 v0, 0x1

    return v0
.end method
