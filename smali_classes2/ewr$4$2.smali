.class final Lewr$4$2;
.super Ljava/lang/Object;
.source "TeleConfVoipHelper.java"

# interfaces
.implements Lied$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewr$4;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewr$4;


# direct methods
.method constructor <init>(Lewr$4;)V
    .locals 0
    .param p1, "this$0"    # Lewr$4;

    .prologue
    .line 368
    iput-object p1, p0, Lewr$4$2;->a:Lewr$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 372
    const-class v8, Lier;

    invoke-static {v8}, Liec;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liee;

    .line 373
    .local v1, "audioService":Liee;
    if-nez v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v6

    .line 376
    :cond_1
    invoke-interface {v1, v11}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v5

    .line 377
    .local v5, "session":Lcom/alibaba/wukong/openav/external/IAVSession;
    if-eqz v5, :cond_2

    .line 378
    invoke-interface {v5}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v2

    .line 379
    .local v2, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v8, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v8, :cond_0

    sget-object v8, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v8, :cond_0

    sget-object v8, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v8, :cond_0

    .line 386
    .end local v2    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_2
    const-string/jumbo v8, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "check sound mode success"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-wide/16 v8, 0xbb8

    invoke-static {v11, v8, v9}, Lewp;->a(Landroid/content/Context;J)V

    .line 389
    const/4 v6, 0x0

    .line 391
    .local v6, "silence":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 392
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 394
    .local v4, "ringMode":I
    if-nez v4, :cond_3

    .line 395
    const/4 v6, 0x1

    .line 398
    .end local v4    # "ringMode":I
    :cond_3
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, "uid":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 400
    sget-object v8, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalSpeakerMuted:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v8}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "code":Ljava/lang/String;
    invoke-interface {v1, v3, v7}, Liee;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v3    # "code":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, ""

    invoke-interface {v1, v8, v7}, Liee;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
