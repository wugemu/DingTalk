.class final Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$1;
.super Ljava/lang/Object;
.source "CalendarAllDayEventsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->b(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;)V

    .line 75
    return-void
.end method
