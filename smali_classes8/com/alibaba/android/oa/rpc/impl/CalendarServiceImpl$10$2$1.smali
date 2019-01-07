.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

.field final synthetic b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 343
    invoke-static {}, Leef;->a()Leef;

    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;

    iget-object v1, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    iget-wide v2, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;->b:J

    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;

    iget-object v1, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    iget-wide v4, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;->c:J

    .line 1172
    if-eqz v0, :cond_0

    .line 1175
    invoke-static {v2, v3, v4, v5}, Leef;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Leef;->b(J)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 345
    :cond_0
    return-void
.end method
