.class public Ligj;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;


# static fields
.field public static a:I

.field public static b:Z

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic n:Z


# instance fields
.field public final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

.field public final h:Ligk;

.field public i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

.field public j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ligy;

.field public m:Ljava/lang/String;

.field private o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/Integer;

.field private r:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    const-class v0, Ligj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ligj;->n:Z

    .line 41
    const/16 v0, 0x4000

    sput v0, Ligj;->a:I

    .line 43
    sput-boolean v1, Ligj;->b:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    sput-object v0, Ligj;->c:Ljava/util/List;

    new-instance v1, Ligr;

    invoke-direct {v1}, Ligr;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Ligj;->c:Ljava/util/List;

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Ligj;->c:Ljava/util/List;

    new-instance v1, Ligt;

    invoke-direct {v1}, Ligt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Ligj;->c:Ljava/util/List;

    new-instance v1, Ligs;

    invoke-direct {v1}, Ligs;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ligk;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;)V
    .locals 3
    .param p1, "listener"    # Ligk;
    .param p2, "draft"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v2, p0, Ligj;->f:Z

    .line 69
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    iput-object v0, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    .line 78
    iput-object v1, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    .line 82
    iput-object v1, p0, Ligj;->o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    .line 85
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    .line 88
    iput-object v1, p0, Ligj;->l:Ligy;

    .line 90
    iput-object v1, p0, Ligj;->p:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Ligj;->q:Ljava/lang/Integer;

    .line 92
    iput-object v1, p0, Ligj;->r:Ljava/lang/Boolean;

    .line 94
    iput-object v1, p0, Ligj;->m:Ljava/lang/String;

    .line 117
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->SERVER:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v0, v1, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ligj;->d:Ljava/util/concurrent/BlockingQueue;

    .line 120
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ligj;->e:Ljava/util/concurrent/BlockingQueue;

    .line 121
    iput-object p1, p0, Ligj;->h:Ligk;

    .line 122
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    iput-object v0, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    .line 123
    if-eqz p2, :cond_2

    .line 124
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    move-result-object v0

    iput-object v0, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    .line 125
    :cond_2
    return-void
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0x3ee

    const/4 v4, -0x3

    const/4 v3, 0x0

    .line 393
    iget-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSED:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-eq v1, v2, :cond_1

    .line 394
    iget-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->OPEN:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v1, v2, :cond_6

    .line 395
    if-ne p1, v5, :cond_2

    .line 396
    sget-boolean v1, Ligj;->n:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 397
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    iput-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    .line 398
    invoke-direct {p0, p1, p2, v3}, Ligj;->c(ILjava/lang/String;Z)V

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget-object v1, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;->NONE:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    if-eq v1, v2, :cond_4

    .line 403
    if-nez p3, :cond_3

    .line 410
    :cond_3
    :try_start_0
    new-instance v1, Ligv;

    invoke-direct {v1, p1, p2}, Ligv;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ligj;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Ligj;->c(ILjava/lang/String;Z)V

    .line 423
    :goto_2
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_5

    .line 424
    invoke-direct {p0, p1, p2, p3}, Ligj;->c(ILjava/lang/String;Z)V

    .line 425
    :cond_5
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    iput-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    iget-object v1, p0, Ligj;->h:Ligk;

    invoke-interface {v1, v0}, Ligk;->a(Ljava/lang/Exception;)V

    .line 413
    const-string/jumbo v1, "generated frame is invalid"

    invoke-direct {p0, v5, v1, v3}, Ligj;->c(ILjava/lang/String;Z)V

    goto :goto_1

    .line 417
    .end local v0    # "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    :cond_6
    if-ne p1, v4, :cond_8

    .line 418
    sget-boolean v1, Ligj;->n:Z

    if-nez v1, :cond_7

    if-nez p3, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 419
    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, v4, p2, v1}, Ligj;->c(ILjava/lang/String;Z)V

    goto :goto_2

    .line 421
    :cond_8
    const/4 v1, -0x1

    invoke-direct {p0, v1, p2, v3}, Ligj;->c(ILjava/lang/String;Z)V

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "remote"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 475
    const-string/jumbo v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ligj;->b(ILjava/lang/String;Z)V

    .line 476
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;)V
    .locals 3
    .param p1, "e"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 533
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ligj;->a(ILjava/lang/String;Z)V

    .line 534
    return-void
.end method

.method private a(Lihd;)V
    .locals 4
    .param p1, "d"    # Lihd;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 656
    sget-boolean v1, Ligj;->b:Z

    if-eqz v1, :cond_0

    .line 657
    const-string/jumbo v1, "WebSocketImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "open using draft: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->OPEN:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    iput-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    .line 660
    :try_start_0
    iget-object v1, p0, Ligj;->h:Ligk;

    invoke-interface {v1, p1}, Ligk;->a(Lihd;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Ligj;->h:Ligk;

    invoke-interface {v1, v0}, Ligk;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private declared-synchronized b(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSED:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 462
    :cond_0
    :try_start_1
    iget-object v1, p0, Ligj;->h:Ligk;

    invoke-interface {v1, p1, p2, p3}, Ligk;->a(ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    :goto_1
    :try_start_2
    iget-object v1, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a()V

    .line 468
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ligj;->l:Ligy;

    .line 470
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSED:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    iput-object v1, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    .line 471
    iget-object v1, p0, Ligj;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v1, p0, Ligj;->h:Ligk;

    invoke-interface {v1, v0}, Ligk;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized c(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ligj;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 508
    :goto_0
    monitor-exit p0

    return-void

    .line 493
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ligj;->q:Ljava/lang/Integer;

    .line 494
    iput-object p2, p0, Ligj;->p:Ljava/lang/String;

    .line 495
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ligj;->r:Ljava/lang/Boolean;

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Ligj;->f:Z

    .line 505
    iget-object v0, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a()V

    .line 507
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ligj;->l:Ligy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 635
    sget-boolean v0, Ligj;->b:Z

    if-eqz v0, :cond_0

    .line 636
    const-string/jumbo v1, "WebSocketImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "write("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_1

    const-string/jumbo v0, "too big to display"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_0
    iget-object v0, p0, Ligj;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 647
    return-void

    .line 636
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Ligj;->h:Ligk;

    invoke-interface {v0}, Ligk;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 529
    const/16 v0, 0x3e8

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ligj;->a(ILjava/lang/String;Z)V

    .line 530
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ligj;->a(ILjava/lang/String;Z)V

    .line 434
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .locals 3
    .param p1, "framedata"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 582
    sget-boolean v0, Ligj;->b:Z

    if-eqz v0, :cond_0

    .line 583
    const-string/jumbo v0, "WebSocketImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send frame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_0
    iget-object v0, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Ligj;->c(Ljava/nio/ByteBuffer;)V

    .line 585
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 568
    .local p1, "frames":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    invoke-virtual {p0}, Ligj;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/WebsocketNotConnectedException;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/WebsocketNotConnectedException;-><init>()V

    throw v1

    .line 570
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    .line 571
    .local v0, "f":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    invoke-virtual {p0, v0}, Ligj;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V

    goto :goto_0

    .line 573
    .end local v0    # "f":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 650
    .local p1, "bufs":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 651
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Ligj;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 653
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)Z
    .locals 15
    .param p1, "socketBufferNew"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    if-nez v11, :cond_0

    .line 175
    move-object/from16 v9, p1

    .line 188
    .local v9, "socketBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 190
    :try_start_0
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    if-nez v11, :cond_8

    .line 1593
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 1594
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c:[B

    array-length v12, v12

    if-le v11, v12, :cond_2

    .line 1595
    sget-object v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    .line 192
    .local v6, "isflashedgecase":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    :goto_1
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v11, :cond_8

    .line 194
    :try_start_1
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v11, p0}, Ligk;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Liib;->a(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-direct {p0, v11}, Ligj;->c(Ljava/nio/ByteBuffer;)V

    .line 195
    const/4 v11, -0x3

    const-string/jumbo v12, ""

    .line 2433
    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Ligj;->a(ILjava/lang/String;Z)V
    :try_end_1
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :goto_2
    const/4 v11, 0x0

    .line 310
    .end local v6    # "isflashedgecase":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    :goto_3
    return v11

    .line 177
    .end local v9    # "socketBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 178
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 179
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 180
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 181
    iput-object v1, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    .line 184
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 185
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    iget-object v9, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    .restart local v9    # "socketBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1596
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c:[B

    array-length v12, v12

    if-ge v11, v12, :cond_5

    .line 1597
    new-instance v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;

    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c:[B

    array-length v12, v12

    invoke-direct {v11, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v11
    :try_end_2
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    :catch_0
    move-exception v3

    .line 293
    .local v3, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    if-nez v11, :cond_14

    .line 294
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 295
    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;->getPreferedSize()I

    move-result v7

    .line 296
    .local v7, "newsize":I
    if-nez v7, :cond_13

    .line 297
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    add-int/lit8 v7, v11, 0x10

    .line 301
    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    .line 303
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 310
    .end local v3    # "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;
    .end local v7    # "newsize":I
    :cond_4
    :goto_4
    const/4 v11, 0x0

    goto :goto_3

    .line 1600
    :cond_5
    const/4 v11, 0x0

    :goto_5
    :try_start_3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1601
    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c:[B

    aget-byte v12, v12, v11

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    if-eq v12, v13, :cond_6

    .line 1602
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1603
    sget-object v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto/16 :goto_1

    .line 1600
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1606
    :cond_7
    sget-object v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto/16 :goto_1

    .line 197
    .restart local v6    # "isflashedgecase":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    :catch_1
    move-exception v11

    const/16 v11, 0x3ee

    const-string/jumbo v12, "remote peer closed connection before flashpolicy could be transmitted"

    const/4 v13, 0x1

    invoke-direct {p0, v11, v12, v13}, Ligj;->a(ILjava/lang/String;Z)V
    :try_end_3
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 205
    .end local v6    # "isflashedgecase":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    :cond_8
    :try_start_4
    iget-object v11, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->SERVER:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v11, v12, :cond_10

    .line 206
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    if-nez v11, :cond_d

    .line 207
    const/4 v11, 0x0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    .line 208
    .local v2, "d":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    :try_end_4
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    .line 210
    :try_start_5
    iget-object v12, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-virtual {v2, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)V

    .line 211
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 212
    invoke-virtual {v2, v9}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b(Ljava/nio/ByteBuffer;)Lihd;

    move-result-object v10

    .line 213
    .local v10, "tmphandshake":Lihd;
    instance-of v12, v10, Ligy;

    if-nez v12, :cond_a

    .line 214
    const/16 v12, 0x3ea

    const-string/jumbo v13, "wrong http function"

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Ligj;->c(ILjava/lang/String;Z)V

    .line 215
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 217
    :cond_a
    move-object v0, v10

    check-cast v0, Ligy;

    move-object v4, v0

    .line 218
    .local v4, "handshake":Ligy;
    invoke-virtual {v2, v4}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ligy;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    move-result-object v5

    .line 219
    .local v5, "handshakestate":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    if-ne v5, v12, :cond_9

    .line 220
    invoke-interface {v4}, Ligy;->a()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Ligj;->m:Ljava/lang/String;
    :try_end_5
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 223
    :try_start_6
    iget-object v12, p0, Ligj;->h:Ligk;

    invoke-interface {v12}, Ligk;->b()Lihg;
    :try_end_6
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v8

    .line 232
    .local v8, "response":Lihg;
    :try_start_7
    invoke-virtual {v2, v4, v8}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ligy;Lihg;)Liha;

    move-result-object v12

    iget-object v13, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-virtual {v2, v12, v13}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Lihd;Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0, v12}, Ligj;->a(Ljava/util/List;)V

    .line 233
    iput-object v2, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    .line 234
    invoke-direct {p0, v4}, Ligj;->a(Lihd;)V

    .line 235
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 224
    .end local v8    # "response":Lihg;
    :catch_2
    move-exception v3

    .line 225
    .local v3, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;->getCloseCode()I

    move-result v12

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Ligj;->c(ILjava/lang/String;Z)V

    .line 226
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 227
    .end local v3    # "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    :catch_3
    move-exception v3

    .line 228
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v12, p0, Ligj;->h:Ligk;

    invoke-interface {v12, v3}, Ligk;->a(Ljava/lang/Exception;)V

    .line 229
    const/4 v12, -0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Ligj;->c(ILjava/lang/String;Z)V
    :try_end_7
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 230
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 241
    .end local v2    # "d":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "handshake":Ligy;
    .end local v5    # "handshakestate":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .end local v10    # "tmphandshake":Lihd;
    :cond_b
    :try_start_8
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    if-nez v11, :cond_c

    .line 242
    const/16 v11, 0x3ea

    const-string/jumbo v12, "no draft matches"

    .line 3433
    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Ligj;->a(ILjava/lang/String;Z)V

    .line 244
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 247
    :cond_d
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v11, v9}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b(Ljava/nio/ByteBuffer;)Lihd;

    move-result-object v10

    .line 248
    .restart local v10    # "tmphandshake":Lihd;
    instance-of v11, v10, Ligy;

    if-nez v11, :cond_e

    .line 249
    const/16 v11, 0x3ea

    const-string/jumbo v12, "wrong http function"

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Ligj;->c(ILjava/lang/String;Z)V

    .line 250
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 252
    :cond_e
    move-object v0, v10

    check-cast v0, Ligy;

    move-object v4, v0

    .line 253
    .restart local v4    # "handshake":Ligy;
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v11, v4}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ligy;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    move-result-object v5

    .line 255
    .restart local v5    # "handshakestate":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    if-ne v5, v11, :cond_f

    .line 256
    invoke-direct {p0, v4}, Ligj;->a(Lihd;)V

    .line 257
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 259
    :cond_f
    const/16 v11, 0x3ea

    const-string/jumbo v12, "the handshake did finaly not match"

    .line 4433
    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Ligj;->a(ILjava/lang/String;Z)V

    .line 261
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 263
    .end local v4    # "handshake":Ligy;
    .end local v5    # "handshakestate":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .end local v10    # "tmphandshake":Lihd;
    :cond_10
    iget-object v11, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v11, v12, :cond_4

    .line 264
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    iget-object v12, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-virtual {v11, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)V

    .line 265
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v11, v9}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b(Ljava/nio/ByteBuffer;)Lihd;

    move-result-object v10

    .line 266
    .restart local v10    # "tmphandshake":Lihd;
    instance-of v11, v10, Lihf;

    if-nez v11, :cond_11

    .line 267
    const/16 v11, 0x3ea

    const-string/jumbo v12, "wrong http function"

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Ligj;->c(ILjava/lang/String;Z)V

    .line 268
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 270
    :cond_11
    move-object v0, v10

    check-cast v0, Lihf;

    move-object v4, v0

    .line 271
    .local v4, "handshake":Lihf;
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    iget-object v12, p0, Ligj;->l:Ligy;

    invoke-virtual {v11, v12, v4}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ligy;Lihf;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    move-result-object v5

    .line 272
    .restart local v5    # "handshakestate":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    if-ne v5, v11, :cond_12

    .line 283
    invoke-direct {p0, v4}, Ligj;->a(Lihd;)V

    .line 284
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 286
    :cond_12
    const/16 v11, 0x3ea

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "draft "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " refuses handshake"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5433
    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Ligj;->a(ILjava/lang/String;Z)V
    :try_end_8
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_4

    .line 289
    .end local v4    # "handshake":Lihf;
    .end local v5    # "handshakestate":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .end local v10    # "tmphandshake":Lihd;
    :catch_4
    move-exception v3

    .line 290
    .local v3, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
    :try_start_9
    invoke-direct {p0, v3}, Ligj;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;)V
    :try_end_9
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_4

    .line 299
    .local v3, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;
    .restart local v7    # "newsize":I
    :cond_13
    sget-boolean v11, Ligj;->n:Z

    if-nez v11, :cond_3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;->getPreferedSize()I

    move-result v11

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-ge v11, v12, :cond_3

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 306
    .end local v7    # "newsize":I
    :cond_14
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    iget-object v12, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    iget-object v11, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    iget-object v12, p0, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    .line 240
    .end local v3    # "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;
    .restart local v2    # "d":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    :catch_5
    move-exception v12

    goto/16 :goto_6
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 511
    .line 5695
    iget-object v0, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    .line 511
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    .line 512
    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Ligj;->a(IZ)V

    .line 525
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-boolean v0, p0, Ligj;->f:Z

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Ligj;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Ligj;->p:Ljava/lang/String;

    iget-object v2, p0, Ligj;->r:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ligj;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;->NONE:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    if-ne v0, v1, :cond_2

    .line 516
    invoke-direct {p0, v3, v2}, Ligj;->a(IZ)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;->ONEWAY:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    if-ne v0, v1, :cond_3

    .line 518
    iget-object v0, p0, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->SERVER:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-eq v0, v1, :cond_3

    .line 521
    invoke-direct {p0, v3, v2}, Ligj;->a(IZ)V

    goto :goto_0

    .line 523
    :cond_3
    const/16 v0, 0x3ee

    invoke-direct {p0, v0, v2}, Ligj;->a(IZ)V

    goto :goto_0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ligj;->b(ILjava/lang/String;Z)V

    .line 487
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 14
    .param p1, "socketBuffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 317
    :try_start_0
    iget-object v10, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v10, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v8

    .line 318
    .local v8, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    .line 319
    .local v6, "f":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    sget-boolean v11, Ligj;->b:Z

    if-eqz v11, :cond_1

    .line 320
    const-string/jumbo v11, "WebSocketImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "matched frame: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_1
    invoke-interface {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v3

    .line 322
    .local v3, "curop":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    invoke-interface {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->d()Z

    move-result v7

    .line 324
    .local v7, "fin":Z
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v3, v11, :cond_6

    .line 325
    const/16 v2, 0x3ed

    .line 326
    .local v2, "code":I
    const-string/jumbo v9, ""

    .line 327
    .local v9, "reason":Ljava/lang/String;
    instance-of v11, v6, Ligu;

    if-eqz v11, :cond_2

    .line 328
    move-object v0, v6

    check-cast v0, Ligu;

    move-object v1, v0

    .line 329
    .local v1, "cf":Ligu;
    invoke-interface {v1}, Ligu;->a()I

    move-result v2

    .line 330
    invoke-interface {v1}, Ligu;->b()Ljava/lang/String;

    move-result-object v9

    .line 332
    .end local v1    # "cf":Ligu;
    :cond_2
    iget-object v11, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v11, v12, :cond_4

    .line 334
    const/4 v11, 0x1

    invoke-direct {p0, v2, v9, v11}, Ligj;->b(ILjava/lang/String;Z)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v2    # "code":I
    .end local v3    # "curop":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    .end local v6    # "f":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    .end local v7    # "fin":Z
    .end local v8    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    .end local v9    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 386
    .local v5, "e1":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    iget-object v10, p0, Ligj;->h:Ligk;

    invoke-interface {v10, v5}, Ligk;->a(Ljava/lang/Exception;)V

    .line 387
    invoke-direct {p0, v5}, Ligj;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;)V

    .line 389
    .end local v5    # "e1":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    :cond_3
    return-void

    .line 337
    .restart local v2    # "code":I
    .restart local v3    # "curop":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    .restart local v6    # "f":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    .restart local v7    # "fin":Z
    .restart local v8    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    .restart local v9    # "reason":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v11, p0, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v11}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    move-result-object v11

    sget-object v12, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    if-ne v11, v12, :cond_5

    .line 338
    const/4 v11, 0x1

    invoke-direct {p0, v2, v9, v11}, Ligj;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 340
    :cond_5
    const/4 v11, 0x0

    invoke-direct {p0, v2, v9, v11}, Ligj;->c(ILjava/lang/String;Z)V

    goto :goto_0

    .line 343
    .end local v2    # "code":I
    .end local v9    # "reason":Ljava/lang/String;
    :cond_6
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v3, v11, :cond_7

    .line 344
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v11, p0, v6}, Ligk;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V

    goto :goto_0

    .line 346
    :cond_7
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PONG:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-eq v3, v11, :cond_0

    .line 349
    if-eqz v7, :cond_8

    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CONTINUOUS:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v3, v11, :cond_e

    .line 350
    :cond_8
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CONTINUOUS:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-eq v3, v11, :cond_b

    .line 351
    iget-object v11, p0, Ligj;->o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-eqz v11, :cond_9

    .line 352
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v11, 0x3ea

    const-string/jumbo v12, "Previous continuous frame sequence not completed."

    invoke-direct {v10, v11, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 353
    :cond_9
    iput-object v3, p0, Ligj;->o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    :try_end_1
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    :cond_a
    :goto_1
    :try_start_2
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v11, v6}, Ligk;->b(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 363
    :catch_1
    move-exception v4

    .line 364
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v11, v4}, Ligk;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 354
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_b
    if-eqz v7, :cond_d

    .line 355
    iget-object v11, p0, Ligj;->o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-nez v11, :cond_c

    .line 356
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v11, 0x3ea

    const-string/jumbo v12, "Continuous frame sequence was not started."

    invoke-direct {v10, v11, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 357
    :cond_c
    const/4 v11, 0x0

    iput-object v11, p0, Ligj;->o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    goto :goto_1

    .line 358
    :cond_d
    iget-object v11, p0, Ligj;->o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-nez v11, :cond_a

    .line 359
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v11, 0x3ea

    const-string/jumbo v12, "Continuous frame sequence was not started."

    invoke-direct {v10, v11, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 367
    :cond_e
    iget-object v11, p0, Ligj;->o:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-eqz v11, :cond_f

    .line 368
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v11, 0x3ea

    const-string/jumbo v12, "Continuous frame sequence not completed."

    invoke-direct {v10, v11, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 369
    :cond_f
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    :try_end_3
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v3, v11, :cond_10

    .line 371
    :try_start_4
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->c()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12}, Liib;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ligk;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 372
    :catch_2
    move-exception v4

    .line 373
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v11, v4}, Ligk;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 375
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_10
    sget-object v11, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->BINARY:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    :try_end_5
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v3, v11, :cond_11

    .line 377
    :try_start_6
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->c()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v11, v12}, Ligk;->a(Ljava/nio/ByteBuffer;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 378
    :catch_3
    move-exception v4

    .line 379
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v11, p0, Ligj;->h:Ligk;

    invoke-interface {v11, v4}, Ligk;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 382
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_11
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v11, 0x3ea

    const-string/jumbo v12, "non control or continious frame expected"

    invoke-direct {v10, v11, v12}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v10
    :try_end_7
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 674
    sget-boolean v0, Ligj;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->OPEN:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ligj;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 675
    :cond_0
    iget-object v0, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->OPEN:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 680
    iget-object v0, p0, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
