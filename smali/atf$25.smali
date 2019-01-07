.class public final Latf$25;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 537
    iput-object p1, p0, Latf$25;->c:Latf;

    iput-object p2, p0, Latf$25;->a:Ljava/util/List;

    iput-object p3, p0, Latf$25;->b:Lcom/alibaba/wukong/Callback;

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
    .line 540
    iget-object v0, p0, Latf$25;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$25;->a:Ljava/util/List;

    iget-object v2, p0, Latf$25;->b:Lcom/alibaba/wukong/Callback;

    .line 2090
    iget-object v3, v0, Lapw;->c:Latn;

    new-instance v4, Lapw$6;

    invoke-direct {v4, v0, v2}, Lapw$6;-><init>(Lapw;Lcom/alibaba/wukong/Callback;)V

    .line 2671
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2673
    :cond_0
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laow$f;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    const-string/jumbo v0, "uploadReportData "

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "reportDataList ==null || reportDataList is empty"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    :goto_0
    return-void

    .line 2679
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2680
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lase;

    .line 2681
    if-eqz v0, :cond_2

    .line 2684
    invoke-virtual {v0}, Lase;->a()Laqj;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2687
    :cond_3
    new-instance v0, Latn$29;

    invoke-direct {v0, v3, v4}, Latn$29;-><init>(Latn;Lcma;)V

    .line 2703
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarDataSourceRemote] uploadReportData."

    aput-object v5, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2704
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    new-instance v4, Latn$30;

    invoke-direct {v4, v3, v0}, Latn$30;-><init>(Latn;Lcmi;)V

    .line 3165
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3166
    iget-object v0, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->uploadReportData(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
