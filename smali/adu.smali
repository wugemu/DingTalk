.class public final Ladu;
.super Ladt;
.source "MessageConvertToTextMailTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ladt;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Ladu;->c()V

    .line 84
    invoke-direct {p0}, Ladu;->c()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "hi"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-super {p0, p1}, Ladt;->a(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Ladu;->c()V

    .line 35
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "----------"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 45
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 46
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "----------\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Ladu;->c()V

    .line 56
    iget-object v0, p0, Ladu;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method
