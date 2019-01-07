.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2$1;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

.field final synthetic b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 403
    invoke-static {}, Leef;->a()Leef;

    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;

    iget-object v1, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    iget-wide v2, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->a:J

    .line 1185
    if-eqz v0, :cond_0

    .line 1188
    invoke-static {v2, v3}, Leef;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Leef;->b(J)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 405
    :cond_0
    return-void
.end method
