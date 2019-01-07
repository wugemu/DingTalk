.class public final Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot;
.super Landroid/widget/RelativeLayout;
.source "DdVideoTouchRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 34
    .local v0, "consumed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot;->b:Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot$a;

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 38
    .local v2, "timeStamp":J
    iget-wide v4, p0, Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 39
    iput-wide v2, p0, Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot;->a:J

    .line 44
    .end local v2    # "timeStamp":J
    :cond_0
    return v0
.end method

.method public final setOnTouchReceiver(Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot$a;)V
    .locals 0
    .param p1, "receiver"    # Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot$a;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot;->b:Lcom/alibaba/android/rimet/video/view/DdVideoTouchRoot$a;

    .line 49
    return-void
.end method
