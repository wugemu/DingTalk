.class final Lewr$2;
.super Landroid/os/CountDownTimer;
.source "TeleConfVoipHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewr;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewr;


# direct methods
.method constructor <init>(Lewr;JJ)V
    .locals 4
    .param p1, "this$0"    # Lewr;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 133
    iput-object p1, p0, Lewr$2;->a:Lewr;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x2710

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 146
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Ring check finish"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lewr$2;->a:Lewr;

    invoke-static {v1}, Lewr;->a(Lewr;)Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 148
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lewr$2;->a:Lewr;

    invoke-virtual {v1}, Lewr;->b()V

    .line 152
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 136
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Ring check"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lewr$2;->a:Lewr;

    invoke-static {v1}, Lewr;->a(Lewr;)Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 138
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v1, v0, :cond_0

    .line 139
    iget-object v1, p0, Lewr$2;->a:Lewr;

    invoke-virtual {v1}, Lewr;->b()V

    .line 141
    :cond_0
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "Ring check: "

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v4}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 141
    :cond_1
    const-string/jumbo v1, "null"

    goto :goto_0
.end method
