.class public Lcom/alipay/mobile/binarize/BinarizeHandler;
.super Ljava/lang/Object;
.source "BinarizeHandler.java"


# static fields
.field public static INIT_EXCEPTION_REACHES_LIMIT:Z = false

.field public static final TAG:Ljava/lang/String; = "BinarizeHandler"

.field private static final a:[I

.field private static j:Z

.field private static k:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/binarize/BinarizeResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

.field private d:Lcom/alipay/mobile/binarize/HybridStdBinarizer;

.field private e:Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

.field private f:I

.field private g:Z

.field private h:Lcom/alipay/mobile/binarize/BinarizeResult;

.field private i:Lcom/alipay/mobile/binarize/BinarizeResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->a:[I

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->j:Z

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->INIT_EXCEPTION_REACHES_LIMIT:Z

    return-void

    .line 18
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/binarize/BinarizeHandler;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lcom/alipay/mobile/binarize/BinarizeHandler;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 80
    const-string/jumbo v0, "BinarizeHandler"

    const-string/jumbo v0, "BinarizeHandler release"

    .line 3029
    sget-object v0, Liir;->a:Liir$a;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->destroy()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->d:Lcom/alipay/mobile/binarize/HybridStdBinarizer;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->d:Lcom/alipay/mobile/binarize/HybridStdBinarizer;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->destroy()V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->e:Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->e:Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->destroy()V

    .line 90
    :cond_2
    iput-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    .line 91
    iput-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->d:Lcom/alipay/mobile/binarize/HybridStdBinarizer;

    .line 92
    iput-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->e:Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

    .line 93
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string/jumbo v0, "BinarizeHandler"

    const-string/jumbo v0, "BinarizeHandler init"

    .line 2029
    sget-object v0, Liir;->a:Liir$a;

    .line 71
    iput v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->f:I

    .line 72
    iput-boolean v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->g:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    .line 75
    new-instance v0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/binarize/HybridStdBinarizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->d:Lcom/alipay/mobile/binarize/HybridStdBinarizer;

    .line 76
    new-instance v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->e:Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

    .line 77
    return-void
.end method

.method private static a(Lcom/alipay/mobile/binarize/BinarizeResult;Lcom/alipay/mobile/binarize/BinarizeResult;)V
    .locals 4
    .param p0, "src"    # Lcom/alipay/mobile/binarize/BinarizeResult;
    .param p1, "dst"    # Lcom/alipay/mobile/binarize/BinarizeResult;

    .prologue
    const/4 v3, 0x0

    .line 164
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/binarize/BinarizeResult;->width:I

    iput v0, p1, Lcom/alipay/mobile/binarize/BinarizeResult;->width:I

    .line 168
    iget v0, p0, Lcom/alipay/mobile/binarize/BinarizeResult;->height:I

    iput v0, p1, Lcom/alipay/mobile/binarize/BinarizeResult;->height:I

    .line 169
    iget v0, p0, Lcom/alipay/mobile/binarize/BinarizeResult;->methodId:I

    iput v0, p1, Lcom/alipay/mobile/binarize/BinarizeResult;->methodId:I

    .line 170
    iget-object v0, p1, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    iget-object v1, p1, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    iget-object v2, p0, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static preHeatBinarizer(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-boolean v2, Lcom/alipay/mobile/binarize/BinarizeHandler;->j:Z

    if-eqz v2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    new-instance v0, Lcom/alipay/mobile/binarize/BinarizeHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/binarize/BinarizeHandler;-><init>(Landroid/content/Context;B)V

    .line 56
    .local v0, "binarizeHandler":Lcom/alipay/mobile/binarize/BinarizeHandler;
    invoke-direct {v0}, Lcom/alipay/mobile/binarize/BinarizeHandler;->a()V

    .line 57
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/binarize/BinarizeHandler;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v2, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 58
    .end local v0    # "binarizeHandler":Lcom/alipay/mobile/binarize/BinarizeHandler;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "BinarizeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preHeatBinarizer exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    sget-object v2, Liir;->a:Liir$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    sget-object v2, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/BinarizeHandler;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/binarize/BinarizeHandler;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public doBinarize([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    iget-boolean v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->g:Z

    if-eqz v1, :cond_0

    .line 118
    iget v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->f:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->f:I

    .line 119
    iput-boolean v3, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->g:Z

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "binarizeResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    sget-object v1, Lcom/alipay/mobile/binarize/BinarizeHandler;->a:[I

    iget v2, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->f:I

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    if-eqz v0, :cond_2

    .line 151
    sget-object v1, Lcom/alipay/mobile/binarize/BinarizeHandler;->a:[I

    iget v2, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->f:I

    aget v1, v1, v2

    iput v1, v0, Lcom/alipay/mobile/binarize/BinarizeResult;->methodId:I

    .line 152
    iget-object v2, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->h:Lcom/alipay/mobile/binarize/BinarizeResult;

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-direct {v1}, Lcom/alipay/mobile/binarize/BinarizeResult;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->h:Lcom/alipay/mobile/binarize/BinarizeResult;

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->h:Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/binarize/BinarizeHandler;->a(Lcom/alipay/mobile/binarize/BinarizeResult;Lcom/alipay/mobile/binarize/BinarizeResult;)V

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->h:Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_2
    return-void

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->initialize(II)V

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->setPreferWhite(Z)V

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->setDeNoiseByAvg(Z)V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;

    move-result-object v0

    .line 128
    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->d:Lcom/alipay/mobile/binarize/HybridStdBinarizer;

    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->initialize(II)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->d:Lcom/alipay/mobile/binarize/HybridStdBinarizer;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;

    move-result-object v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->e:Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->initialize(II)V

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->e:Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;

    move-result-object v0

    .line 136
    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->initialize(II)V

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->setPreferWhite(Z)V

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->setDeNoiseByAvg(Z)V

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;

    move-result-object v0

    .line 142
    goto :goto_0

    .line 144
    :pswitch_4
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->initialize(II)V

    .line 145
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->setPreferWhite(Z)V

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->setDeNoiseByAvg(Z)V

    .line 147
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->c:Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isBinarizePoolEmpty()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public popFirstBinarizeResult()Lcom/alipay/mobile/binarize/BinarizeResult;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-object v2, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->g:Z

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/binarize/BinarizeResult;

    .line 106
    .local v0, "popResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->i:Lcom/alipay/mobile/binarize/BinarizeResult;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-direct {v1}, Lcom/alipay/mobile/binarize/BinarizeResult;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->i:Lcom/alipay/mobile/binarize/BinarizeResult;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->i:Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/binarize/BinarizeHandler;->a(Lcom/alipay/mobile/binarize/BinarizeResult;Lcom/alipay/mobile/binarize/BinarizeResult;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/binarize/BinarizeHandler;->i:Lcom/alipay/mobile/binarize/BinarizeResult;

    monitor-exit v2

    .line 112
    .end local v0    # "popResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
