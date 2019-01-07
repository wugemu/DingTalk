.class public final Latf$24;
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Latf;


# direct methods
.method public constructor <init>(Latf;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 519
    iput-object p1, p0, Latf$24;->b:Latf;

    iput-object p2, p0, Latf$24;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 522
    iget-object v0, p0, Latf$24;->b:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$24;->a:Lcom/alibaba/wukong/Callback;

    .line 2068
    iget-object v2, v0, Lapw;->c:Latn;

    new-instance v3, Lapw$5;

    invoke-direct {v3, v0, v1}, Lapw$5;-><init>(Lapw;Lcom/alibaba/wukong/Callback;)V

    .line 2649
    new-instance v0, Latn$27;

    invoke-direct {v0, v2, v3}, Latn$27;-><init>(Latn;Lcma;)V

    .line 2665
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarDataSourceRemote] getReportConfig."

    aput-object v4, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2666
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    new-instance v3, Latn$28;

    invoke-direct {v3, v2, v0}, Latn$28;-><init>(Latn;Lcmi;)V

    .line 3160
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 3161
    iget-object v0, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v3}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->getReportConfig(Liyv;)V

    .line 523
    return-void
.end method
