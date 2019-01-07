.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17$1;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Laup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17$1;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "calendarMode"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17$1;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;

    iget-object v0, v0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0, p1}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;I)V

    .line 290
    return-void
.end method
