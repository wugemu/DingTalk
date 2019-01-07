.class public final Lknu;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lknu$a;
    }
.end annotation


# static fields
.field public static final synthetic j:Z


# instance fields
.field public final a:Lkme;

.field public b:Lknt$a;

.field public c:Lkng;

.field public final d:Lkmm;

.field public final e:Lkmi;

.field public final f:Lkms;

.field public final g:Lknt;

.field public h:Lknr;

.field public i:Lknx;

.field private final k:Ljava/lang/Object;

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lknu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lknu;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lkmm;Lkme;Lkmi;Lkms;Ljava/lang/Object;)V
    .locals 2
    .param p1, "connectionPool"    # Lkmm;
    .param p2, "address"    # Lkme;
    .param p3, "call"    # Lkmi;
    .param p4, "eventListener"    # Lkms;
    .param p5, "callStackTrace"    # Ljava/lang/Object;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lknu;->d:Lkmm;

    .line 98
    iput-object p2, p0, Lknu;->a:Lkme;

    .line 99
    iput-object p3, p0, Lknu;->e:Lkmi;

    .line 100
    iput-object p4, p0, Lknu;->f:Lkms;

    .line 101
    new-instance v0, Lknt;

    invoke-direct {p0}, Lknu;->e()Lkns;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lknt;-><init>(Lkme;Lkns;Lkmi;Lkms;)V

    iput-object v0, p0, Lknu;->g:Lknt;

    .line 102
    iput-object p5, p0, Lknu;->k:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private a(IIIIZ)Lknr;
    .locals 21
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v10, 0x0

    .line 163
    .local v10, "foundPooledConnection":Z
    const/4 v2, 0x0

    .line 164
    .local v2, "result":Lknr;
    const/16 v17, 0x0

    .line 167
    .local v17, "selectedRoute":Lkng;
    move-object/from16 v0, p0

    iget-object v4, v0, Lknu;->d:Lkmm;

    monitor-enter v4

    .line 168
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lknu;->n:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "released"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 169
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->i:Lknx;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "codec != null"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lknu;->h:Lknr;

    .line 2288
    .local v13, "releasedConnection":Lkml;
    sget-boolean v3, Lknu;->j:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->d:Lkmm;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2289
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->h:Lknr;

    .line 2290
    if-eqz v3, :cond_8

    iget-boolean v3, v3, Lknr;->g:Z

    if-eqz v3, :cond_8

    .line 2291
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lknu;->a(ZZZ)Ljava/net/Socket;

    move-result-object v20

    .line 176
    .local v20, "toClose":Ljava/net/Socket;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->h:Lknr;

    if-eqz v3, :cond_3

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lknu;->h:Lknr;

    .line 179
    const/4 v13, 0x0

    .line 181
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lknu;->m:Z

    if-nez v3, :cond_4

    .line 183
    const/4 v13, 0x0

    .line 186
    :cond_4
    if-nez v2, :cond_5

    .line 188
    sget-object v3, Lknh;->a:Lknh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lknu;->d:Lkmm;

    move-object/from16 v0, p0

    iget-object v6, v0, Lknu;->a:Lkme;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v6, v0, v7}, Lknh;->a(Lkmm;Lkme;Lknu;Lkng;)Lknr;

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->h:Lknr;

    if-eqz v3, :cond_9

    .line 190
    const/4 v10, 0x1

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lknu;->h:Lknr;

    .line 196
    :cond_5
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    invoke-static/range {v20 .. v20}, Lknj;->a(Ljava/net/Socket;)V

    .line 199
    if-eqz v13, :cond_6

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->f:Lkms;

    move-object/from16 v0, p0

    iget-object v4, v0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4, v13}, Lkms;->connectionReleased(Lkmi;Lkml;)V

    .line 202
    :cond_6
    if-eqz v10, :cond_7

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->f:Lkms;

    move-object/from16 v0, p0

    iget-object v4, v0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4, v2}, Lkms;->connectionAcquired(Lkmi;Lkml;)V

    .line 205
    :cond_7
    if-eqz v2, :cond_a

    move-object v14, v2

    .line 278
    .end local v2    # "result":Lknr;
    .local v14, "result":Lknr;
    :goto_2
    return-object v14

    .line 2293
    .end local v14    # "result":Lknr;
    .end local v20    # "toClose":Ljava/net/Socket;
    .restart local v2    # "result":Lknr;
    :cond_8
    const/16 v20, 0x0

    goto :goto_0

    .line 193
    .restart local v20    # "toClose":Ljava/net/Socket;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lknu;->c:Lkng;

    move-object/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 211
    :cond_a
    const/4 v12, 0x0

    .line 212
    .local v12, "newRouteSelection":Z
    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->b:Lknt$a;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->b:Lknt$a;

    invoke-virtual {v3}, Lknt$a;->a()Z

    move-result v3

    if-nez v3, :cond_c

    .line 213
    :cond_b
    const/4 v12, 0x1

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->g:Lknt;

    invoke-virtual {v3}, Lknt;->b()Lknt$a;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lknu;->b:Lknt$a;

    .line 217
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lknu;->d:Lkmm;

    monitor-enter v4

    .line 220
    if-eqz v12, :cond_13

    .line 223
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->b:Lknt$a;

    .line 3238
    new-instance v16, Ljava/util/ArrayList;

    iget-object v3, v3, Lknt$a;->a:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v16, "routes":Ljava/util/List;, "Ljava/util/List<Lkng;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "size":I
    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_13

    .line 225
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkng;

    .line 226
    .local v15, "route":Lkng;
    sget-object v3, Lknh;->a:Lknh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lknu;->d:Lkmm;

    move-object/from16 v0, p0

    iget-object v6, v0, Lknu;->a:Lkme;

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v6, v0, v15}, Lknh;->a(Lkmm;Lkme;Lknu;Lkng;)Lknr;

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->h:Lknr;

    if-eqz v3, :cond_d

    .line 228
    const/4 v10, 0x1

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lknu;->h:Lknr;

    .line 230
    move-object/from16 v0, p0

    iput-object v15, v0, Lknu;->c:Lkng;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v14, v2

    .line 236
    .end local v2    # "result":Lknr;
    .end local v11    # "i":I
    .end local v15    # "route":Lkng;
    .end local v16    # "routes":Ljava/util/List;, "Ljava/util/List<Lkng;>;"
    .end local v18    # "size":I
    .restart local v14    # "result":Lknr;
    :goto_4
    if-nez v10, :cond_12

    .line 237
    if-nez v17, :cond_f

    .line 238
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->b:Lknt$a;

    .line 4231
    invoke-virtual {v3}, Lknt$a;->a()Z

    move-result v5

    if-nez v5, :cond_e

    .line 4232
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 248
    :catchall_1
    move-exception v3

    move-object v2, v14

    .end local v14    # "result":Lknr;
    .restart local v2    # "result":Lknr;
    :goto_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 224
    .restart local v11    # "i":I
    .restart local v15    # "route":Lkng;
    .restart local v16    # "routes":Ljava/util/List;, "Ljava/util/List<Lkng;>;"
    .restart local v18    # "size":I
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 4234
    .end local v2    # "result":Lknr;
    .end local v11    # "i":I
    .end local v15    # "route":Lkng;
    .end local v16    # "routes":Ljava/util/List;, "Ljava/util/List<Lkng;>;"
    .end local v18    # "size":I
    .restart local v14    # "result":Lknr;
    :cond_e
    :try_start_6
    iget-object v5, v3, Lknt$a;->a:Ljava/util/List;

    iget v6, v3, Lknt$a;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lknt$a;->b:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lkng;

    move-object/from16 v17, v0

    .line 243
    :cond_f
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lknu;->c:Lkng;

    .line 244
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lknu;->l:I

    .line 245
    new-instance v2, Lknr;

    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->d:Lkmm;

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Lknr;-><init>(Lkmm;Lkng;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 246
    .end local v14    # "result":Lknr;
    .restart local v2    # "result":Lknr;
    const/4 v3, 0x0

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lknu;->a(Lknr;Z)V

    .line 248
    :goto_6
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 251
    if-eqz v10, :cond_10

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->f:Lkms;

    move-object/from16 v0, p0

    iget-object v4, v0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4, v2}, Lkms;->connectionAcquired(Lkmi;Lkml;)V

    move-object v14, v2

    .line 253
    .end local v2    # "result":Lknr;
    .restart local v14    # "result":Lknr;
    goto/16 :goto_2

    .line 257
    .end local v14    # "result":Lknr;
    .restart local v2    # "result":Lknr;
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lknu;->e:Lkmi;

    move-object/from16 v0, p0

    iget-object v9, v0, Lknu;->f:Lkms;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lknr;->a(IIIIZLkmi;Lkms;)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lknu;->e()Lkns;

    move-result-object v3

    .line 4510
    iget-object v4, v2, Lknr;->a:Lkng;

    .line 259
    invoke-virtual {v3, v4}, Lkns;->b(Lkng;)V

    .line 261
    const/16 v19, 0x0

    .line 262
    .local v19, "socket":Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v4, v0, Lknu;->d:Lkmm;

    monitor-enter v4

    .line 263
    const/4 v3, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lknu;->m:Z

    .line 266
    sget-object v3, Lknh;->a:Lknh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lknu;->d:Lkmm;

    invoke-virtual {v3, v5, v2}, Lknh;->b(Lkmm;Lknr;)V

    .line 270
    invoke-virtual {v2}, Lknr;->a()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 271
    sget-object v3, Lknh;->a:Lknh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lknu;->d:Lkmm;

    move-object/from16 v0, p0

    iget-object v6, v0, Lknu;->a:Lkme;

    move-object/from16 v0, p0

    invoke-virtual {v3, v5, v6, v0}, Lknh;->a(Lkmm;Lkme;Lknu;)Ljava/net/Socket;

    move-result-object v19

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lknu;->h:Lknr;

    .line 274
    :cond_11
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 275
    invoke-static/range {v19 .. v19}, Lknj;->a(Ljava/net/Socket;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lknu;->f:Lkms;

    move-object/from16 v0, p0

    iget-object v4, v0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4, v2}, Lkms;->connectionAcquired(Lkmi;Lkml;)V

    move-object v14, v2

    .line 278
    .end local v2    # "result":Lknr;
    .restart local v14    # "result":Lknr;
    goto/16 :goto_2

    .line 274
    .end local v14    # "result":Lknr;
    .restart local v2    # "result":Lknr;
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 248
    .end local v19    # "socket":Ljava/net/Socket;
    :catchall_3
    move-exception v3

    goto/16 :goto_5

    .end local v2    # "result":Lknr;
    .restart local v14    # "result":Lknr;
    :cond_12
    move-object v2, v14

    .end local v14    # "result":Lknr;
    .restart local v2    # "result":Lknr;
    goto :goto_6

    :cond_13
    move-object v14, v2

    .end local v2    # "result":Lknr;
    .restart local v14    # "result":Lknr;
    goto/16 :goto_4
.end method

.method private a(IIIIZZ)Lknr;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 135
    :goto_0
    invoke-direct/range {p0 .. p5}, Lknu;->a(IIIIZ)Lknr;

    move-result-object v0

    .line 139
    .local v0, "candidate":Lknr;
    iget-object v2, p0, Lknu;->d:Lkmm;

    monitor-enter v2

    .line 140
    :try_start_0
    iget v1, v0, Lknr;->h:I

    if-nez v1, :cond_1

    .line 141
    monitor-exit v2

    .line 152
    :cond_0
    return-object v0

    .line 143
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v0, p6}, Lknr;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lknu;->d()V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(Lknr;)V
    .locals 4
    .param p1, "connection"    # Lknr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 482
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p1, Lknr;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 483
    iget-object v3, p1, Lknr;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 484
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lknu;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 485
    iget-object v3, p1, Lknr;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 486
    return-void

    .line 482
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lknu;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private e()Lkns;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 333
    sget-object v0, Lknh;->a:Lknh;

    iget-object v1, p0, Lknu;->d:Lkmm;

    invoke-virtual {v0, v1}, Lknh;->a(Lkmm;)Lkns;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ZZZ)Ljava/net/Socket;
    .locals 5
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 382
    sget-boolean v1, Lknu;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lknu;->d:Lkmm;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 384
    :cond_0
    if-eqz p3, :cond_1

    .line 385
    iput-object v4, p0, Lknu;->i:Lknx;

    .line 387
    :cond_1
    if-eqz p2, :cond_2

    .line 388
    iput-boolean v2, p0, Lknu;->n:Z

    .line 390
    :cond_2
    const/4 v0, 0x0

    .line 391
    .local v0, "socket":Ljava/net/Socket;
    iget-object v1, p0, Lknu;->h:Lknr;

    if-eqz v1, :cond_6

    .line 392
    if-eqz p1, :cond_3

    .line 393
    iget-object v1, p0, Lknu;->h:Lknr;

    iput-boolean v2, v1, Lknr;->g:Z

    .line 395
    :cond_3
    iget-object v1, p0, Lknu;->i:Lknx;

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lknu;->n:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lknu;->h:Lknr;

    iget-boolean v1, v1, Lknr;->g:Z

    if-eqz v1, :cond_6

    .line 396
    :cond_4
    iget-object v1, p0, Lknu;->h:Lknr;

    invoke-direct {p0, v1}, Lknu;->a(Lknr;)V

    .line 397
    iget-object v1, p0, Lknu;->h:Lknr;

    iget-object v1, v1, Lknr;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    iget-object v1, p0, Lknu;->h:Lknr;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lknr;->k:J

    .line 399
    sget-object v1, Lknh;->a:Lknh;

    iget-object v2, p0, Lknu;->d:Lkmm;

    iget-object v3, p0, Lknu;->h:Lknr;

    invoke-virtual {v1, v2, v3}, Lknh;->a(Lkmm;Lknr;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 400
    iget-object v1, p0, Lknu;->h:Lknr;

    .line 4519
    iget-object v0, v1, Lknr;->b:Ljava/net/Socket;

    .line 403
    :cond_5
    iput-object v4, p0, Lknu;->h:Lknr;

    .line 406
    :cond_6
    return-object v0
.end method

.method public final a()Lknx;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 327
    iget-object v1, p0, Lknu;->d:Lkmm;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lknu;->i:Lknx;

    monitor-exit v1

    return-object v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lkna;Lkmx$a;Z)Lknx;
    .locals 12
    .param p1, "client"    # Lkna;
    .param p2, "chain"    # Lkmx$a;
    .param p3, "doExtensiveHealthChecks"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    invoke-interface {p2}, Lkmx$a;->b()I

    move-result v1

    .line 108
    .local v1, "connectTimeout":I
    invoke-interface {p2}, Lkmx$a;->c()I

    move-result v2

    .line 109
    .local v2, "readTimeout":I
    invoke-interface {p2}, Lkmx$a;->d()I

    move-result v3

    .line 1307
    .local v3, "writeTimeout":I
    iget v4, p1, Lkna;->C:I

    .line 1371
    .local v4, "pingIntervalMillis":I
    iget-boolean v5, p1, Lkna;->y:Z

    .local v5, "connectionRetryEnabled":Z
    move-object v0, p0

    move v6, p3

    .line 114
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lknu;->a(IIIIZZ)Lknr;

    move-result-object v9

    .line 1491
    .local v9, "resultConnection":Lknr;
    iget-object v0, v9, Lknr;->d:Lkom;

    if-eqz v0, :cond_0

    .line 1492
    new-instance v8, Lkol;

    iget-object v0, v9, Lknr;->d:Lkom;

    invoke-direct {v8, p1, p2, p0, v0}, Lkol;-><init>(Lkna;Lkmx$a;Lknu;Lkom;)V

    .line 118
    .local v8, "resultCodec":Lknx;
    :goto_0
    iget-object v6, p0, Lknu;->d:Lkmm;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iput-object v8, p0, Lknu;->i:Lknx;

    .line 120
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    .line 1494
    .end local v8    # "resultCodec":Lknx;
    :cond_0
    :try_start_2
    iget-object v0, v9, Lknr;->b:Ljava/net/Socket;

    invoke-interface {p2}, Lkmx$a;->c()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1495
    iget-object v0, v9, Lknr;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lkmx$a;->c()I

    move-result v6

    int-to-long v10, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 1496
    iget-object v0, v9, Lknr;->f:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lkmx$a;->d()I

    move-result v6

    int-to-long v10, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 1497
    new-instance v8, Lkoh;

    iget-object v0, v9, Lknr;->e:Lokio/BufferedSource;

    iget-object v6, v9, Lknr;->f:Lokio/BufferedSink;

    invoke-direct {v8, p1, p0, v0, v6}, Lkoh;-><init>(Lkna;Lknu;Lokio/BufferedSource;Lokio/BufferedSink;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 122
    .end local v9    # "resultConnection":Lknr;
    :catch_0
    move-exception v7

    .line 123
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, v7}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 121
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "resultCodec":Lknx;
    .restart local v9    # "resultConnection":Lknr;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 10
    .param p1, "e"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 427
    const/4 v1, 0x0

    .line 429
    .local v1, "noNewStreams":Z
    iget-object v5, p0, Lknu;->d:Lkmm;

    monitor-enter v5

    .line 430
    :try_start_0
    instance-of v4, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v4, :cond_5

    .line 431
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    .end local p1    # "e":Ljava/io/IOException;
    iget-object v0, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 432
    .local v0, "errorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v0, v4, :cond_4

    .line 434
    iget v4, p0, Lknu;->l:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lknu;->l:I

    .line 435
    iget v4, p0, Lknu;->l:I

    if-le v4, v6, :cond_0

    .line 436
    const/4 v1, 0x1

    .line 437
    const/4 v4, 0x0

    iput-object v4, p0, Lknu;->c:Lkng;

    .line 456
    .end local v0    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :cond_0
    :goto_0
    iget-object v2, p0, Lknu;->h:Lknr;

    .line 457
    .local v2, "releasedConnection":Lkml;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v4, v6}, Lknu;->a(ZZZ)Ljava/net/Socket;

    move-result-object v3

    .line 458
    .local v3, "socket":Ljava/net/Socket;
    iget-object v4, p0, Lknu;->h:Lknr;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lknu;->m:Z

    if-nez v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 459
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-static {v3}, Lknj;->a(Ljava/net/Socket;)V

    .line 462
    if-eqz v2, :cond_3

    .line 463
    iget-object v4, p0, Lknu;->f:Lkms;

    iget-object v5, p0, Lknu;->e:Lkmi;

    invoke-virtual {v4, v5, v2}, Lkms;->connectionReleased(Lkmi;Lkml;)V

    .line 465
    :cond_3
    return-void

    .line 439
    .end local v2    # "releasedConnection":Lkml;
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v0    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :cond_4
    :try_start_1
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    if-eq v0, v4, :cond_0

    .line 441
    const/4 v1, 0x1

    .line 442
    const/4 v4, 0x0

    iput-object v4, p0, Lknu;->c:Lkng;

    goto :goto_0

    .line 459
    .end local v0    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 444
    .restart local p1    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_2
    iget-object v4, p0, Lknu;->h:Lknr;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lknu;->h:Lknr;

    .line 445
    invoke-virtual {v4}, Lknr;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    instance-of v4, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v4, :cond_0

    .line 446
    :cond_6
    const/4 v1, 0x1

    .line 449
    iget-object v4, p0, Lknu;->h:Lknr;

    iget v4, v4, Lknr;->h:I

    if-nez v4, :cond_0

    .line 450
    iget-object v4, p0, Lknu;->c:Lkng;

    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    .line 451
    iget-object v4, p0, Lknu;->g:Lknt;

    iget-object v6, p0, Lknu;->c:Lkng;

    .line 6068
    iget-object v7, v6, Lkng;->b:Ljava/net/Proxy;

    .line 5113
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v7, v8, :cond_7

    iget-object v7, v4, Lknt;->a:Lkme;

    .line 6128
    iget-object v7, v7, Lkme;->g:Ljava/net/ProxySelector;

    .line 5113
    if-eqz v7, :cond_7

    .line 5115
    iget-object v7, v4, Lknt;->a:Lkme;

    .line 7128
    iget-object v7, v7, Lkme;->g:Ljava/net/ProxySelector;

    .line 5115
    iget-object v8, v4, Lknt;->a:Lkme;

    .line 8093
    iget-object v8, v8, Lkme;->a:Lkmw;

    .line 5116
    invoke-virtual {v8}, Lkmw;->a()Ljava/net/URI;

    move-result-object v8

    .line 9068
    iget-object v9, v6, Lkng;->b:Ljava/net/Proxy;

    .line 5116
    invoke-virtual {v9}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    .line 5115
    invoke-virtual {v7, v8, v9, p1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 5119
    :cond_7
    iget-object v4, v4, Lknt;->b:Lkns;

    invoke-virtual {v4, v6}, Lkns;->a(Lkng;)V

    .line 453
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lknu;->c:Lkng;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lknr;Z)V
    .locals 3
    .param p1, "connection"    # Lknr;
    .param p2, "reportedAcquired"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 472
    sget-boolean v0, Lknu;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lknu;->d:Lkmm;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 473
    :cond_0
    iget-object v0, p0, Lknu;->h:Lknr;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 475
    :cond_1
    iput-object p1, p0, Lknu;->h:Lknr;

    .line 476
    iput-boolean p2, p0, Lknu;->m:Z

    .line 477
    iget-object v0, p1, Lknr;->j:Ljava/util/List;

    new-instance v1, Lknu$a;

    iget-object v2, p0, Lknu;->k:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lknu$a;-><init>(Lknu;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public final a(ZLknx;JLjava/io/IOException;)V
    .locals 7
    .param p1, "noNewStreams"    # Z
    .param p2, "codec"    # Lknx;
    .param p3, "bytesRead"    # J
    .param p5, "e"    # Ljava/io/IOException;

    .prologue
    .line 297
    iget-object v3, p0, Lknu;->f:Lkms;

    iget-object v4, p0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4, p3, p4}, Lkms;->responseBodyEnd(Lkmi;J)V

    .line 302
    iget-object v4, p0, Lknu;->d:Lkmm;

    monitor-enter v4

    .line 303
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lknu;->i:Lknx;

    if-eq p2, v3, :cond_1

    .line 304
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "expected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lknu;->i:Lknx;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 306
    :cond_1
    if-nez p1, :cond_2

    .line 307
    :try_start_1
    iget-object v3, p0, Lknu;->h:Lknr;

    iget v5, v3, Lknr;->h:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lknr;->h:I

    .line 309
    :cond_2
    iget-object v1, p0, Lknu;->h:Lknr;

    .line 310
    .local v1, "releasedConnection":Lkml;
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v3, v5}, Lknu;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 311
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lknu;->h:Lknr;

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 312
    :cond_3
    iget-boolean v0, p0, Lknu;->n:Z

    .line 313
    .local v0, "callEnd":Z
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-static {v2}, Lknj;->a(Ljava/net/Socket;)V

    .line 315
    if-eqz v1, :cond_4

    .line 316
    iget-object v3, p0, Lknu;->f:Lkms;

    iget-object v4, p0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4, v1}, Lkms;->connectionReleased(Lkmi;Lkml;)V

    .line 319
    :cond_4
    if-eqz p5, :cond_6

    .line 320
    iget-object v3, p0, Lknu;->f:Lkms;

    iget-object v4, p0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4, p5}, Lkms;->callFailed(Lkmi;Ljava/io/IOException;)V

    .line 324
    :cond_5
    :goto_0
    return-void

    .line 321
    :cond_6
    if-eqz v0, :cond_5

    .line 322
    iget-object v3, p0, Lknu;->f:Lkms;

    iget-object v4, p0, Lknu;->e:Lkmi;

    invoke-virtual {v3, v4}, Lkms;->callEnd(Lkmi;)V

    goto :goto_0
.end method

.method public final declared-synchronized b()Lknr;
    .locals 1

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lknu;->h:Lknr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 347
    iget-object v3, p0, Lknu;->d:Lkmm;

    monitor-enter v3

    .line 348
    :try_start_0
    iget-object v0, p0, Lknu;->h:Lknr;

    .line 349
    .local v0, "releasedConnection":Lkml;
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lknu;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 350
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lknu;->h:Lknr;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 351
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-static {v1}, Lknj;->a(Ljava/net/Socket;)V

    .line 353
    if-eqz v0, :cond_1

    .line 354
    iget-object v2, p0, Lknu;->f:Lkms;

    iget-object v3, p0, Lknu;->e:Lkmi;

    invoke-virtual {v2, v3, v0}, Lkms;->connectionReleased(Lkmi;Lkml;)V

    .line 355
    iget-object v2, p0, Lknu;->f:Lkms;

    iget-object v3, p0, Lknu;->e:Lkmi;

    invoke-virtual {v2, v3}, Lkms;->callEnd(Lkmi;)V

    .line 357
    :cond_1
    return-void

    .line 351
    .end local v0    # "releasedConnection":Lkml;
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 363
    iget-object v3, p0, Lknu;->d:Lkmm;

    monitor-enter v3

    .line 364
    :try_start_0
    iget-object v0, p0, Lknu;->h:Lknr;

    .line 365
    .local v0, "releasedConnection":Lkml;
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lknu;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 366
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lknu;->h:Lknr;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 367
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-static {v1}, Lknj;->a(Ljava/net/Socket;)V

    .line 369
    if-eqz v0, :cond_1

    .line 370
    iget-object v2, p0, Lknu;->f:Lkms;

    iget-object v3, p0, Lknu;->e:Lkmi;

    invoke-virtual {v2, v3, v0}, Lkms;->connectionReleased(Lkmi;Lkml;)V

    .line 372
    :cond_1
    return-void

    .line 367
    .end local v0    # "releasedConnection":Lkml;
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 522
    invoke-virtual {p0}, Lknu;->b()Lknr;

    move-result-object v0

    .line 523
    .local v0, "connection":Lknr;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lknr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lknu;->a:Lkme;

    invoke-virtual {v1}, Lkme;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
