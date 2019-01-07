.class public final Lcom/uc/webview/export/internal/utility/i;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/i$b;,
        Lcom/uc/webview/export/internal/utility/i$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;)Z

    .line 62
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/g$a;)Z

    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/m;->a(Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/g$a;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/uc/webview/export/internal/utility/g$a;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 89
    :cond_0
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify: file = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 95
    invoke-static {p1, p0, p4}, Lcom/uc/webview/export/internal/utility/i$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_1

    array-length v0, v1

    if-gtz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 97
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: failed: Signatures of archive is empty. Costs "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz p4, :cond_2

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-interface {p4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_2
    :goto_2
    if-eqz p5, :cond_3

    :try_start_2
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->i:J

    invoke-virtual {p5, v0, v1}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_3
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 96
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    :cond_5
    :try_start_3
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/i$a;->a([Landroid/content/pm/Signature;)[Ljava/security/PublicKey;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i$a;->a([Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: failed: PublicKeys of archive is empty. Costs "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    if-eqz p4, :cond_6

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-interface {p4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :cond_6
    :goto_3
    if-eqz p5, :cond_7

    :try_start_5
    sget-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->j:J

    invoke-virtual {p5, v0, v1}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    :cond_7
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 110
    :cond_8
    :try_start_6
    const-string/jumbo v1, "SignatureVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verify: step 0: get PublicKeys of archive ok. Costs "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p2, :cond_a

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/uc/webview/export/internal/utility/i$a;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 119
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: step 1: get Signatures of app from current context and verify ok. Costs "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 122
    :cond_9
    :try_start_7
    const-string/jumbo v1, "SignatureVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verify: step 1: get Signatures of app from current context and verify failed. Costs "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    const-string/jumbo v1, "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"

    const/4 v6, 0x2

    invoke-static {v1, v6}, Lhv;->a(Ljava/lang/String;I)[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .line 132
    :try_start_8
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/i$a;->a([B)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 134
    const-string/jumbo v1, "SignatureVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verify: step 2: get Signatures of app from hardcode app and verify ok. Costs "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 135
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 138
    :cond_b
    :try_start_9
    const-string/jumbo v1, "SignatureVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verify: step 2: get Signatures of app from hardcode app and verify failed. Costs "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 145
    invoke-static {p1, p3}, Lcom/uc/webview/export/internal/utility/i$a;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 147
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: step 3: get Signatures of app from "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " and verify ok. Costs "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 148
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 150
    :cond_c
    :try_start_a
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verify: step 3: get Signatures of app from "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " and verify failed. Costs "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 152
    :cond_d
    if-eqz p4, :cond_e

    const/4 v0, 0x2

    :try_start_b
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-interface {p4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 160
    :cond_e
    :goto_4
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_5
    if-eqz p5, :cond_f

    sget-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->l:J

    invoke-virtual {p5, v0, v1}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 163
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    if-eqz p4, :cond_10

    const/4 v1, 0x2

    :try_start_c
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-interface {p4, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 155
    :cond_10
    :goto_6
    if-eqz p5, :cond_11

    :try_start_d
    sget-wide v4, Lcom/uc/webview/export/internal/utility/g$a;->m:J

    invoke-virtual {p5, v4, v5}, Lcom/uc/webview/export/internal/utility/g$a;->a(J)V

    .line 156
    :cond_11
    if-eqz p5, :cond_12

    const-string/jumbo v1, "csc_sigvrfe"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 157
    :cond_12
    if-eqz p5, :cond_13

    const-string/jumbo v1, "csc_sigvrfe_v"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 158
    :cond_13
    const-string/jumbo v0, "SignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 160
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "SignatureVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Verify: total costs:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_2
.end method

.method private static final a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/i$a;->a([Landroid/content/pm/Signature;)[Ljava/security/PublicKey;

    move-result-object v3

    .line 169
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/i$a;->a([Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.isEmpty(appPublicKeys) == true"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return v0

    .line 174
    :cond_0
    if-eqz v3, :cond_1

    if-nez p0, :cond_3

    :cond_1
    const-string/jumbo v2, "SignatureVerifier"

    const-string/jumbo v3, "Sign.equals: s1 == null || s2 == null"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    .line 175
    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.equals(appPublicKeys, archiveKeys) == false"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.isEmpty(appPublicKeys) == true"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, v3

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v5, p0

    move v2, v0

    :goto_3
    if-ge v2, v5, :cond_5

    aget-object v6, p0, v2

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    .line 184
    :cond_6
    const-string/jumbo v0, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u6b63\u786e!"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 185
    goto :goto_0
.end method
