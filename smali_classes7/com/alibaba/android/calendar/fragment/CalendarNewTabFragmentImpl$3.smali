.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$3;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$3;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1115
    const-string/jumbo v0, "ding_calendar_today"

    invoke-static {v0}, Lavw;->b(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$3;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Laph$a;->a(J)V

    .line 471
    return-void
.end method
