.class Lcom/amap/api/mapcore/util/k$i;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/amap/api/mapcore/util/k$h;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$i;->q:Ljava/util/ArrayList;

    .line 1721
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/k$i;->r:Z

    .line 1145
    iput v2, p0, Lcom/amap/api/mapcore/util/k$i;->l:I

    .line 1146
    iput v2, p0, Lcom/amap/api/mapcore/util/k$i;->m:I

    .line 1147
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/k$i;->o:Z

    .line 1148
    iput v1, p0, Lcom/amap/api/mapcore/util/k$i;->n:I

    .line 1149
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k$i;->t:Ljava/lang/ref/WeakReference;

    .line 1150
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/k$i;Z)Z
    .locals 0

    .prologue
    .line 1142
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/k$i;->b:Z

    return p1
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    if-eqz v0, :cond_0

    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    .line 1175
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k$h;->e()V

    .line 1177
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k$h;->f()V

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    .line 1187
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/k$j;->c(Lcom/amap/api/mapcore/util/k$i;)V

    .line 1189
    :cond_0
    return-void
.end method

.method private l()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1192
    new-instance v1, Lcom/amap/api/mapcore/util/k$h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/k$i;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/k$h;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    .line 1193
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    .line 1194
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    .line 1196
    const/4 v3, 0x0

    .line 1197
    const/4 v12, 0x0

    .line 1198
    const/4 v1, 0x0

    .line 1199
    const/4 v11, 0x0

    .line 1200
    const/4 v10, 0x0

    .line 1201
    const/4 v9, 0x0

    .line 1202
    const/4 v8, 0x0

    .line 1203
    const/4 v2, 0x0

    .line 1204
    const/4 v7, 0x0

    .line 1205
    const/4 v6, 0x0

    .line 1206
    const/4 v5, 0x0

    .line 1207
    const/4 v4, 0x0

    move-object v14, v3

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v1

    move/from16 v17, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v17

    .line 1210
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1212
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->a:Z

    if-eqz v1, :cond_0

    .line 1213
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1512
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v2

    monitor-enter v2

    .line 1513
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->j()V

    .line 1514
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->k()V

    .line 1515
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1216
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->q:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move v2, v6

    move v6, v4

    move-object v4, v1

    move v1, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v5

    move v5, v3

    .line 1407
    :goto_2
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1409
    if-eqz v4, :cond_11

    .line 1410
    :try_start_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1411
    const/4 v4, 0x0

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v1

    move/from16 v17, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v17

    .line 1412
    goto :goto_0

    .line 1222
    :cond_1
    const/4 v1, 0x0

    .line 1223
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/amap/api/mapcore/util/k$i;->d:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/k$i;->c:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_1c

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->c:Z

    .line 1225
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/amap/api/mapcore/util/k$i;->c:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/amap/api/mapcore/util/k$i;->d:Z

    .line 1226
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    move v13, v1

    .line 1234
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->k:Z

    if-eqz v1, :cond_2

    .line 1240
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->j()V

    .line 1241
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->k()V

    .line 1242
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->k:Z

    .line 1243
    const/4 v5, 0x1

    .line 1247
    :cond_2
    if-eqz v9, :cond_3

    .line 1248
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->j()V

    .line 1249
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->k()V

    .line 1250
    const/4 v9, 0x0

    .line 1254
    :cond_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    if-eqz v1, :cond_4

    .line 1260
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->j()V

    .line 1264
    :cond_4
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    if-eqz v1, :cond_6

    .line 1265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->t:Ljava/lang/ref/WeakReference;

    .line 1266
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/k;

    .line 1267
    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 1269
    :goto_4
    if-eqz v1, :cond_5

    .line 1270
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    .line 1271
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/k$j;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1272
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->k()V

    .line 1282
    :cond_6
    if-eqz v13, :cond_7

    .line 1283
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    .line 1284
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/k$j;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/k$h;->f()V

    .line 1295
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->e:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->g:Z

    if-nez v1, :cond_9

    .line 1301
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    if-eqz v1, :cond_8

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->j()V

    .line 1304
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->g:Z

    .line 1305
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->f:Z

    .line 1306
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1310
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->e:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->g:Z

    if-eqz v1, :cond_a

    .line 1316
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->g:Z

    .line 1317
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1320
    :cond_a
    if-eqz v6, :cond_b

    .line 1326
    const/4 v7, 0x0

    .line 1327
    const/4 v6, 0x0

    .line 1328
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->p:Z

    .line 1329
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1333
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->m()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1337
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    if-nez v1, :cond_c

    .line 1338
    if-eqz v5, :cond_e

    .line 1339
    const/4 v5, 0x0

    .line 1356
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    if-nez v1, :cond_1b

    .line 1357
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    .line 1358
    const/4 v11, 0x1

    .line 1359
    const/4 v10, 0x1

    .line 1360
    const/4 v8, 0x1

    move v1, v8

    move v8, v10

    .line 1363
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    if-eqz v10, :cond_f

    .line 1364
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/amap/api/mapcore/util/k$i;->r:Z

    if-eqz v10, :cond_1a

    .line 1365
    const/4 v7, 0x1

    .line 1366
    move-object/from16 v0, p0

    iget v3, v0, Lcom/amap/api/mapcore/util/k$i;->l:I

    .line 1367
    move-object/from16 v0, p0

    iget v1, v0, Lcom/amap/api/mapcore/util/k$i;->m:I

    .line 1368
    const/4 v4, 0x1

    .line 1376
    const/4 v10, 0x1

    .line 1378
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/amap/api/mapcore/util/k$i;->r:Z

    .line 1380
    :goto_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/amap/api/mapcore/util/k$i;->o:Z

    .line 1381
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    move v11, v8

    move v8, v4

    move-object v4, v2

    move v2, v6

    move v6, v3

    move/from16 v17, v1

    move v1, v10

    move v10, v9

    move v9, v7

    move v7, v5

    move/from16 v5, v17

    .line 1382
    goto/16 :goto_2

    .line 1268
    :cond_d
    invoke-static {v1}, Lcom/amap/api/mapcore/util/k;->g(Lcom/amap/api/mapcore/util/k;)Z

    move-result v1

    goto/16 :goto_4

    .line 1340
    :cond_e
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    .line 1341
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/k$j;->b(Lcom/amap/api/mapcore/util/k$i;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-eqz v1, :cond_c

    .line 1343
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/k$h;->a()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1349
    const/4 v1, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    .line 1350
    const/4 v12, 0x1

    .line 1352
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5

    .line 1407
    :catchall_1
    move-exception v1

    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1512
    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v2

    monitor-enter v2

    .line 1513
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->j()V

    .line 1514
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/k$i;->k()V

    .line 1515
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v1

    .line 1344
    :catch_0
    move-exception v1

    .line 1345
    :try_start_a
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v2

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/k$j;->c(Lcom/amap/api/mapcore/util/k$i;)V

    .line 1347
    throw v1

    :cond_f
    move v10, v8

    move v8, v1

    .line 1405
    :cond_10
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1415
    :cond_11
    if-eqz v1, :cond_19

    .line 1419
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/k$h;->b()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1420
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1421
    const/4 v1, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->j:Z

    .line 1422
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1423
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1432
    const/4 v1, 0x0

    move v3, v1

    .line 1435
    :goto_8
    if-eqz v11, :cond_18

    .line 1436
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/k$h;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 1438
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/amap/api/mapcore/util/k$j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1439
    const/4 v11, 0x0

    move-object v13, v1

    .line 1442
    :goto_9
    if-eqz v12, :cond_13

    .line 1446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/k;

    .line 1447
    if-eqz v1, :cond_12

    .line 1448
    invoke-static {v1}, Lcom/amap/api/mapcore/util/k;->h(Lcom/amap/api/mapcore/util/k;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    iget-object v12, v12, Lcom/amap/api/mapcore/util/k$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v13, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1451
    :cond_12
    const/4 v12, 0x0

    .line 1454
    :cond_13
    if-eqz v9, :cond_15

    .line 1459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/k;

    .line 1460
    if-eqz v1, :cond_14

    .line 1461
    invoke-static {v1}, Lcom/amap/api/mapcore/util/k;->h(Lcom/amap/api/mapcore/util/k;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    invoke-interface {v1, v13, v6, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1463
    :cond_14
    const/4 v9, 0x0

    .line 1470
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/k;

    .line 1471
    if-eqz v1, :cond_16

    .line 1472
    invoke-static {v1}, Lcom/amap/api/mapcore/util/k;->h(Lcom/amap/api/mapcore/util/k;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    invoke-interface {v1, v13}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1475
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/k$i;->s:Lcom/amap/api/mapcore/util/k$h;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/k$h;->d()I

    move-result v1

    .line 1476
    sparse-switch v1, :sswitch_data_0

    .line 1493
    const-string/jumbo v14, "GLThread"

    const-string/jumbo v15, "eglSwapBuffers"

    invoke-static {v14, v15, v1}, Lcom/amap/api/mapcore/util/k$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1496
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v14

    monitor-enter v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1497
    const/4 v1, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/k$i;->f:Z

    .line 1498
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1499
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1503
    :goto_a
    :sswitch_0
    if-eqz v8, :cond_1d

    .line 1504
    const/4 v1, 0x1

    :goto_b
    move-object v2, v4

    move-object v14, v13

    move v4, v6

    move v6, v1

    move/from16 v17, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v3

    move v3, v5

    move/from16 v5, v17

    .line 1506
    goto/16 :goto_0

    .line 1423
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v1

    .line 1425
    :cond_17
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v3

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1426
    const/4 v13, 0x1

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/amap/api/mapcore/util/k$i;->j:Z

    .line 1427
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/amap/api/mapcore/util/k$i;->f:Z

    .line 1428
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1429
    monitor-exit v3

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v1

    move/from16 v17, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v17

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1483
    :sswitch_1
    const/4 v10, 0x1

    .line 1484
    goto :goto_a

    .line 1499
    :catchall_5
    move-exception v1

    :try_start_13
    monitor-exit v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1515
    :catchall_6
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v1

    :cond_18
    move-object v13, v14

    goto/16 :goto_9

    :cond_19
    move v3, v1

    goto/16 :goto_8

    :cond_1a
    move v10, v11

    move/from16 v17, v4

    move v4, v7

    move v7, v1

    move v1, v3

    move/from16 v3, v17

    goto/16 :goto_7

    :cond_1b
    move v1, v8

    move v8, v10

    goto/16 :goto_6

    :cond_1c
    move v13, v1

    goto/16 :goto_3

    :cond_1d
    move v1, v2

    goto :goto_b

    .line 1476
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private m()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1524
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/k$i;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/k$i;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/k$i;->f:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/amap/api/mapcore/util/k$i;->l:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/amap/api/mapcore/util/k$i;->m:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/k$i;->o:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/k$i;->n:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1533
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1534
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1536
    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1537
    :try_start_0
    iput p1, p0, Lcom/amap/api/mapcore/util/k$i;->n:I

    .line 1538
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1539
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1641
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1642
    :try_start_0
    iput p1, p0, Lcom/amap/api/mapcore/util/k$i;->l:I

    .line 1643
    iput p2, p0, Lcom/amap/api/mapcore/util/k$i;->m:I

    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->r:Z

    .line 1645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->o:Z

    .line 1646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->p:Z

    .line 1647
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1650
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/k$i;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1659
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1693
    if-nez p1, :cond_0

    .line 1694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1697
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1699
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1520
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$i;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1543
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1544
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/k$i;->n:I

    monitor-exit v1

    return v0

    .line 1545
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1549
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1550
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->o:Z

    .line 1551
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1552
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1563
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1567
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->e:Z

    .line 1568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->j:Z

    .line 1569
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1570
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1573
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1575
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1582
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1586
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->e:Z

    .line 1587
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1588
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1590
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1592
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1599
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1603
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->c:Z

    .line 1604
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1605
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1610
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1612
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1619
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1623
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->c:Z

    .line 1624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->o:Z

    .line 1625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->p:Z

    .line 1626
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1627
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1632
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1634
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1668
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    monitor-enter v1

    .line 1669
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->a:Z

    .line 1670
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1673
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1675
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$i;->k:Z

    .line 1683
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1684
    return-void
.end method

.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/k$i;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/k$i;->setName(Ljava/lang/String;)V

    .line 1160
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$i;->l()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/k$j;->a(Lcom/amap/api/mapcore/util/k$i;)V

    .line 1165
    :goto_0
    return-void

    .line 1164
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/k$j;->a(Lcom/amap/api/mapcore/util/k$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/mapcore/util/k;->d()Lcom/amap/api/mapcore/util/k$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore/util/k$j;->a(Lcom/amap/api/mapcore/util/k$i;)V

    throw v0
.end method
