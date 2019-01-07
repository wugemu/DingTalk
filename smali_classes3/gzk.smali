.class public final Lgzk;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/content/Context;

.field b:Lgzh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgzh;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "module"    # Lgzh;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lgzk;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lgzk;->b:Lgzh;

    .line 28
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 34
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lgzk;->b:Lgzh;

    iget-object v2, v3, Lgzh;->a:Ljava/lang/String;

    .line 35
    .local v2, "businessType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 69
    .end local v2    # "businessType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v2    # "businessType":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lgzg;->a()Lgzg;

    .line 50
    new-instance v15, Lgze;

    invoke-direct {v15}, Lgze;-><init>()V

    .line 51
    .local v15, "errorBuilder":Lgze;
    move-object/from16 v0, p0

    iget-object v3, v0, Lgzk;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgzk;->b:Lgzh;

    invoke-virtual {v15, v3, v4}, Lgze;->a(Landroid/content/Context;Lgzh;)Lgzi;

    move-result-object v17

    .line 52
    .local v17, "mResult":Lgzi;
    if-eqz v17, :cond_0

    .line 53
    move-object/from16 v0, v17

    iget-object v0, v0, Lgzi;->d:Ljava/lang/Integer;

    move-object/from16 v16, v0

    .line 54
    .local v16, "eventId":Ljava/lang/Integer;
    move-object/from16 v0, v17

    iget-object v10, v0, Lgzi;->e:Ljava/lang/String;

    .line 55
    .local v10, "arg1":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v11, v0, Lgzi;->a:Ljava/lang/String;

    .line 56
    .local v11, "arg2":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v8, v0, Lgzi;->b:Ljava/lang/String;

    .line 57
    .local v8, "page":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v12, v0, Lgzi;->c:Ljava/lang/String;

    .line 59
    .local v12, "arg3":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1225
    iget-object v3, v4, Lhul;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lhul;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lhul;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lhul;->a:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 1226
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "have send args is null\uff0cyou must init first. appId "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lhul;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " appVersion "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lhul;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " appKey "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lhul;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2029
    const-string/jumbo v5, "RestApi"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1155
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1160
    const-string/jumbo v5, "h-adashx.ut.taobao.com"

    .line 1163
    iget-object v3, v4, Lhul;->c:Ljava/lang/String;

    iget-object v4, v4, Lhul;->a:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lhur;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 59
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 66
    .end local v2    # "businessType":Ljava/lang/String;
    .end local v8    # "page":Ljava/lang/String;
    .end local v10    # "arg1":Ljava/lang/String;
    .end local v11    # "arg2":Ljava/lang/String;
    .end local v12    # "arg3":Ljava/lang/String;
    .end local v15    # "errorBuilder":Lgze;
    .end local v16    # "eventId":Ljava/lang/Integer;
    .end local v17    # "mResult":Lgzi;
    :catch_0
    move-exception v14

    .line 67
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MotuCrashAdapter"

    const-string/jumbo v4, "send business err happen "

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1230
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "businessType":Ljava/lang/String;
    .restart local v8    # "page":Ljava/lang/String;
    .restart local v10    # "arg1":Ljava/lang/String;
    .restart local v11    # "arg2":Ljava/lang/String;
    .restart local v12    # "arg3":Ljava/lang/String;
    .restart local v15    # "errorBuilder":Lgze;
    .restart local v16    # "eventId":Ljava/lang/Integer;
    .restart local v17    # "mResult":Lgzi;
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 1165
    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method
