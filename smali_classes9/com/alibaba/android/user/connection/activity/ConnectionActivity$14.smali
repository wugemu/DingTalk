.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$14;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$14;->b:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$14;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$14;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 352
    const/4 v0, 0x1

    return v0
.end method
