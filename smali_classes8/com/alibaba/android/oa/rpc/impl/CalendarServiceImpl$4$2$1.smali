.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2$1;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

.field final synthetic b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 151
    invoke-static {}, Leef;->a()Leef;

    iget-object v6, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;

    iget-wide v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->b:J

    iget-object v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;

    iget-object v2, v2, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;

    iget-wide v2, v2, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->a:J

    iget-object v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;

    iget-object v4, v4, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;

    iget-wide v4, v4, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->c:J

    .line 1158
    if-eqz v6, :cond_0

    .line 1162
    invoke-static/range {v0 .. v5}, Leef;->a(JJJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Leef;->b(J)I

    move-result v1

    invoke-static {v0, v6, v1}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 153
    :cond_0
    return-void
.end method
