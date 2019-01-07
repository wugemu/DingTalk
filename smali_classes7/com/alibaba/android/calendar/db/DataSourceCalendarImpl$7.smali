.class final Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;
.super Ljava/lang/Object;
.source "DataSourceCalendarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->k(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->l(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drop table tb_calendar"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceCalendarImpl] dropCalendarPreTableIfExists drop calendar."

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->m(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->n(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drop table tb_event"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceCalendarImpl] dropCalendarPreTableIfExists drop event."

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 956
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->o(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 957
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->p(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drop table tb_event_v2"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceCalendarImpl] dropCalendarPreTableIfExists drop eventV2."

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 961
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->q(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 962
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$7;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v1}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->r(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "drop table tb_instance"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceCalendarImpl] dropCalendarPreTableIfExists drop instance."

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_3
    :goto_0
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DataSourceCalendarImpl] dropCalendarPreTableIfExists e="

    aput-object v2, v1, v4

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lawm;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
