.class public final Lihr;
.super Ljava/lang/Object;
.source "DefaultMonitorPrinter.java"

# interfaces
.implements Lihs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lihi;)V
    .locals 2
    .param p1, "dataflowMonitorModel"    # Lihi;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 22
    const-string/jumbo v0, "WS_PERF"

    invoke-virtual {p1}, Lihi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final a(Lihk;)V
    .locals 2
    .param p1, "monitorModel"    # Lihk;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 17
    const-string/jumbo v0, "WS_PERF"

    invoke-virtual {p1}, Lihk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
