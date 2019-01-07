.class public final Lilk;
.super Lili;
.source "BehavorRender.java"


# direct methods
.method public constructor <init>(Lijz;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lili;-><init>(Lijz;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Likj;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {p2}, Likj;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p2}, Likj;->a()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "header"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :goto_1
    invoke-static {}, Lima;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v0, "2"

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-static {v2, p1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_2
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_3
    iget-object v0, p0, Lilk;->a:Lijz;

    const-string/jumbo v3, "appID"

    invoke-interface {v0, v3}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7332
    iget-object v0, p2, Likj;->a:Ljava/lang/String;

    .line 97
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7493
    iget v3, p2, Likj;->h:I

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8448
    iget-object v0, p2, Likj;->e:Ljava/lang/String;

    .line 103
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8459
    iget-object v0, p2, Likj;->f:Ljava/lang/String;

    .line 106
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9340
    iget-object v0, p2, Likj;->b:Ljava/lang/String;

    .line 109
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9348
    iget-object v0, p2, Likj;->c:Ljava/lang/String;

    .line 112
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9356
    iget-object v0, p2, Likj;->d:Ljava/lang/String;

    .line 115
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p2}, Likj;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, p0, Lilk;->a:Lijz;

    const-string/jumbo v1, "refViewID"

    invoke-interface {v0, v1}, Lijz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, p0, Lilk;->a:Lijz;

    const-string/jumbo v1, "viewID"

    invoke-interface {v0, v1}, Lijz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v0, p0, Lilk;->a:Lijz;

    const-string/jumbo v1, "actionID"

    invoke-interface {v0, v1}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lilk;->a:Lijz;

    const-string/jumbo v1, "actionToken"

    invoke-interface {v0, v1}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lilk;->a:Lijz;

    const-string/jumbo v1, "actionDesc"

    invoke-interface {v0, v1}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lime;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19018
    invoke-static {}, Lijt;->a()I

    move-result v0

    .line 196
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {}, Lila;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lila;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->u()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 19485
    iget-object v0, p2, Likj;->g:Ljava/lang/String;

    .line 208
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lilk;->a:Lijz;

    invoke-interface {v0}, Lijz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lijv;->a(Landroid/content/Context;)Lijv;

    move-result-object v0

    invoke-virtual {v0}, Lijv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v0, "$$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    const-string/jumbo v0, "D-VM"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 65
    :cond_1
    const-string/jumbo v0, "event"

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 75
    :cond_2
    iget-object v0, p0, Lilk;->a:Lijz;

    const-string/jumbo v3, "actionRefer"

    .line 76
    invoke-interface {v0, v3}, Lijz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method
