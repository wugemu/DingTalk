.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$4;
.super Ljava/lang/Object;
.source "CalendarDiurnalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$4;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$4;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;Z)V

    .line 405
    return-void
.end method