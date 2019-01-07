.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;
.super Lcmi;
.source "CalendarServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getOrgEmpManagerCalSetting(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lefr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;->a:Lcma;

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 232
    check-cast p1, Lefr;

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1238
    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;->a:Lcma;

    .line 2041
    const/4 v0, 0x0

    .line 2042
    if-eqz p1, :cond_0

    .line 2043
    new-instance v0, Lega;

    invoke-direct {v0}, Lega;-><init>()V

    .line 2044
    iget-object v2, p1, Lefr;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lega;->a:J

    .line 2045
    iget-object v2, p1, Lefr;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lega;->b:J

    .line 2046
    iget-object v2, p1, Lefr;->c:Ljava/util/List;

    iput-object v2, v0, Lega;->c:Ljava/util/List;

    .line 2047
    iget-object v2, p1, Lefr;->d:Ljava/util/Map;

    iput-object v2, v0, Lega;->d:Ljava/util/Map;

    .line 1238
    :cond_0
    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 232
    :cond_1
    return-void
.end method
