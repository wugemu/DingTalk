.class final Lexl$1$1;
.super Ljava/lang/Object;
.source "VoipConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexl$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexl$1;


# direct methods
.method constructor <init>(Lexl$1;)V
    .locals 0
    .param p1, "this$1"    # Lexl$1;

    .prologue
    .line 132
    iput-object p1, p0, Lexl$1$1;->a:Lexl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 135
    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    invoke-static {v5}, Lexl;->a(Lexl;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 136
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "VoIP conf focus change but activity inactive"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    invoke-static {v5}, Lexl;->b(Lexl;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 141
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    .line 142
    .local v2, "isSpeakerOn":Z
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    .line 143
    .local v1, "isScoConnected":Z
    const/4 v4, 0x0

    .line 144
    .local v4, "resetChange":Z
    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    invoke-static {v5}, Lexl;->c(Lexl;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v5

    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v5, v6, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    .line 145
    invoke-static {v5}, Lexl;->c(Lexl;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v5

    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v5, v6, :cond_3

    if-nez v2, :cond_4

    :cond_3
    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    .line 146
    invoke-static {v5}, Lexl;->c(Lexl;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v5

    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v5, v6, :cond_5

    if-nez v1, :cond_5

    .line 147
    :cond_4
    const/4 v4, 0x1

    .line 149
    :cond_5
    if-eqz v4, :cond_0

    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    invoke-static {v5}, Lexl;->d(Lexl;)Liee;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 150
    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    invoke-static {v5}, Lexl;->c(Lexl;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    invoke-static {v5}, Lexl;->c(Lexl;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "outMode":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "VoIP conf focus "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    .line 152
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v5, v5, Lexl$1;->a:Lexl;

    invoke-static {v5}, Lexl;->d(Lexl;)Liee;

    move-result-object v5

    iget-object v6, p0, Lexl$1$1;->a:Lexl$1;

    iget-object v6, v6, Lexl$1;->a:Lexl;

    invoke-static {v6}, Lexl;->c(Lexl;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v6

    invoke-interface {v5, v6}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    goto/16 :goto_0

    .line 150
    .end local v3    # "outMode":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, ""

    goto :goto_1
.end method
