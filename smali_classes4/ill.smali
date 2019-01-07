.class public final Lill;
.super Lili;
.source "DataflowRender.java"


# direct methods
.method public constructor <init>(Lijz;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lili;-><init>(Lijz;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Likm;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    .line 1138
    iget-boolean v0, p1, Likm;->i:Z

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "dataflowModel has been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string/jumbo v0, "DF"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Lima;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lill;->a:Lijz;

    invoke-interface {v0}, Lijz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lill;->a:Lijz;

    invoke-interface {v0}, Lijz;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lill;->a:Lijz;

    invoke-interface {v0}, Lijz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v0, p0, Lill;->a:Lijz;

    invoke-interface {v0}, Lijz;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lill;->a:Lijz;

    invoke-interface {v0}, Lijz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lime;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p1, Likm;->a:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    iput-object v0, p1, Likm;->a:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 59
    :cond_1
    iget-object v0, p1, Likm;->a:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v0, p1, Likm;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v2, p1, Likm;->c:J

    iget-wide v4, p1, Likm;->d:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p1, Likm;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string/jumbo v0, "bundle"

    iput-object v0, p1, Likm;->e:Ljava/lang/String;

    .line 71
    :cond_2
    iget-object v0, p1, Likm;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 77
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v0, p1, Likm;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-string/jumbo v0, "diagnose"

    iput-object v0, p1, Likm;->f:Ljava/lang/String;

    .line 86
    :cond_3
    iget-object v0, p1, Likm;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    sget-boolean v0, Liui;->a:Z

    .line 92
    if-eqz v0, :cond_4

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    sget-boolean v0, Liui;->c:Z

    .line 95
    if-eqz v0, :cond_5

    const-string/jumbo v0, "1"

    :goto_1
    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    sget-boolean v0, Liui;->d:Z

    .line 98
    if-eqz v0, :cond_6

    const-string/jumbo v0, "1"

    :goto_2
    invoke-static {v1, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Likm;->a()V

    .line 101
    const-string/jumbo v0, "$$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_4
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 95
    :cond_5
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 98
    :cond_6
    const-string/jumbo v0, "0"

    goto :goto_2
.end method
