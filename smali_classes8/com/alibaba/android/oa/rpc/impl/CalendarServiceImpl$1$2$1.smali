.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;

.field final synthetic b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    invoke-static {}, Leef;->a()Leef;

    iget-object v10, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;

    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;

    iget-wide v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->b:J

    iget-object v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    iget-object v2, v2, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;

    iget-wide v2, v2, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->c:J

    iget-object v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    iget-object v4, v4, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;

    iget-wide v4, v4, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->d:J

    iget-object v6, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    iget-object v6, v6, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;

    iget-wide v6, v6, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->e:J

    iget-object v8, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    iget-object v8, v8, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;

    iget-wide v8, v8, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->f:J

    .line 1141
    if-eqz v10, :cond_0

    .line 1145
    invoke-static/range {v0 .. v9}, Leef;->a(JJJJJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Leef;->b(J)I

    move-result v1

    invoke-static {v0, v10, v1}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 99
    :cond_0
    return-void
.end method
