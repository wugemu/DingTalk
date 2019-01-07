.class final Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;
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
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->EDIT:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v0, v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->EDIT:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->d(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)Lapj$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v1

    invoke-interface {v0, v1}, Lapj$a;->a(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    goto :goto_0
.end method
