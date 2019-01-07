.class public final Lifd;
.super Ljava/lang/Object;
.source "AVSystemProp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lifd$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "isRecordProp":Z
    :try_start_0
    const-string/jumbo v3, "getprop voice.record.conc.disabled"

    .line 56
    .local v3, "recordCmd":Ljava/lang/String;
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9, v3}, Liem;->a(JLjava/lang/String;)Liem$a;

    move-result-object v4

    .line 57
    .local v4, "recordStatus":Liem$a;
    if-eqz v4, :cond_0

    iget-object v8, v4, Liem$a;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 58
    iget-object v8, v4, Liem$a;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 60
    :cond_0
    const/4 v2, 0x0

    .line 61
    .local v2, "isVoipProp":Z
    const-string/jumbo v5, "getprop voice.voip.conc.disabled"

    .line 62
    .local v5, "voipCmd":Ljava/lang/String;
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9, v5}, Liem;->a(JLjava/lang/String;)Liem$a;

    move-result-object v6

    .line 63
    .local v6, "voipStatus":Liem$a;
    if-eqz v6, :cond_1

    iget-object v8, v6, Liem$a;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 64
    iget-object v8, v6, Liem$a;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 66
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "voice.record.conc.disabled: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",voice.voip.conc.disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lieg;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v7, 0x1

    .line 77
    .end local v2    # "isVoipProp":Z
    .end local v3    # "recordCmd":Ljava/lang/String;
    .end local v4    # "recordStatus":Liem$a;
    .end local v5    # "voipCmd":Ljava/lang/String;
    .end local v6    # "voipStatus":Liem$a;
    :cond_3
    :goto_0
    return v7

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 74
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0
.end method
