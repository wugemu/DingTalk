.class final Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$2;
.super Ljava/lang/Object;
.source "CalendarAllDayEventsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxm;

.field final synthetic b:Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;Laxm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$2;->b:Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    iput-object p2, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$2;->a:Laxm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$2;->a:Laxm;

    invoke-virtual {v0}, Laxm;->b()V

    .line 103
    return-void
.end method
