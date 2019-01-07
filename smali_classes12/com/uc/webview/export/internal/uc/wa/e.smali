.class final Lcom/uc/webview/export/internal/uc/wa/e;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/uc/wa/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1165
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;)V

    .line 1166
    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UC_WA_STAT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1168
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1169
    sget-boolean v1, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v1, :cond_0

    .line 1170
    const-string/jumbo v1, "SDKWaStat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "==handlUpload==last upload time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1175
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_3

    .line 1176
    sub-long v2, v8, v6

    const-wide/32 v10, 0x2932e00

    cmp-long v1, v2, v10

    if-gez v1, :cond_3

    .line 1177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1178
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1179
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1180
    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1181
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1182
    if-ltz v2, :cond_1

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/16 v3, 0xc

    if-ge v1, v3, :cond_2

    :cond_1
    const/16 v3, 0xc

    if-lt v2, v3, :cond_5

    if-ltz v1, :cond_5

    const/16 v2, 0xc

    if-ge v1, v2, :cond_5

    .line 1184
    :cond_2
    sget-boolean v1, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v1, :cond_3

    .line 1185
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v2, "\u8de80\u70b9\u621612\u70b9"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    :cond_3
    const/4 v3, 0x0

    .line 1197
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v5, v1

    .line 1198
    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-eqz v1, :cond_10

    .line 1199
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v10

    .line 1200
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    .line 1202
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1203
    :cond_4
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;[Ljava/lang/String;)[B

    move-result-object v2

    .line 1204
    if-nez v2, :cond_7

    .line 1205
    monitor-exit v4

    .line 1272
    :goto_0
    return-void

    .line 1188
    :cond_5
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_6

    .line 1189
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "\u65f6\u95f4\u95f4\u9694\u5c0f\u4e8e12\u5c0f\u65f6,\u4e0d\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_6
    monitor-exit v4

    goto :goto_0

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1270
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v2, "handlUpload"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1208
    :cond_7
    :try_start_3
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->x:Landroid/webkit/ValueCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    .line 1210
    :try_start_4
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->x:Landroid/webkit/ValueCallback;

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v1, v2, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1215
    :cond_8
    :goto_1
    const/4 v1, 0x0

    .line 1218
    :try_start_5
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/wa/f;->a([B)[B

    move-result-object v2

    .line 1219
    const/4 v1, 0x1

    .line 1220
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_9

    .line 1221
    const-string/jumbo v0, "SDKWaStat"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "getUploadData encrypt:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1228
    :cond_9
    :goto_2
    :try_start_6
    invoke-static {v10, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1229
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_a

    .line 1230
    const-string/jumbo v0, "SDKWaStat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "request url:"

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_a
    const/4 v0, 0x3

    .line 1236
    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_f

    .line 1237
    invoke-static {v10, v2}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1238
    const/4 v3, 0x1

    move v0, v3

    .line 1239
    :goto_4
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_b

    .line 1245
    :try_start_7
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v1, v5}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1246
    if-eqz v1, :cond_b

    .line 1247
    const-string/jumbo v2, "SDKWaStat"

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1249
    const/4 v0, 0x1

    .line 1257
    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    .line 1259
    :try_start_8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/wa/a;->d(Lcom/uc/webview/export/internal/uc/wa/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1261
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-static {v0, v8, v9, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    .line 1264
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_d

    .line 1265
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "\u9996\u6b21\u4e0d\u4e0a\u4f20\u6570\u636e"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-static {v0, v8, v9, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    .line 1268
    :cond_d
    monitor-exit v4

    goto/16 :goto_0

    .line 1211
    :catch_1
    move-exception v0

    .line 1212
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v11, "byte \u8f6c String\u5f02\u5e38!"

    invoke-static {v1, v11, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1223
    :catch_2
    move-exception v0

    .line 1224
    const-string/jumbo v11, "SDKWaStat"

    const-string/jumbo v12, "data encrypt error:"

    invoke-static {v11, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1251
    :catch_3
    move-exception v1

    .line 1252
    const-string/jumbo v2, "SDKWaStat"

    const-string/jumbo v3, "\u7b2c\u4e09\u65b9\u4e0a\u4f20\u6570\u636e\u51fa\u9519!"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_3

    :cond_f
    move v0, v3

    goto :goto_4

    :cond_10
    move v0, v3

    goto :goto_5
.end method
