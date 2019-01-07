.class public final Lilo;
.super Lili;
.source "PerformanceRender.java"


# direct methods
.method public constructor <init>(Lijz;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lili;-><init>(Lijz;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_0
    invoke-static {}, Lima;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lilo;->a:Lijz;

    const-string/jumbo v2, "actionID"

    invoke-interface {v1, v2}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lilo;->a:Lijz;

    const-string/jumbo v2, "actionToken"

    invoke-interface {v1, v2}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lilo;->a:Lijz;

    const-string/jumbo v2, "actionDesc"

    invoke-interface {v1, v2}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v0, p2}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v0, p3}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v0, p4}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {v0, p5}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v0, p6}, Lima;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lime;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-static {}, Lijt;->a()I

    move-result v1

    .line 132
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Lila;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lila;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->u()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lilo;->a:Lijz;

    invoke-interface {v1}, Lijz;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lijv;->a(Landroid/content/Context;)Lijv;

    move-result-object v1

    invoke-virtual {v1}, Lijv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    const-string/jumbo v1, "D-MM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
