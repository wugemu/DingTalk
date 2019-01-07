.class final Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$6;
.super Ljava/lang/Object;
.source "CalendarShareReceiverDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$6;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget v0, Laow$f;->dt_errmsg_network_abnormal:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$6;->a:Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)Lapj$a;

    move-result-object v0

    invoke-interface {v0}, Lapj$a;->b()V

    goto :goto_0
.end method
