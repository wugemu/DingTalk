.class public Lcom/alipay/mobile/binarize/RSMaEngineAPI;
.super Liit;
.source "RSMaEngineAPI.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Lcom/alipay/mobile/binarize/BinarizeHandler;

.field public classicFrameCount:I

.field private volatile d:Z

.field private e:[B

.field private f:I

.field private g:I

.field private h:Z

.field private volatile i:Z

.field private j:Z

.field private k:Landroid/content/Context;

.field private l:[Lcom/alipay/ma/decode/DecodeResult;

.field private m:Landroid/content/SharedPreferences;

.field public rsBinarized:Z

.field public rsBinarizedCount:I

.field public rsFrameCount:I

.field public rsInitCost:J

.field public rsInitStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Liit;-><init>()V

    .line 39
    iput v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsBinarizedCount:I

    .line 40
    iput-wide v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsInitCost:J

    .line 41
    iput-wide v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsInitStartTime:J

    .line 42
    iput v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->classicFrameCount:I

    .line 43
    iput v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsFrameCount:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->m:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->m:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_rs_exception"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 259
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Lcom/alipay/mobile/binarize/BinarizeHandler;)Lcom/alipay/mobile/binarize/BinarizeHandler;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    .param p1, "x1"    # Lcom/alipay/mobile/binarize/BinarizeHandler;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->m:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->m:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "pref_rs_exception"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->i:Z

    return p1
.end method

.method static synthetic a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;[BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 8
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;
    .param p3, "x3"    # Landroid/graphics/Rect;
    .param p4, "x4"    # Landroid/hardware/Camera$Size;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # I

    .prologue
    .line 23
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p7

    .line 10198
    invoke-super/range {v0 .. v7}, Liit;->doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;[Lcom/alipay/ma/decode/DecodeResult;)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    .param p1, "x1"    # [Lcom/alipay/ma/decode/DecodeResult;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->l:[Lcom/alipay/ma/decode/DecodeResult;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Lcom/alipay/mobile/binarize/BinarizeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 109
    invoke-super {p0}, Liit;->destroy()V

    .line 110
    iget-boolean v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->h:Z

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 112
    const-string/jumbo v2, "RSMaEngineAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "destroy, binarizeHandler == null:"

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4029
    sget-object v2, Liir;->a:Liir$a;

    .line 113
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a()I

    move-result v1

    .line 116
    .local v1, "previousException":I
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(I)V

    .line 117
    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    invoke-virtual {v2}, Lcom/alipay/mobile/binarize/BinarizeHandler;->destroy()V

    .line 118
    invoke-direct {p0, v1}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "previousException":I
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d:Z

    .line 125
    iput-boolean v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->i:Z

    .line 127
    :cond_1
    iput-boolean v3, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->j:Z

    .line 128
    return-void

    :cond_2
    move v2, v4

    .line 112
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "RSMaEngineAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "release binarizer exception2 "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5029
    sget-object v2, Liir;->a:Liir$a;

    .line 121
    const-string/jumbo v2, "release"

    invoke-static {v2}, Liiq;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 11
    .param p1, "mData"    # [B
    .param p2, "mCamera"    # Landroid/hardware/Camera;
    .param p3, "region"    # Landroid/graphics/Rect;
    .param p4, "previewSize"    # Landroid/hardware/Camera$Size;
    .param p5, "previewFormat"    # I
    .param p6, "binarized"    # Z
    .param p7, "binarizeMethod"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->i:Z

    if-eqz v0, :cond_10

    .line 205
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "process binary"

    .line 6029
    sget-object v0, Liir;->a:Liir$a;

    .line 6131
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->l:[Lcom/alipay/ma/decode/DecodeResult;

    if-eqz v0, :cond_0

    .line 6132
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->l:[Lcom/alipay/ma/decode/DecodeResult;

    .line 6163
    :goto_0
    return-object v0

    .line 6134
    :cond_0
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "rs before binarize"

    .line 7029
    sget-object v0, Liir;->a:Liir$a;

    .line 6136
    if-eqz p3, :cond_8

    .line 6137
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_1

    .line 6138
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 6140
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2

    .line 6141
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 6143
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p4, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v1, :cond_3

    .line 6144
    iget v0, p4, Landroid/hardware/Camera$Size;->width:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 6146
    :cond_3
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p4, Landroid/hardware/Camera$Size;->height:I

    if-le v0, v1, :cond_4

    .line 6147
    iget v0, p4, Landroid/hardware/Camera$Size;->height:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 6153
    :cond_4
    iget v2, p4, Landroid/hardware/Camera$Size;->width:I

    iget v0, p4, Landroid/hardware/Camera$Size;->height:I

    .line 7227
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 7228
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 7229
    iget v4, p3, Landroid/graphics/Rect;->right:I

    iput v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    .line 7230
    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    .line 7231
    iget v4, p3, Landroid/graphics/Rect;->right:I

    rem-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    .line 7232
    iget v4, p3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    .line 7234
    :cond_5
    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    .line 7235
    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    .line 7238
    :cond_6
    sub-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7239
    if-gtz v4, :cond_9

    .line 6154
    :cond_7
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 6155
    iget v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 6156
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->e:[B

    iget v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    iget v3, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/binarize/BinarizeHandler;->doBinarize([BII)V

    .line 6157
    iget v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsBinarizedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsBinarizedCount:I

    .line 6158
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "rs after binarize"

    .line 8029
    sget-object v0, Liir;->a:Liir$a;

    .line 6159
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->l:[Lcom/alipay/ma/decode/DecodeResult;

    if-eqz v0, :cond_e

    .line 6160
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->l:[Lcom/alipay/ma/decode/DecodeResult;

    goto/16 :goto_0

    .line 6151
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 7240
    :cond_9
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v5, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 7241
    if-lez v5, :cond_7

    .line 7243
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->e:[B

    if-nez v0, :cond_b

    .line 7244
    iget v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    iget v6, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    mul-int/2addr v0, v6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->e:[B

    :cond_a
    :goto_2
    move v0, v1

    .line 7249
    :goto_3
    add-int v6, v5, v1

    if-ge v0, v6, :cond_d

    .line 7250
    mul-int v6, v0, v2

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->e:[B

    sub-int v9, v0, v1

    iget v10, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    mul-int/2addr v9, v10

    invoke-static {p1, v6, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7249
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7245
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->e:[B

    array-length v0, v0

    iget v6, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    iget v7, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    mul-int/2addr v6, v7

    if-eq v0, v6, :cond_a

    .line 7246
    iget v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->f:I

    iget v6, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->g:I

    mul-int/2addr v0, v6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->e:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    :catch_0
    move-exception v8

    .line 209
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "RSMaEngineAPI"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "process binarize exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9029
    sget-object v0, Liir;->a:Liir$a;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->h:Z

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    if-eqz v0, :cond_c

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->c:Lcom/alipay/mobile/binarize/BinarizeHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/BinarizeHandler;->destroy()V

    .line 215
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->i:Z

    .line 216
    const-string/jumbo v0, "binarize"

    invoke-static {v0}, Liiq;->a(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 7252
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->e:[B

    goto/16 :goto_1

    .line 6162
    :cond_e
    iget-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d:Z

    if-eqz v0, :cond_f

    .line 6163
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 6165
    :cond_f
    iget-object v6, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->b:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;-><init>(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Landroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6193
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 220
    :cond_10
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "process classic"

    .line 10029
    sget-object v0, Liir;->a:Liir$a;

    .line 221
    iget v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->classicFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->classicFrameCount:I

    .line 222
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-super/range {v0 .. v7}, Liit;->doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "cameraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->k:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->m:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 50
    const-string/jumbo v0, "scan_rs_pref"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->m:Landroid/content/SharedPreferences;

    .line 52
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "enableRsBinarize"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string/jumbo v0, "RSMaEngineAPI"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rsBinarizeEnable:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "enableRsBinarize"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    sget-object v0, Liir;->a:Liir$a;

    .line 54
    const-string/jumbo v0, "enableRsBinarize"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    invoke-static {}, Lcom/alipay/mobile/binarize/BinarizeUtils;->supportRsBinarize()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->h:Z

    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 57
    invoke-static {}, Liiq;->a()V

    .line 61
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->h:Z

    .line 63
    :cond_2
    iput-boolean v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->j:Z

    .line 64
    iput-boolean v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->i:Z

    .line 65
    iput v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->classicFrameCount:I

    .line 66
    iput v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsFrameCount:I

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->h:Z

    if-eqz v0, :cond_3

    .line 68
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "before init"

    .line 2029
    sget-object v0, Liir;->a:Liir$a;

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->k:Landroid/content/Context;

    .line 70
    iput v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsBinarizedCount:I

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsInitStartTime:J

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Scan-Recognize"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->b:Landroid/os/Handler;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->b:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/binarize/RSMaEngineAPI$1;-><init>(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    iput-boolean v1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d:Z

    .line 102
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "after init"

    .line 3029
    sget-object v0, Liir;->a:Liir$a;

    .line 104
    :cond_3
    invoke-super {p0, p1, p2}, Liit;->init(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_4
    move v0, v1

    .line 55
    goto :goto_0
.end method
