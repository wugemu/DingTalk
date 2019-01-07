.class public final Lifb;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/alibaba/wukong/openav/external/IAVSession;


# instance fields
.field private a:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

.field private q:Ljava/lang/String;

.field private r:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->b:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->c:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->d:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->e:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->f:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->g:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->h:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lifb;->i:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    iput v0, p0, Lifb;->m:I

    .line 35
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    iput-object v0, p0, Lifb;->a:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    .line 36
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_NONE:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    iput-object v0, p0, Lifb;->r:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/openav/external/IAVSession;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 1
    .param p1, "session"    # Lcom/alibaba/wukong/openav/external/IAVSession;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    iput-object v0, p0, Lifb;->a:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    .line 43
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->b:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->c:Ljava/lang/String;

    .line 45
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->d:Ljava/lang/String;

    .line 46
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->e:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->f:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->h:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->i:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->f()Z

    move-result v0

    iput-boolean v0, p0, Lifb;->j:Z

    .line 51
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->g()Z

    move-result v0

    iput-boolean v0, p0, Lifb;->k:Z

    .line 52
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->h()Z

    move-result v0

    iput-boolean v0, p0, Lifb;->l:Z

    .line 53
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->m()I

    move-result v0

    iput v0, p0, Lifb;->m:I

    .line 54
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->n:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifb;->o:Ljava/lang/String;

    .line 56
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->p()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    move-result-object v0

    iput-object v0, p0, Lifb;->p:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 57
    invoke-interface {p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->r()Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    move-result-object v0

    iput-object v0, p0, Lifb;->r:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    .line 59
    :cond_0
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lifb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 99
    iput p1, p0, Lifb;->m:I

    .line 100
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .prologue
    .line 214
    iput-object p1, p0, Lifb;->p:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 215
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V
    .locals 0
    .param p1, "avSessionState"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    .prologue
    .line 74
    iput-object p1, p0, Lifb;->a:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    .line 75
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;)V
    .locals 0
    .param p1, "cryptoType"    # Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    .prologue
    .line 232
    iput-object p1, p0, Lifb;->r:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    .line 233
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lifb;->c:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isCallee"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lifb;->j:Z

    .line 125
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lifb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lifb;->d:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isAudioModel"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lifb;->k:Z

    .line 135
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lifb;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lifb;->h:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "isBroadcast"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lifb;->l:Z

    .line 145
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lifb;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lifb;->i:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lifb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .param p1, "callID"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lifb;->b:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .param p1, "extMsg"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lifb;->e:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lifb;->j:Z

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .param p1, "hangupReason"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lifb;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lifb;->k:Z

    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0
    .param p1, "hangupMsg"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lifb;->g:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lifb;->l:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lifb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectiveCallerId"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lifb;->n:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public final j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lifb;->a:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0
    .param p1, "userToUser"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lifb;->o:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lifb;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0
    .param p1, "callCid"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lifb;->q:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lifb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lifb;->m:I

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lifb;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lifb;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lifb;->p:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lifb;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lifb;->r:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    return-object v0
.end method
