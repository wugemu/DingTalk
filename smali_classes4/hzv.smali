.class public final Lhzv;
.super Ljava/lang/Object;
.source "WKTrace.java"


# instance fields
.field private a:Lcom/alibaba/doraemon/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/trace/Trace;)V
    .locals 0
    .param p1, "trace"    # Lcom/alibaba/doraemon/trace/Trace;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 36
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 17
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "anotherTraceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 23
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lhzv;->a:Lcom/alibaba/doraemon/trace/Trace;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method
