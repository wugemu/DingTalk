.class public final Lihj;
.super Ljava/lang/Object;
.source "MonitorHelper.java"


# instance fields
.field public a:Lihl;

.field private b:Ligm;


# direct methods
.method public constructor <init>(Ligm;)V
    .locals 0
    .param p1, "defaultWebSocketClient"    # Ligm;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lihj;->b:Ligm;

    .line 19
    return-void
.end method

.method public static a(Lihi;)V
    .locals 1
    .param p0, "dataflowMonitorModel"    # Lihi;

    .prologue
    .line 137
    invoke-static {}, Liht;->a()Lihs;

    move-result-object v0

    invoke-interface {v0, p0}, Lihs;->a(Lihi;)V

    .line 138
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lihk;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 57
    new-instance v0, Lihk;

    invoke-direct {v0}, Lihk;-><init>()V

    .line 58
    .local v0, "monitorModel":Lihk;
    iput-object p1, v0, Lihk;->a:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lihj;->b:Ligm;

    invoke-virtual {v1}, Ligm;->h()Ljava/lang/String;

    move-result-object v1

    .line 1024
    iget-object v2, v0, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v3, "APPID"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lihj;->b:Ligm;

    .line 1385
    iget-object v1, v1, Ligm;->a:Ljava/lang/String;

    .line 2029
    iget-object v2, v0, Lihk;->b:Ljava/util/Map;

    const-string/jumbo v3, "URL"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0
.end method

.method public final a()Lihl;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lihj;->a:Lihl;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lihj;->a:Lihl;

    .line 89
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lihl;

    invoke-direct {v0}, Lihl;-><init>()V

    iput-object v0, p0, Lihj;->a:Lihl;

    .line 89
    iget-object v0, p0, Lihj;->a:Lihl;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 6
    .param p1, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p0}, Lihj;->a()Lihl;

    move-result-object v0

    .line 66
    .local v0, "simpleStatistical":Lihl;
    iget-wide v2, v0, Lihl;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lihl;->e:J

    .line 67
    iget-object v1, v0, Lihl;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lihl;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 68
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lihl;->g:Ljava/lang/String;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lihl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lihl;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 6
    .param p1, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    invoke-virtual {p0}, Lihj;->a()Lihl;

    move-result-object v0

    .line 76
    .local v0, "simpleStatistical":Lihl;
    iget-wide v2, v0, Lihl;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lihl;->f:J

    .line 77
    iget-object v1, v0, Lihl;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lihl;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 78
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lihl;->h:Ljava/lang/String;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lihl;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lihl;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetHost"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1}, Liic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lihj;->a()Lihl;

    move-result-object v0

    iput-object p1, v0, Lihl;->i:Ljava/lang/String;

    goto :goto_0
.end method
