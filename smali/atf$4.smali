.class final Latf$4;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(Lars;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lars;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method constructor <init>(Latf;Lars;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 344
    iput-object p1, p0, Latf$4;->c:Latf;

    iput-object p2, p0, Latf$4;->a:Lars;

    iput-object p3, p0, Latf$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 347
    iget-object v0, p0, Latf$4;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$4;->a:Lars;

    iget-object v2, p0, Latf$4;->b:Lcom/alibaba/wukong/Callback;

    .line 1639
    iget-object v3, v0, Lapw;->c:Latn;

    new-instance v4, Lapw$11;

    invoke-direct {v4, v0, v2}, Lapw$11;-><init>(Lapw;Lcom/alibaba/wukong/Callback;)V

    .line 2052
    if-nez v1, :cond_0

    .line 2054
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const-string/jumbo v0, "create calendar failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "createObject is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    :goto_0
    return-void

    .line 2060
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2062
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

    .line 2067
    :cond_1
    new-instance v0, Latn$1;

    invoke-direct {v0, v3, v4}, Latn$1;-><init>(Latn;Lcma;)V

    .line 2083
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarDataSourceRemote] create."

    aput-object v5, v2, v4

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 2084
    invoke-static {}, Latp;->a()Latp;

    move-result-object v2

    .line 3040
    new-instance v4, Laqd;

    invoke-direct {v4}, Laqd;-><init>()V

    .line 3042
    iget-object v5, v1, Lars;->a:Last;

    if-eqz v5, :cond_2

    .line 3043
    iget-object v5, v1, Lars;->a:Last;

    invoke-virtual {v5}, Last;->a()Lara;

    move-result-object v5

    iput-object v5, v4, Laqd;->a:Lara;

    .line 3046
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Laqd;->d:Ljava/lang/String;

    .line 3047
    iget v5, v1, Lars;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Laqd;->b:Ljava/lang/Integer;

    .line 3048
    iget v5, v1, Lars;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Laqd;->c:Ljava/lang/Integer;

    .line 3049
    iget-object v1, v1, Lars;->d:Ljava/util/Map;

    iput-object v1, v4, Laqd;->e:Ljava/util/Map;

    .line 2084
    new-instance v1, Latn$12;

    invoke-direct {v1, v3, v0}, Latn$12;-><init>(Latn;Lcmi;)V

    .line 3084
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3085
    iget-object v0, v2, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v4, v1}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->create(Laqd;Liyv;)V

    goto :goto_0
.end method
