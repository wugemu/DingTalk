.class public final Lads;
.super Ladt;
.source "MessageConvertToHtmlMailTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ladt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "</div></div></body></html>"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "hi"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 26
    invoke-super {p0, p1}, Ladt;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"></head><body style=\"font-family:\'PingHei\',\'Helvetica Neue\',\'Helvetica\',\'STHeitiSC\',\'Arial\',sans-serif;margin:10px;font-size:30px;word-break:break-word;\"><div class=\"content_margin\" style=\"font-size:16px;\"><br/>%s<div style=background:#f3f4f6;border-radius:3px;padding:12px 12px 12px 12px;>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 29
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "<div style=\"color:#999;font-size:15px;margin:15px 0px 5px 0px;\">%s&nbsp;&nbsp;%s</div>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "<table width=\"100%%\"><td><hr style=\"border:none;border-top:1px solid #e3e3e3;\"/></td><td style=\"padding:0 12px;white-space:nowrap;color:#999;\">%s</td><td><hr style=\"border:none;border-top:1px solid #e3e3e3;\"/></td></table>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lads;->b:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "<div style=\"color:#262626;\">%s</div>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method
