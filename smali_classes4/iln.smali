.class public final Liln;
.super Lili;
.source "ExceptionRender.java"


# direct methods
.method public constructor <init>(Lijz;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lili;-><init>(Lijz;)V

    .line 26
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
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
    const/4 v1, 0x0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string/jumbo v0, "e"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Lima;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v0, "4"

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v0, "exception"

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    if-eqz p7, :cond_0

    .line 2021
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Liln;->a:Lijz;

    const-string/jumbo v3, "appID"

    invoke-interface {v0, v3}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    :goto_1
    invoke-static {v2, p2}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {}, Lima;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v2, v1}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v0, p0, Liln;->a:Lijz;

    const-string/jumbo v3, "refViewID"

    invoke-interface {v0, v3}, Lijz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Liln;->a:Lijz;

    const-string/jumbo v3, "viewID"

    invoke-interface {v0, v3}, Lijz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    sget-boolean v0, Liui;->a:Z

    .line 131
    if-eqz v0, :cond_4

    const-string/jumbo v0, "bg"

    :goto_2
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v0, p0, Liln;->a:Lijz;

    const-string/jumbo v3, "actionID"

    invoke-interface {v0, v3}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v0, p0, Liln;->a:Lijz;

    const-string/jumbo v3, "actionToken"

    invoke-interface {v0, v3}, Lijz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lime;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {v2, p3}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {v2, p5}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v2, p6}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    if-eqz p7, :cond_5

    const-string/jumbo v0, "native"

    :goto_3
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Liln;->a:Lijz;

    invoke-interface {v0}, Lijz;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :try_start_0
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->j()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "toString"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_4
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v0, "$$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2024
    :cond_2
    const-string/jumbo v0, "\\$\\$"

    const-string/jumbo v3, "**"

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 105
    :cond_3
    const-string/jumbo v0, "exception_string_key"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-static {v2, v0}, Lima;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 131
    :cond_4
    const-string/jumbo v0, "fg"

    goto/16 :goto_2

    .line 170
    :cond_5
    const-string/jumbo v0, "java"

    goto :goto_3

    .line 180
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 30
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->b()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-static {p2}, Lima;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v7, v4

    move-object v9, v8

    .line 1039
    invoke-direct/range {v0 .. v9}, Liln;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 32
    return-object v0
.end method
