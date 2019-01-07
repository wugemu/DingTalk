.class public final Latf$8;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Latf;


# direct methods
.method public constructor <init>(Latf;JJLjava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 380
    iput-object p1, p0, Latf$8;->e:Latf;

    iput-wide p2, p0, Latf$8;->a:J

    iput-wide p4, p0, Latf$8;->b:J

    iput-object p6, p0, Latf$8;->c:Ljava/util/List;

    iput-object p7, p0, Latf$8;->d:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 383
    iget-object v0, p0, Latf$8;->e:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-wide v2, p0, Latf$8;->a:J

    iget-wide v4, p0, Latf$8;->b:J

    iget-object v1, p0, Latf$8;->c:Ljava/util/List;

    iget-object v6, p0, Latf$8;->d:Lcom/alibaba/wukong/Callback;

    .line 1719
    iget-object v7, v0, Lapw;->c:Latn;

    new-instance v8, Lapw$2;

    invoke-direct {v8, v0, v6}, Lapw$2;-><init>(Lapw;Lcom/alibaba/wukong/Callback;)V

    .line 2213
    cmp-long v0, v2, v10

    if-lez v0, :cond_0

    cmp-long v0, v4, v10

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2215
    :cond_0
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    const-string/jumbo v0, "update alert failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "calendarId <= 0 || eventId <= 0 || alarmList is empty"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    :goto_0
    return-void

    .line 2221
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2223
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->dt_errmsg_network_abnormal:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2228
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2229
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    .line 2230
    if-eqz v0, :cond_3

    .line 2231
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->toIDLModel()Lapz;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2235
    :cond_4
    new-instance v0, Latn$36;

    invoke-direct {v0, v7, v8}, Latn$36;-><init>(Latn;Lcma;)V

    .line 2251
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[CalendarDataSourceRemote] updateAlert calendarId:"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", eventId:"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2252
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Latn$2;

    invoke-direct {v4, v7, v0}, Latn$2;-><init>(Latn;Lcmi;)V

    .line 3105
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3106
    iget-object v0, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v2, v3, v6, v4}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->updateAlert(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto/16 :goto_0
.end method
