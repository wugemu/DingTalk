.class public Lewv;
.super Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;
.source "TeleFloatingVoipManager.java"


# static fields
.field private static final f:Ljava/lang/String;

.field private static volatile g:Lewv;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field private h:Liee;

.field private i:Lcom/alibaba/wukong/openav/external/IAVSession;

.field private j:Lied$d;

.field private k:Lied$e;

.field private l:Lied$c;

.field private m:Lied$h;

.field private n:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

.field private r:Liei$a;

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lewv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewv;->f:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;-><init>()V

    .line 77
    iput-boolean v1, p0, Lewv;->o:Z

    .line 78
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lewv;->p:Landroid/os/Handler;

    .line 82
    new-instance v0, Lewv$1;

    invoke-direct {v0, p0}, Lewv$1;-><init>(Lewv;)V

    iput-object v0, p0, Lewv;->s:Landroid/view/View$OnClickListener;

    .line 132
    invoke-direct {p0}, Lewv;->a()V

    .line 133
    iput-boolean v1, p0, Lewv;->o:Z

    .line 134
    return-void
.end method

.method static synthetic a(Lewv;Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;
    .locals 0
    .param p0, "x0"    # Lewv;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .prologue
    .line 56
    iput-object p1, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    return-object p1
.end method

.method static synthetic a(Lewv;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-object v0, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lewv$2;

    invoke-direct {v0, p0}, Lewv$2;-><init>(Lewv;)V

    iput-object v0, p0, Lewv;->j:Lied$d;

    .line 175
    new-instance v0, Lewv$3;

    invoke-direct {v0, p0}, Lewv$3;-><init>(Lewv;)V

    iput-object v0, p0, Lewv;->k:Lied$e;

    .line 304
    new-instance v0, Lewv$4;

    invoke-direct {v0, p0}, Lewv$4;-><init>(Lewv;)V

    iput-object v0, p0, Lewv;->l:Lied$c;

    .line 338
    new-instance v0, Lewv$5;

    invoke-direct {v0, p0}, Lewv$5;-><init>(Lewv;)V

    iput-object v0, p0, Lewv;->m:Lied$h;

    .line 378
    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 583
    iget-object v1, p0, Lewv;->h:Liee;

    if-nez v1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v1, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v1, :cond_3

    .line 587
    iget-object v1, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v1, p1}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    .line 589
    iget-object v1, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 590
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v1, :cond_2

    .line 591
    iget-object v1, p0, Lewv;->h:Liee;

    invoke-interface {v1}, Liee;->c()I

    goto :goto_0

    .line 593
    :cond_2
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CLOSE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v1, :cond_0

    .line 595
    iget-object v1, p0, Lewv;->h:Liee;

    invoke-interface {v1}, Liee;->b()I

    goto :goto_0

    .line 599
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_3
    iget-object v1, p0, Lewv;->h:Liee;

    invoke-interface {v1}, Liee;->b()I

    goto :goto_0
.end method

.method static synthetic a(Lewv;I)V
    .locals 0
    .param p0, "x0"    # Lewv;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lewv;->a(I)V

    return-void
.end method

.method static synthetic a(Lewv;Z)V
    .locals 1
    .param p0, "x0"    # Lewv;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lewv;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "resetSpeaker"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 677
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v1

    .line 3160
    iget-object v0, v1, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 678
    .local v0, "ringer":Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    if-eqz v0, :cond_0

    .line 679
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v1

    invoke-virtual {v1}, Lewr;->b()V

    .line 681
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lewv;->h:Liee;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lewv;->h:Liee;

    invoke-interface {v1}, Liee;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 682
    iget-object v1, p0, Lewv;->h:Liee;

    invoke-interface {v1}, Liee;->i()V

    .line 684
    :cond_1
    return-void
.end method

.method static synthetic b(Lewv;)Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-object v0, p0, Lewv;->n:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 5
    .param p1, "errCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 687
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_call_ended_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 689
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 690
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 691
    :cond_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Call failed, errorCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_is_reject_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    :cond_1
    :goto_0
    return-object v0

    .line 693
    :cond_2
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 694
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 695
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 696
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 697
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 698
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_busy_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 699
    :cond_4
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 700
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Call failed, errorCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-boolean v1, p0, Lewv;->d:Z

    if-eqz v1, :cond_1

    .line 702
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_no_accept_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    :cond_5
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 705
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Call failed no ring, errorCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-boolean v1, p0, Lewv;->d:Z

    if-eqz v1, :cond_1

    .line 707
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_no_ring_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 709
    :cond_6
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 710
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteMediaTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 711
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 712
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_local_badnet_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 713
    :cond_8
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_9

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 714
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 715
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_local_badnet_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 716
    :cond_a
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_b

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 717
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_c

    .line 718
    :cond_b
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_interrupt_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 719
    :cond_c
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_d

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 720
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_e

    .line 721
    :cond_d
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "Device init failed"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_fail_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 723
    :cond_e
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_f

    .line 724
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->and_conf_voip_remote_reject_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 725
    :cond_f
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_10

    .line 726
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->and_conf_voip_remote_reject_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 727
    :cond_10
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 728
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->and_conf_voip_remote_reject_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 729
    :cond_11
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTopManagementModel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 730
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "The user is top manager."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_is_manager_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 732
    :cond_12
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalHidenInAddressList:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_13

    .line 733
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "The user is hide in address."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_limit_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 735
    :cond_13
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoAuthorization:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_14

    .line 736
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "The user is black list no auth"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_is_blacked_title_v2:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 738
    :cond_14
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNonFriend:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_15

    .line 739
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "The user is black list no friend"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_is_blacked_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 741
    :cond_15
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_16

    .line 742
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "The remote mic is no auth."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_no_mic_authority_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 744
    :cond_16
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 745
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "The user canceled."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_cancel_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lewv;I)V
    .locals 5
    .param p0, "x0"    # Lewv;
    .param p1, "x1"    # I

    .prologue
    .line 56
    .line 3654
    iget-object v0, p0, Lewv;->h:Liee;

    if-nez v0, :cond_0

    .line 3655
    .end local p1    # "x1":I
    :goto_0
    return-void

    .line 3658
    .restart local p1    # "x1":I
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v2, "Leave voip conf"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    iget-object v0, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_1

    .line 3660
    iget-object v0, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->m()I

    move-result v0

    .line 3661
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_1

    if-eq v0, p1, :cond_1

    move p1, v0

    .line 3665
    .end local p1    # "x1":I
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lewv;->f:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Leave conference: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 3666
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3665
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    invoke-direct {p0, p1}, Lewv;->a(I)V

    .line 3668
    invoke-direct {p0}, Lewv;->g()V

    .line 3669
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levn;->a(I)V

    goto :goto_0
.end method

.method static synthetic c(Lewv;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewv;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lewv;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lewv;)V
    .locals 0
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    invoke-direct {p0}, Lewv;->g()V

    return-void
.end method

.method static synthetic d(Lewv;I)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lewv;
    .param p1, "x1"    # I

    .prologue
    .line 56
    .line 4753
    const/4 v0, 0x0

    .line 4754
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 4755
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 4756
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 4757
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 4758
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 4759
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 4760
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_voip_remote_busy:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_1
    :goto_0
    return-object v0

    .line 4761
    :cond_2
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 4762
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 4763
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_conference_rejected_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4764
    :cond_4
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 4765
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 4766
    :cond_5
    iget-boolean v1, p0, Lewv;->d:Z

    if-eqz v1, :cond_1

    .line 4767
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_status_noanswer:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4769
    :cond_6
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 4770
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_voip_remote_cancel_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lewv;)V
    .locals 4
    .param p0, "x0"    # Lewv;

    .prologue
    const/4 v3, 0x0

    .line 56
    .line 4604
    iget-object v0, p0, Lewv;->h:Liee;

    if-nez v0, :cond_1

    .line 4615
    :cond_0
    :goto_0
    return-void

    .line 4607
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Leyx;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4608
    invoke-direct {p0, v3}, Lewv;->a(Z)V

    .line 4609
    iget-object v0, p0, Lewv;->h:Liee;

    invoke-interface {v0}, Liee;->d()I

    .line 4610
    iget-object v0, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    if-eqz v0, :cond_0

    .line 4611
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_video_joining_conf:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4612
    iget-object v1, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 4613
    invoke-direct {p0}, Lewv;->i()Ljava/lang/String;

    move-result-object v0

    .line 4614
    iget-object v1, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 4617
    :cond_2
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    invoke-direct {p0, v0}, Lewv;->a(I)V

    .line 4618
    invoke-direct {p0}, Lewv;->g()V

    .line 4619
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->and_conf_voip_record_permission_warn_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4620
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e()Lewv;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lewv;->g:Lewv;

    if-nez v0, :cond_1

    .line 122
    const-class v1, Lewv;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lewv;->g:Lewv;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lewv;

    invoke-direct {v0}, Lewv;-><init>()V

    sput-object v0, Lewv;->g:Lewv;

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    sget-object v0, Lewv;->g:Lewv;

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e(Lewv;)Z
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    invoke-direct {p0}, Lewv;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lewv;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lewv;)Z
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-boolean v0, p0, Lewv;->o:Z

    return v0
.end method

.method static synthetic g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-object v0, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 524
    invoke-virtual {p0}, Lewv;->d()V

    .line 526
    invoke-direct {p0}, Lewv;->h()V

    .line 2673
    iget-object v0, p0, Lewv;->r:Liei$a;

    invoke-static {v0}, Leyz;->b(Liei$a;)V

    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lewv;->a(Z)V

    .line 531
    const/4 v0, 0x0

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lewp;->c(Landroid/content/Context;I)V

    .line 533
    iget-object v0, p0, Lewv;->n:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v0, v1, :cond_0

    .line 534
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levn;->a(I)V

    .line 536
    :cond_0
    return-void
.end method

.method static synthetic h(Lewv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    invoke-direct {p0}, Lewv;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-boolean v0, p0, Lewv;->o:Z

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 567
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewv;->o:Z

    .line 568
    iget-object v0, p0, Lewv;->h:Liee;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->k:Lied$e;

    invoke-interface {v0, v1}, Liee;->b(Lied$e;)V

    .line 570
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->j:Lied$d;

    invoke-interface {v0, v1}, Liee;->b(Lied$d;)V

    .line 571
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->l:Lied$c;

    invoke-interface {v0, v1}, Liee;->b(Lied$c;)V

    .line 572
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->m:Lied$h;

    invoke-interface {v0, v1}, Liee;->b(Lied$h;)V

    .line 574
    :cond_1
    iput-object v2, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 575
    iput-object v2, p0, Lewv;->k:Lied$e;

    .line 576
    iput-object v2, p0, Lewv;->j:Lied$d;

    .line 577
    iput-object v2, p0, Lewv;->l:Lied$c;

    .line 578
    iput-object v2, p0, Lewv;->m:Lied$h;

    .line 579
    invoke-virtual {p0}, Lewv;->c()V

    goto :goto_0
.end method

.method static synthetic i(Lewv;)Liee;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-object v0, p0, Lewv;->h:Liee;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 625
    iget-object v1, p0, Lewv;->n:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v1, v2, :cond_0

    sget v0, Leuj$l;->conf_txt_voip_hangup:I

    .line 627
    .local v0, "hangupTxtId":I
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 625
    .end local v0    # "hangupTxtId":I
    :cond_0
    iget-boolean v1, p0, Lewv;->d:Z

    if-eqz v1, :cond_1

    sget v0, Leuj$l;->conf_txt_single_video_hangup:I

    goto :goto_0

    :cond_1
    sget v0, Leuj$l;->conf_txt_video_hangup:I

    goto :goto_0
.end method

.method static synthetic j(Lewv;)J
    .locals 2
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-wide v0, p0, Lewv;->a:J

    return-wide v0
.end method

.method private j()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 631
    iget-object v4, p0, Lewv;->h:Liee;

    if-nez v4, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v2

    .line 635
    :cond_1
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v6, "Accept voip conf "

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Leyx;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 639
    iget-object v4, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v4, :cond_2

    .line 640
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewv;->f:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "Accept voip conf "

    aput-object v7, v6, v2

    iget-object v7, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 641
    invoke-interface {v7}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 640
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v4, p0, Lewv;->h:Liee;

    invoke-interface {v4}, Liee;->d()I

    .line 643
    iget-object v4, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    if-eqz v4, :cond_2

    .line 644
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Leuj$l;->conf_txt_video_joining_conf:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "stateTxt":Ljava/lang/String;
    iget-object v4, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-virtual {v4, v1, v3}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 646
    invoke-direct {p0}, Lewv;->i()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "hangupTxt":Ljava/lang/String;
    iget-object v4, p0, Lewv;->q:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5, v2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;IZ)V

    .end local v0    # "hangupTxt":Ljava/lang/String;
    .end local v1    # "stateTxt":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 650
    goto :goto_0
.end method

.method static synthetic k(Lewv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-object v0, p0, Lewv;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lewv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-object v0, p0, Lewv;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lewv;)Z
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-boolean v0, p0, Lewv;->d:Z

    return v0
.end method

.method static synthetic n(Lewv;)Z
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-boolean v0, p0, Lewv;->e:Z

    return v0
.end method

.method static synthetic o(Lewv;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lewv;

    .prologue
    .line 56
    iget-object v0, p0, Lewv;->s:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "nick"    # Ljava/lang/String;
    .param p4, "mediaId"    # Ljava/lang/String;
    .param p5, "isCaller"    # Z
    .param p6, "toPstn"    # Z

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lewv;->a:J

    .line 413
    iput-object p3, p0, Lewv;->b:Ljava/lang/String;

    .line 414
    iput-object p4, p0, Lewv;->c:Ljava/lang/String;

    .line 415
    iput-boolean p5, p0, Lewv;->d:Z

    .line 416
    iput-boolean p6, p0, Lewv;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 386
    iput-object p1, p0, Lewv;->n:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .line 1539
    iget-boolean v0, p0, Lewv;->o:Z

    if-nez v0, :cond_4

    .line 1542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lewv;->o:Z

    .line 1543
    invoke-static {}, Liec;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    const-class v0, Lier;

    invoke-static {v0}, Liec;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liee;

    iput-object v0, p0, Lewv;->h:Liee;

    .line 1546
    :cond_0
    iget-object v0, p0, Lewv;->h:Liee;

    if-eqz v0, :cond_3

    .line 1547
    iget-object v0, p0, Lewv;->j:Lied$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lewv;->k:Lied$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lewv;->l:Lied$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lewv;->m:Lied$h;

    if-nez v0, :cond_2

    .line 1549
    :cond_1
    invoke-direct {p0}, Lewv;->a()V

    .line 1551
    :cond_2
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->j:Lied$d;

    invoke-interface {v0, v1}, Liee;->a(Lied$d;)V

    .line 1552
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->k:Lied$e;

    invoke-interface {v0, v1}, Liee;->a(Lied$e;)V

    .line 1553
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->l:Lied$c;

    invoke-interface {v0, v1}, Liee;->a(Lied$c;)V

    .line 1554
    iget-object v0, p0, Lewv;->h:Liee;

    iget-object v1, p0, Lewv;->m:Lied$h;

    invoke-interface {v0, v1}, Liee;->a(Lied$h;)V

    .line 1556
    iget-object v0, p0, Lewv;->h:Liee;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    iput-object v0, p0, Lewv;->i:Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 1559
    :cond_3
    invoke-virtual {p0}, Lewv;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_4
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Liei$a;)V
    .locals 1
    .param p1, "l"    # Liei$a;

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lewv;->r:Liei$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 448
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewv;->f:Ljava/lang/String;

    const-string/jumbo v3, "Real show voip note"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 450
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lewv;->n:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v1, v2, :cond_0

    .line 451
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    const v2, 0x28bf7

    iget-object v3, p0, Lewv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Levu;->a(ILjava/lang/String;)V

    .line 456
    :goto_0
    iget-object v1, p0, Lewv;->p:Landroid/os/Handler;

    new-instance v2, Lewv$6;

    invoke-direct {v2, p0, v0}, Lewv$6;-><init>(Lewv;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    return-void

    .line 454
    :cond_0
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    const v2, 0x28bf8

    .line 1792
    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Levu;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 396
    invoke-direct {p0}, Lewv;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 506
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 507
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    invoke-virtual {v1}, Levu;->d()V

    .line 508
    iget-object v1, p0, Lewv;->p:Landroid/os/Handler;

    new-instance v2, Lewv$7;

    invoke-direct {v2, p0}, Lewv$7;-><init>(Lewv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method
