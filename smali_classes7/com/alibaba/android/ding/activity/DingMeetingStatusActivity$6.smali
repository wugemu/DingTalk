.class final Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;
.super Ljava/lang/Object;
.source "DingMeetingStatusActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcoq;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;I)I

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$6;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->c(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    .line 141
    return-void
.end method
