.class final Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$2;
.super Ljava/lang/Object;
.source "ExpandMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$2;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$2;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
