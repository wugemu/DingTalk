.class final Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$1;
.super Ljava/lang/Object;
.source "CalendarShareReceiverDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)Lapj$a;

    move-result-object v0

    invoke-interface {v0}, Lapj$a;->a()V

    .line 76
    return-void
.end method
