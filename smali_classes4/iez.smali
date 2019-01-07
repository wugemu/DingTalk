.class public final Liez;
.super Landroid/os/Handler;
.source "AVEventCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liez$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

.field protected b:Liey;

.field protected c:Lcom/taobao/conf/TBConfController;

.field public d:Liez$a;

.field public e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lied$e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lied$d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lied$c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lied$f;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lied$g;

.field public j:Life$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Landroid/os/Looper;)V
    .locals 1
    .param p1, "avCore"    # Lcom/alibaba/wukong/openav/internal/engine/AVCore;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Liez;->e:Ljava/util/Queue;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Liez;->f:Ljava/util/Queue;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Liez;->g:Ljava/util/Queue;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Liez;->h:Ljava/util/Queue;

    .line 41
    iput-object p1, p0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 1102
    iget-object v0, p1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 42
    iput-object v0, p0, Liez;->c:Lcom/taobao/conf/TBConfController;

    .line 2098
    iget-object v0, p1, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    .line 43
    iput-object v0, p0, Liez;->b:Liey;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/Object;)I
    .locals 2
    .param p1, "what"    # I
    .param p2, "errorCode"    # I
    .param p3, "value"    # I
    .param p4, "objReserve"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Liez;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Liez;->sendMessage(Landroid/os/Message;)Z

    .line 51
    const/4 v1, 0x0

    return v1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->d:Liez$a;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->d:Liez$a;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Liez$a;->a(Landroid/os/Message;)Z

    .line 171
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 492
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 173
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 174
    .local v12, "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v12, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v7

    .line 178
    .local v7, "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v7, :cond_1

    .line 181
    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 183
    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v18, "MI 2S"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v18, "MI 2SC"

    .line 184
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v18, "MI 2A"

    .line 185
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v18, "M351"

    .line 186
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 187
    :cond_2
    const-string/jumbo v17, "AVEventCenter"

    const-string/jumbo v18, "xiaomi mute"

    invoke-static/range {v17 .. v18}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->c:Lcom/taobao/conf/TBConfController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/taobao/conf/TBConfController;->a(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->c:Lcom/taobao/conf/TBConfController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/taobao/conf/TBConfController;->a(Z)V

    .line 192
    :cond_3
    const-string/jumbo v17, "--onMediaStart callback"

    .line 3033
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$e;

    .line 195
    .local v9, "listener":Lied$e;
    if-eqz v9, :cond_4

    .line 196
    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lied$e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    .end local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v9    # "listener":Lied$e;
    .end local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :sswitch_2
    const-string/jumbo v17, "--onHangup callback"

    .line 4033
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 207
    .restart local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v7

    .line 208
    .restart local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-nez v7, :cond_5

    .line 209
    const-string/jumbo v17, "--AVSession is null."

    .line 4067
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    sget-object v17, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 213
    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->k()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->g(Ljava/lang/String;)V

    .line 214
    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->l()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->h(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 218
    .local v4, "errCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$e;

    .line 220
    .restart local v9    # "listener":Lied$e;
    if-eqz v9, :cond_6

    .line 221
    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->k()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->l()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v9, v0, v4, v1, v2}, Lied$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v9    # "listener":Lied$e;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c()V

    goto/16 :goto_0

    .line 231
    .end local v4    # "errCode":I
    .end local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :sswitch_3
    const-string/jumbo v17, "--onReceiveRing callback."

    .line 5033
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    if-lez v17, :cond_8

    const/4 v11, 0x1

    .line 234
    .local v11, "needPlayLocalRingtone":Z
    :goto_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 235
    .restart local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v8

    .line 236
    .local v8, "iisAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-nez v8, :cond_9

    .line 237
    const-string/jumbo v17, "--AVSession is Null."

    .line 5067
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .end local v8    # "iisAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v11    # "needPlayLocalRingtone":Z
    .end local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 241
    .restart local v8    # "iisAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .restart local v11    # "needPlayLocalRingtone":Z
    .restart local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :cond_9
    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->i()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->f(Ljava/lang/String;)V

    .line 242
    invoke-interface {v8}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v13

    .line 243
    .local v13, "oldCallId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    invoke-interface {v8}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 244
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Z)V

    .line 247
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$e;

    .line 249
    .restart local v9    # "listener":Lied$e;
    if-eqz v9, :cond_b

    .line 250
    invoke-interface {v8}, Lcom/alibaba/wukong/openav/external/IAVSession;->i()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0, v11}, Lied$e;->a(Ljava/lang/String;Z)V

    goto :goto_4

    .line 257
    .end local v8    # "iisAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v9    # "listener":Lied$e;
    .end local v11    # "needPlayLocalRingtone":Z
    .end local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v13    # "oldCallId":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v17, "--onStartCallReady callback."

    .line 6033
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 259
    .restart local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v7

    .line 260
    .restart local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v7, :cond_c

    .line 261
    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->e(Ljava/lang/String;)V

    .line 263
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$e;

    .line 265
    .restart local v9    # "listener":Lied$e;
    if-eqz v9, :cond_d

    if-eqz v12, :cond_d

    .line 266
    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lied$e;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 273
    .end local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v9    # "listener":Lied$e;
    .end local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :sswitch_5
    const-string/jumbo v17, "--onAnswer callback."

    .line 7033
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 276
    .restart local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$e;

    .line 278
    .restart local v9    # "listener":Lied$e;
    if-eqz v9, :cond_e

    .line 279
    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v19

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->g()Z

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v9, v0, v1, v2}, Lied$e;->a(Ljava/lang/String;Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;Z)V

    goto :goto_6

    .line 286
    .end local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v9    # "listener":Lied$e;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 287
    .local v14, "openId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_7

    .line 300
    .end local v14    # "openId":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_f
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$d;

    .line 302
    .local v9, "listener":Lied$d;
    if-eqz v9, :cond_f

    .line 303
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v9, v0}, Lied$d;->a(I)V

    goto :goto_8

    .line 310
    .end local v9    # "listener":Lied$d;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_10
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$d;

    .line 312
    .restart local v9    # "listener":Lied$d;
    if-eqz v9, :cond_10

    .line 313
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    goto :goto_9

    .line 321
    .end local v9    # "listener":Lied$d;
    :sswitch_9
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 322
    .local v10, "localSignalLevel":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 323
    .local v16, "remoteSignalLevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_11
    :goto_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$d;

    .line 325
    .restart local v9    # "listener":Lied$d;
    if-eqz v9, :cond_11

    .line 326
    move/from16 v0, v16

    invoke-interface {v9, v10, v0}, Lied$d;->a(II)V

    goto :goto_a

    .line 332
    .end local v9    # "listener":Lied$d;
    .end local v10    # "localSignalLevel":I
    .end local v16    # "remoteSignalLevel":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 333
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_b

    .line 342
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_12
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$d;

    .line 344
    .restart local v9    # "listener":Lied$d;
    if-eqz v9, :cond_12

    .line 345
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    goto :goto_c

    .line 351
    .end local v9    # "listener":Lied$d;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_13
    :goto_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$d;

    .line 353
    .restart local v9    # "listener":Lied$d;
    if-eqz v9, :cond_13

    .line 354
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    goto :goto_d

    .line 360
    .end local v9    # "listener":Lied$d;
    :sswitch_d
    const/4 v6, 0x0

    .line 361
    .local v6, "eventConsumed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->g:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 362
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 364
    .restart local v4    # "errCode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lied$b;

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 365
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lied$b;

    .line 371
    .local v5, "errorInfo":Lied$b;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->g:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_14
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$c;

    .line 372
    .local v9, "listener":Lied$c;
    if-eqz v9, :cond_14

    .line 373
    invoke-interface {v9, v5}, Lied$c;->a(Lied$b;)Z

    move-result v3

    .line 374
    .local v3, "consumed":Z
    if-eqz v3, :cond_14

    .line 375
    move v6, v3

    .line 381
    .end local v3    # "consumed":Z
    .end local v4    # "errCode":I
    .end local v5    # "errorInfo":Lied$b;
    .end local v9    # "listener":Lied$c;
    :cond_15
    if-nez v6, :cond_1

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c()V

    goto/16 :goto_0

    .line 368
    .restart local v4    # "errCode":I
    :cond_16
    new-instance v5, Lied$b;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v4, v0}, Lied$b;-><init>(ILjava/lang/String;)V

    .restart local v5    # "errorInfo":Lied$b;
    goto :goto_e

    .line 399
    .end local v4    # "errCode":I
    .end local v5    # "errorInfo":Lied$b;
    .end local v6    # "eventConsumed":Z
    :sswitch_e
    const-string/jumbo v17, "--onCallComing callback"

    .line 8033
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 401
    .restart local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-object/from16 v17, v0

    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v7

    .line 402
    .restart local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v7, :cond_17

    .line 403
    invoke-interface {v7, v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession;)Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 406
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->j:Life$a;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->j:Life$a;

    move-object/from16 v17, v0

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Life$a;->a(Ljava/lang/String;)V

    .line 410
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->b:Liey;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->b:Liey;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Liey;->a()V

    .line 414
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->i:Lied$g;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    .line 415
    const-string/jumbo v17, "--mComingCallListener is null"

    .line 8050
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->i:Lied$g;

    move-object/from16 v17, v0

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->g()Z

    move-result v18

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lied$g;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 423
    .end local v7    # "iiAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    .end local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 424
    .restart local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1b
    :goto_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$e;

    .line 426
    .local v9, "listener":Lied$e;
    if-eqz v9, :cond_1b

    .line 427
    invoke-interface {v12}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lied$e;->b(Ljava/lang/String;)V

    goto :goto_f

    .line 434
    .end local v9    # "listener":Lied$e;
    .end local v12    # "objAVSession":Lcom/alibaba/wukong/openav/external/IAVSession;
    :sswitch_10
    const-string/jumbo v17, "--onRecNoMicWarning callback"

    .line 9033
    const-string/jumbo v18, "OpenAV"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 437
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 438
    .restart local v4    # "errCode":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "--onRecNoMicWarning errCode = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lieg;->b(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1c
    :goto_10
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$f;

    .line 441
    .local v9, "listener":Lied$f;
    if-eqz v9, :cond_1c

    .line 442
    invoke-interface {v9}, Lied$f;->c()V

    goto :goto_10

    .line 448
    .end local v4    # "errCode":I
    .end local v9    # "listener":Lied$f;
    :sswitch_11
    const-string/jumbo v17, "--onDataRecvTimeout"

    invoke-static/range {v17 .. v17}, Lieg;->b(Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 450
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 451
    .restart local v4    # "errCode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 453
    .local v15, "reason":Ljava/lang/String;
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1d
    :goto_12
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$f;

    .line 454
    .restart local v9    # "listener":Lied$f;
    if-eqz v9, :cond_1d

    .line 455
    invoke-interface {v9, v4, v15}, Lied$f;->b(ILjava/lang/String;)V

    goto :goto_12

    .line 451
    .end local v9    # "listener":Lied$f;
    .end local v15    # "reason":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v15, ""

    goto :goto_11

    .line 462
    .end local v4    # "errCode":I
    :sswitch_12
    const-string/jumbo v17, "--onAbnormWarning"

    invoke-static/range {v17 .. v17}, Lieg;->b(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 464
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 465
    .restart local v4    # "errCode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 467
    .restart local v15    # "reason":Ljava/lang/String;
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1f
    :goto_14
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$f;

    .line 468
    .restart local v9    # "listener":Lied$f;
    if-eqz v9, :cond_1f

    .line 469
    invoke-interface {v9, v4, v15}, Lied$f;->c(ILjava/lang/String;)V

    goto :goto_14

    .line 465
    .end local v9    # "listener":Lied$f;
    .end local v15    # "reason":Ljava/lang/String;
    :cond_20
    const-string/jumbo v15, ""

    goto :goto_13

    .line 476
    .end local v4    # "errCode":I
    :sswitch_13
    const-string/jumbo v17, "--onAbnormWarning"

    invoke-static/range {v17 .. v17}, Lieg;->b(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 478
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 479
    .restart local v4    # "errCode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 481
    .restart local v15    # "reason":Ljava/lang/String;
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_21
    :goto_16
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lied$f;

    .line 482
    .restart local v9    # "listener":Lied$f;
    if-eqz v9, :cond_21

    .line 483
    invoke-interface {v9, v4, v15}, Lied$f;->d(ILjava/lang/String;)V

    goto :goto_16

    .line 479
    .end local v9    # "listener":Lied$f;
    .end local v15    # "reason":Ljava/lang/String;
    :cond_22
    const-string/jumbo v15, ""

    goto :goto_15

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_d
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x14 -> :sswitch_b
        0x15 -> :sswitch_c
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x18 -> :sswitch_12
        0x19 -> :sswitch_13
        0x6b -> :sswitch_a
    .end sparse-switch
.end method
