.class final Lcln$1;
.super Ljava/lang/Object;
.source "NetSpeedDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcln;-><init>(JLcln$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcln$a;

.field final synthetic d:Lcln;


# direct methods
.method constructor <init>(Lcln;JJLcln$a;)V
    .locals 0
    .param p1, "this$0"    # Lcln;

    .prologue
    .line 18
    iput-object p1, p0, Lcln$1;->d:Lcln;

    iput-wide p2, p0, Lcln$1;->a:J

    iput-wide p4, p0, Lcln$1;->b:J

    iput-object p6, p0, Lcln$1;->c:Lcln$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 21
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 22
    .local v2, "totalData":J
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcln$1;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcln$1;->b:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v4, "kb/s"

    .line 23
    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "speed":Ljava/lang/String;
    iget-object v1, p0, Lcln$1;->c:Lcln$a;

    invoke-interface {v1, v0}, Lcln$a;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method
