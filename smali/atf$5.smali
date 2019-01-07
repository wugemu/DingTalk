.class final Latf$5;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(Lasi;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasi;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method constructor <init>(Latf;Lasi;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 353
    iput-object p1, p0, Latf$5;->c:Latf;

    iput-object p2, p0, Latf$5;->a:Lasi;

    iput-object p3, p0, Latf$5;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 356
    iget-object v0, p0, Latf$5;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$5;->a:Lasi;

    iget-object v2, p0, Latf$5;->b:Lcom/alibaba/wukong/Callback;

    .line 1659
    iget-object v3, v0, Lapw;->c:Latn;

    new-instance v4, Lapw$12;

    invoke-direct {v4, v0, v2}, Lapw$12;-><init>(Lapw;Lcom/alibaba/wukong/Callback;)V

    .line 2092
    if-nez v1, :cond_0

    .line 2094
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const-string/jumbo v0, "update calendar failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "updateObject is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :goto_0
    return-void

    .line 2100
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2102
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->dt_errmsg_network_abnormal:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2107
    :cond_1
    new-instance v0, Latn$23;

    invoke-direct {v0, v3, v4}, Latn$23;-><init>(Latn;Lcma;)V

    .line 2123
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarDataSourceRemote] update."

    aput-object v5, v2, v4

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 2124
    invoke-static {}, Latp;->a()Latp;

    move-result-object v2

    .line 3039
    new-instance v4, Laqs;

    invoke-direct {v4}, Laqs;-><init>()V

    .line 3040
    iget-wide v6, v1, Lasi;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Laqs;->a:Ljava/lang/Long;

    .line 3041
    iget-wide v6, v1, Lasi;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Laqs;->b:Ljava/lang/Long;

    .line 3043
    iget-object v5, v1, Lasi;->c:Last;

    if-eqz v5, :cond_2

    .line 3044
    iget-object v1, v1, Lasi;->c:Last;

    invoke-virtual {v1}, Last;->a()Lara;

    move-result-object v1

    iput-object v1, v4, Laqs;->c:Lara;

    .line 2124
    :cond_2
    new-instance v1, Latn$31;

    invoke-direct {v1, v3, v0}, Latn$31;-><init>(Latn;Lcmi;)V

    .line 3090
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3091
    iget-object v0, v2, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v4, v1}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->update(Laqs;Liyv;)V

    goto :goto_0
.end method
