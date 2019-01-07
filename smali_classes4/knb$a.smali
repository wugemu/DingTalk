.class final Lknb$a;
.super Lkni;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lknb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lknb;


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lknb$a;->a:Lknb;

    iget-object v0, v0, Lknb;->c:Lknc;

    .line 1049
    iget-object v0, v0, Lknc;->a:Lkmw;

    .line 1486
    iget-object v0, v0, Lkmw;->b:Ljava/lang/String;

    .line 133
    return-object v0
.end method

.method protected final b()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    const/4 v7, 0x0

    .line 147
    .local v7, "signalledCallback":Z
    :try_start_0
    iget-object v0, p0, Lknb$a;->a:Lknb;

    invoke-virtual {v0}, Lknb;->b()Lkne;

    .line 148
    iget-object v0, p0, Lknb$a;->a:Lknb;

    iget-object v0, v0, Lknb;->b:Lkoe;

    .line 2094
    iget-boolean v0, v0, Lkoe;->b:Z

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const/4 v7, 0x1

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    iget-object v0, p0, Lknb$a;->a:Lknb;

    iget-object v0, v0, Lknb;->a:Lkna;

    .line 2375
    iget-object v0, v0, Lkna;->c:Lkmq;

    .line 164
    invoke-virtual {v0, p0}, Lkmq;->a(Lknb$a;)V

    .line 165
    :goto_1
    return-void

    .line 152
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Ljava/io/IOException;
    if-eqz v7, :cond_3

    .line 158
    :try_start_1
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v8

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Callback failure for "

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lknb$a;->a:Lknb;

    .line 3174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4112
    iget-object v0, v1, Lknb;->b:Lkoe;

    .line 5094
    iget-boolean v0, v0, Lkoe;->b:Z

    .line 3174
    if-eqz v0, :cond_1

    const-string/jumbo v0, "canceled "

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3175
    iget-boolean v0, v1, Lknb;->d:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "web socket"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5180
    iget-object v0, v1, Lknb;->c:Lknc;

    .line 6049
    iget-object v0, v0, Lknc;->a:Lkmw;

    .line 6855
    const-string/jumbo v1, "/..."

    invoke-virtual {v0, v1}, Lkmw;->c(Ljava/lang/String;)Lkmw$a;

    move-result-object v12

    const-string/jumbo v0, ""

    .line 6996
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lkmw;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lkmw$a;->b:Ljava/lang/String;

    .line 6856
    const-string/jumbo v0, ""

    .line 7009
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lkmw;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lkmw$a;->c:Ljava/lang/String;

    .line 6858
    invoke-virtual {v12}, Lkmw$a;->b()Lkmw;

    move-result-object v0

    .line 6859
    invoke-virtual {v0}, Lkmw;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3176
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v6}, Lkoy;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_4
    iget-object v0, p0, Lknb$a;->a:Lknb;

    iget-object v0, v0, Lknb;->a:Lkna;

    .line 7375
    iget-object v0, v0, Lkna;->c:Lkmq;

    .line 164
    invoke-virtual {v0, p0}, Lkmq;->a(Lknb$a;)V

    goto/16 :goto_1

    .line 3174
    :cond_1
    :try_start_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 3175
    :cond_2
    const-string/jumbo v0, "call"

    goto :goto_3

    .line 160
    :cond_3
    iget-object v0, p0, Lknb$a;->a:Lknb;

    invoke-static {v0}, Lknb;->a(Lknb;)Lkms;

    move-result-object v0

    iget-object v1, p0, Lknb$a;->a:Lknb;

    invoke-virtual {v0, v1, v6}, Lkms;->callFailed(Lkmi;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 164
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lknb$a;->a:Lknb;

    iget-object v1, v1, Lknb;->a:Lkna;

    .line 8375
    iget-object v1, v1, Lkna;->c:Lkmq;

    .line 164
    invoke-virtual {v1, p0}, Lkmq;->a(Lknb$a;)V

    throw v0
.end method
