.class public Lier;
.super Ljava/lang/Object;
.source "AVAudioService.java"

# interfaces
.implements Liee;


# instance fields
.field private a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

.field private b:Liey;

.field private c:Liez;

.field private d:Lieq;

.field private e:Lcom/alibaba/wukong/openav/external/IAVSession;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

.field private i:Ljava/lang/String;

.field private j:Life$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    iput-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 30
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    iput-object v0, p0, Lier;->h:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 33
    new-instance v0, Lier$1;

    invoke-direct {v0, p0}, Lier$1;-><init>(Lier;)V

    iput-object v0, p0, Lier;->j:Life$a;

    .line 46
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    iget-object v1, p0, Lier;->j:Life$a;

    .line 1218
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v2, :cond_0

    .line 1219
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 2062
    iput-object v1, v0, Liez;->j:Life$a;

    .line 47
    :cond_0
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 2098
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    .line 47
    iput-object v0, p0, Lier;->b:Liey;

    .line 48
    new-instance v0, Lieq;

    invoke-direct {v0}, Lieq;-><init>()V

    iput-object v0, p0, Lier;->d:Lieq;

    .line 49
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 3094
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 49
    iput-object v0, p0, Lier;->c:Liez;

    .line 50
    iget-object v0, p0, Lier;->c:Liez;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lier;->c:Liez;

    iget-object v1, p0, Lier;->d:Lieq;

    .line 4066
    iput-object v1, v0, Liez;->d:Liez$a;

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lied$a;)I
    .locals 3
    .param p1, "request"    # Lied$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, -0x1

    .line 196
    if-eqz p1, :cond_0

    iget-object v1, p1, Lied$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-makeCall, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lied$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lieg;->a(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-nez v1, :cond_2

    .line 202
    const-string/jumbo v1, "-makeCall, AVEngine is not initailed"

    invoke-static {v1}, Lieg;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    iget-object v1, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 207
    const-string/jumbo v0, "-makeCall, AVEngine is not prepared"

    invoke-static {v0}, Lieg;->d(Ljava/lang/String;)V

    .line 208
    const/4 v0, -0x2

    goto :goto_0

    .line 211
    :cond_3
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    iget-object v1, p1, Lied$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    iput-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 212
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_4

    .line 213
    const-string/jumbo v0, "-makeCall, AVSession is infailed"

    invoke-static {v0}, Lieg;->d(Ljava/lang/String;)V

    .line 214
    const/4 v0, -0x3

    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    iget-object v1, p1, Lied$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    iput-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 218
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 219
    iget-object v0, p1, Lied$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->d(Ljava/lang/String;)V

    .line 225
    :goto_1
    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-boolean v0, p1, Lied$a;->d:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "true"

    :goto_2
    invoke-interface {v1, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->c(Ljava/lang/String;)V

    .line 227
    iget-object v0, p1, Lied$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Ljava/lang/String;)V

    .line 232
    :goto_3
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-object v1, p0, Lier;->h:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;)V

    .line 233
    iget-object v0, p0, Lier;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->k(Ljava/lang/String;)V

    .line 238
    :goto_4
    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-boolean v0, p1, Lied$a;->e:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_32:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    :goto_5
    invoke-interface {v1, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;)V

    .line 18249
    iget-object v0, p0, Lier;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 18250
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-object v1, p0, Lier;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->i(Ljava/lang/String;)V

    .line 18254
    :goto_6
    iget-object v0, p0, Lier;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 18255
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-object v1, p0, Lier;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j(Ljava/lang/String;)V

    .line 244
    :goto_7
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Lcom/alibaba/wukong/openav/external/IAVSession;)I

    .line 245
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 222
    :cond_5
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-object v1, p1, Lied$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_2

    .line 230
    :cond_7
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-object v1, p1, Lied$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 236
    :cond_8
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    iget-object v1, p0, Lier;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->k(Ljava/lang/String;)V

    goto :goto_4

    .line 238
    :cond_9
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_NONE:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    goto :goto_5

    .line 18252
    :cond_a
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->i(Ljava/lang/String;)V

    goto :goto_6

    .line 18257
    :cond_b
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "toOpenId"    # Ljava/lang/String;
    .param p2, "toOpenNick"    # Ljava/lang/String;
    .param p3, "fromNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string/jumbo v0, "true"

    .line 18187
    new-instance v1, Lied$a;

    invoke-direct {v1, p1}, Lied$a;-><init>(Ljava/lang/String;)V

    .line 18188
    iput-object v2, v1, Lied$a;->b:Ljava/lang/String;

    .line 18189
    iput-object v2, v1, Lied$a;->c:Ljava/lang/String;

    .line 18190
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lied$a;->d:Z

    .line 18191
    invoke-virtual {p0, v1}, Lier;->a(Lied$a;)I

    move-result v0

    .line 182
    return v0
.end method

.method public final a()Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b()Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "-getAVSession, openId:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lieg;->a(Ljava/lang/String;)V

    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 454
    :goto_0
    return-object v1

    .line 443
    :cond_0
    const-wide/16 v2, 0x0

    .line 445
    .local v2, "uid":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 449
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 450
    const-string/jumbo v1, "-getAVSession return cache value with invalid uid"

    invoke-static {v1}, Lieg;->a(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 453
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v1, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-virtual {v1, p1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    iput-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 454
    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .prologue
    .line 74
    iput-object p1, p0, Lier;->h:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 75
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p0, Lier;->b:Liey;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "-switchAudioOutputMode "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne p1, v0, :cond_3

    .line 376
    iget-object v0, p0, Lier;->b:Liey;

    .line 28289
    invoke-virtual {v0}, Liey;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28290
    invoke-virtual {v0}, Liey;->k()V

    .line 28293
    :cond_2
    invoke-virtual {v0}, Liey;->c()V

    goto :goto_0

    .line 377
    :cond_3
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne p1, v0, :cond_5

    .line 378
    iget-object v0, p0, Lier;->b:Liey;

    .line 29280
    invoke-virtual {v0}, Liey;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29281
    invoke-virtual {v0}, Liey;->k()V

    .line 29284
    :cond_4
    invoke-virtual {v0}, Liey;->d()V

    goto :goto_0

    .line 379
    :cond_5
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne p1, v0, :cond_0

    .line 380
    iget-object v0, p0, Lier;->b:Liey;

    invoke-virtual {v0}, Liey;->e()V

    goto :goto_0
.end method

.method public final a(Lied$c;)V
    .locals 2
    .param p1, "listener"    # Lied$c;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 10242
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 10243
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 11078
    if-eqz p1, :cond_0

    iget-object v1, v0, Liez;->g:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11079
    iget-object v0, v0, Liez;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public final a(Lied$d;)V
    .locals 2
    .param p1, "listener"    # Lied$d;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 11278
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 11279
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 12124
    if-eqz p1, :cond_0

    iget-object v1, v0, Liez;->f:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12125
    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public final a(Lied$e;)V
    .locals 2
    .param p1, "listener"    # Lied$e;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 13224
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 13225
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 14142
    if-eqz p1, :cond_0

    iget-object v1, v0, Liez;->e:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14143
    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void
.end method

.method public final a(Lied$f;)V
    .locals 2
    .param p1, "listener"    # Lied$f;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 523
    const-string/jumbo v0, "-registerCallWarningListener"

    .line 44016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 44254
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 44255
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 45101
    if-eqz p1, :cond_0

    iget-object v1, v0, Liez;->h:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45102
    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_0
    return-void
.end method

.method public final a(Lied$h;)V
    .locals 2
    .param p1, "listener"    # Lied$h;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 12296
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    if-eqz v1, :cond_0

    .line 12297
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    invoke-virtual {v0, p1}, Liey;->a(Lied$h;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "extraMsg"    # Ljava/lang/String;
    .param p2, "openID"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 4660
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v0, :cond_0

    .line 4661
    invoke-static {p1, p2}, Lcom/taobao/conf/TBConfController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "muteMic"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 302
    const-string/jumbo v0, "-muteMic"

    .line 24016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 24175
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v1, :cond_0

    .line 24176
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    invoke-virtual {v1, p1}, Lcom/taobao/conf/TBConfController;->a(Z)V

    .line 24178
    iput-boolean p1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->i:Z

    .line 310
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 266
    const-string/jumbo v0, "-hangupCall"

    .line 19016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 268
    iget-object v2, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    iget-object v3, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 19466
    if-nez v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 19469
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--hungupCall, callid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", call status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieg;->b(Ljava/lang/String;)V

    .line 19470
    iget-object v0, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 19471
    :cond_2
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 19486
    :cond_3
    :goto_1
    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c(Ljava/lang/String;)V

    .line 19487
    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c()V

    goto :goto_0

    .line 19473
    :cond_4
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 19474
    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v1

    .line 19475
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    .line 19476
    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v4

    .line 19477
    if-eqz v4, :cond_5

    .line 19478
    invoke-interface {v4}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v1

    .line 19479
    invoke-interface {v4}, Lcom/alibaba/wukong/openav/external/IAVSession;->m()I

    move-result v0

    .line 19481
    :cond_5
    if-gtz v0, :cond_6

    .line 19482
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    .line 19484
    :cond_6
    iget-object v4, v2, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 20103
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "---hangUP, callId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lieg;->b(Ljava/lang/String;)V

    .line 20104
    iget-object v5, v4, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v5, :cond_3

    .line 20105
    iget-object v4, v4, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v4, v1, v0}, Lcom/taobao/conf/TBConf;->hangup(Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public final b(Lied$c;)V
    .locals 2
    .param p1, "listener"    # Lied$c;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 14248
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 14249
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 15084
    if-eqz p1, :cond_0

    .line 15085
    iget-object v0, v0, Liez;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public final b(Lied$d;)V
    .locals 2
    .param p1, "listener"    # Lied$d;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 15284
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 15285
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 16130
    if-eqz p1, :cond_0

    .line 16131
    iget-object v0, v0, Liez;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public final b(Lied$e;)V
    .locals 2
    .param p1, "listener"    # Lied$e;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 16230
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 16231
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 17148
    if-eqz p1, :cond_0

    .line 17149
    iget-object v0, v0, Liez;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public final b(Lied$f;)V
    .locals 2
    .param p1, "listener"    # Lied$f;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 531
    const-string/jumbo v0, "-unregisterCallWarningListener"

    .line 46016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 46260
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 46261
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 47112
    if-eqz p1, :cond_0

    iget-object v1, v0, Liez;->h:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47113
    iget-object v0, v0, Liez;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    return-void
.end method

.method public final b(Lied$h;)V
    .locals 2
    .param p1, "listener"    # Lied$h;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 17302
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    if-eqz v1, :cond_0

    .line 17303
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    invoke-virtual {v0, p1}, Liey;->b(Lied$h;)V

    .line 163
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectiveCallerId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lier;->f:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 467
    const-string/jumbo v0, "-enableAbTest"

    .line 35016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 35720
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v1, :cond_0

    .line 35721
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 36218
    iget-object v1, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v1, :cond_0

    .line 36219
    iget-object v0, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v0, p1}, Lcom/taobao/conf/TBConf;->enableAbTest(Z)V

    .line 471
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 279
    const-string/jumbo v0, "-rejectCall"

    .line 21016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 21510
    if-nez v1, :cond_1

    .line 21511
    const-string/jumbo v0, "--rejectAudioCall, iiAVSession is null"

    .line 22067
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 21514
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "--rejectAudioCall, callid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", call status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lieg;->b(Ljava/lang/String;)V

    .line 21516
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v2

    sget-object v3, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 21517
    :cond_2
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 21523
    :goto_1
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c(Ljava/lang/String;)V

    .line 21524
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c()V

    goto :goto_0

    .line 21519
    :cond_3
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 21520
    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->m()I

    move-result v4

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/conf/TBConfController;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "userToUser"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lier;->g:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 475
    const-string/jumbo v0, "-enableMediaRingtone"

    .line 37016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 37726
    iput-boolean p1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->j:Z

    .line 479
    :cond_0
    return-void
.end method

.method public final d()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 288
    const-string/jumbo v0, "-acceptCall"

    .line 23016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    iget-object v1, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->b(Lcom/alibaba/wukong/openav/external/IAVSession;)I

    .line 292
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lier;->i:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 483
    const-string/jumbo v0, "-enableP563"

    .line 38016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 38730
    iput-boolean p1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->k:Z

    .line 487
    :cond_0
    return-void
.end method

.method public final e()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 491
    const-string/jumbo v0, "-enableRNNNoise"

    .line 39016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 39734
    iput-boolean p1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->l:Z

    .line 495
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string/jumbo v0, "-reset"

    .line 5016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 5097
    iput-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->i:Z

    .line 5098
    iput-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->j:Z

    .line 5099
    iput-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->k:Z

    .line 5100
    iput-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->l:Z

    .line 5101
    iput-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->m:Z

    .line 5102
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c()V

    .line 5272
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_0

    .line 5273
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 6090
    iget-object v2, v1, Liez;->g:Ljava/util/Queue;

    if-eqz v2, :cond_0

    .line 6091
    iget-object v1, v1, Liez;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 6290
    :cond_0
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_1

    .line 6291
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 7136
    iget-object v2, v1, Liez;->f:Ljava/util/Queue;

    if-eqz v2, :cond_1

    .line 7137
    iget-object v1, v1, Liez;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 7236
    :cond_1
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_2

    .line 7237
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 8154
    iget-object v2, v1, Liez;->e:Ljava/util/Queue;

    if-eqz v2, :cond_2

    .line 8155
    iget-object v1, v1, Liez;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 8308
    :cond_2
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    if-eqz v1, :cond_3

    .line 8309
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    .line 9111
    iget-object v2, v1, Liey;->e:Ljava/util/Queue;

    if-eqz v2, :cond_3

    .line 9112
    iget-object v1, v1, Liey;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 9266
    :cond_3
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    if-eqz v1, :cond_4

    .line 9267
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d:Liez;

    .line 10118
    iget-object v2, v1, Liez;->h:Ljava/util/Queue;

    if-eqz v2, :cond_4

    .line 10119
    iget-object v1, v1, Liez;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 5108
    :cond_4
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    if-eqz v1, :cond_5

    .line 5109
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->e:Liey;

    invoke-virtual {v0}, Liey;->b()V

    .line 107
    :cond_5
    return-void
.end method

.method public final f(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 499
    const-string/jumbo v0, "-enableInterruptTone"

    .line 40016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 40738
    iput-boolean p1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->m:Z

    .line 503
    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 507
    const-string/jumbo v0, "-enableAgc"

    .line 41016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 41742
    iput-boolean p1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->n:Z

    .line 511
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 417
    const-string/jumbo v0, "-isMicMute"

    .line 33016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lier;->e:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 33183
    iget-boolean v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->i:Z

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 329
    const-string/jumbo v0, "-turnOffSpeaker"

    .line 25016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lier;->b:Liey;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lier;->b:Liey;

    invoke-virtual {v0}, Liey;->c()V

    .line 333
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 340
    const-string/jumbo v0, "-turnOnSpeaker"

    .line 26016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lier;->b:Liey;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lier;->b:Liey;

    invoke-virtual {v0}, Liey;->d()V

    .line 344
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 515
    const-string/jumbo v0, "-applyGrayConfig"

    .line 42016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lier;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 42746
    iget-object v1, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    if-eqz v1, :cond_0

    .line 42747
    new-instance v1, Lcom/taobao/conf/TBConfConfig;

    invoke-direct {v1}, Lcom/taobao/conf/TBConfConfig;-><init>()V

    .line 42748
    iget-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->j:Z

    invoke-virtual {v1, v2}, Lcom/taobao/conf/TBConfConfig;->setRingtoneEnabled(Z)V

    .line 42749
    iget-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->k:Z

    invoke-virtual {v1, v2}, Lcom/taobao/conf/TBConfConfig;->setP563Enabled(Z)V

    .line 42750
    iget-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->m:Z

    invoke-virtual {v1, v2}, Lcom/taobao/conf/TBConfConfig;->setInterruptToneEnabled(Z)V

    .line 42751
    iget-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->l:Z

    invoke-virtual {v1, v2}, Lcom/taobao/conf/TBConfConfig;->setRNNoiseEnabled(Z)V

    .line 42752
    iget-boolean v2, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->n:Z

    invoke-virtual {v1, v2}, Lcom/taobao/conf/TBConfConfig;->setAgcEnabled(Z)V

    .line 42754
    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->c:Lcom/taobao/conf/TBConfController;

    .line 43236
    iget-object v2, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 43237
    iget-object v0, v0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v0, v1}, Lcom/taobao/conf/TBConf;->registerCallConfig(Lcom/taobao/conf/TBConfConfig;)V

    .line 519
    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 395
    const-string/jumbo v1, "-isSpeakerOn"

    .line 30016
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v1}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "ret":Z
    iget-object v1, p0, Lier;->b:Liey;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lier;->b:Liey;

    invoke-virtual {v1}, Liey;->h()Z

    move-result v0

    .line 400
    :cond_0
    return v0
.end method

.method public final l()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 405
    const-string/jumbo v2, "-isHeadsetPlugin"

    .line 31016
    const-string/jumbo v3, "OpenAV"

    invoke-static {v3, v2}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lier;->b:Liey;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lier;->b:Liey;

    .line 31351
    iget-boolean v3, v2, Liey;->a:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Liey;->c:Liej;

    if-eqz v3, :cond_0

    iget-object v2, v2, Liey;->c:Liej;

    invoke-virtual {v2}, Liej;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 406
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 31351
    goto :goto_0

    :cond_1
    move v0, v1

    .line 406
    goto :goto_1
.end method

.method public final m()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 411
    const-string/jumbo v0, "-isHeadsetPlugin"

    .line 32016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lier;->b:Liey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lier;->b:Liey;

    invoke-virtual {v0}, Liey;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 430
    const-string/jumbo v0, "-getConnectedBluetoothHeadsetDevice"

    .line 34016
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lier;->b:Liey;

    if-nez v0, :cond_1

    .line 34368
    :cond_0
    :goto_0
    return-object v1

    .line 434
    :cond_1
    iget-object v0, p0, Lier;->b:Liey;

    .line 34367
    iget-object v2, v0, Liey;->b:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Liey;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34370
    iget-object v0, v0, Liey;->b:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 34371
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 34372
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 34373
    if-eqz v0, :cond_2

    :goto_1
    move-object v1, v0

    .line 434
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 351
    const-string/jumbo v0, "-turnUpStreamVolume"

    .line 26067
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lier;->b:Liey;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lier;->b:Liey;

    invoke-virtual {v0}, Liey;->f()V

    .line 355
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 362
    const-string/jumbo v0, "-turnDownStreamVolume"

    .line 27016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lier;->b:Liey;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lier;->b:Liey;

    invoke-virtual {v0}, Liey;->g()V

    .line 366
    :cond_0
    return-void
.end method

.method public final q()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lier;->b:Liey;

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lier;->b:Liey;

    .line 29382
    iget-object v0, v0, Liey;->d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    goto :goto_0
.end method
