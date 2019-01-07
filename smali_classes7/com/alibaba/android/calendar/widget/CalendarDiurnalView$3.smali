.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$3;
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
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/32 v4, 0xea60

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->i(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    .line 183
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    invoke-virtual {v0, p0, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method
