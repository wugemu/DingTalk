.class final Lexl$2;
.super Ljava/lang/Object;
.source "VoipConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexl;


# direct methods
.method constructor <init>(Lexl;)V
    .locals 0
    .param p1, "this$0"    # Lexl;

    .prologue
    .line 1614
    iput-object p1, p0, Lexl$2;->a:Lexl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1617
    iget-object v5, p0, Lexl$2;->a:Lexl;

    invoke-static {v5}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lexl$2;->a:Lexl;

    invoke-static {v5}, Lexl;->b(Lexl;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lexl$2;->a:Lexl;

    invoke-static {v5}, Lexl;->a(Lexl;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1618
    :cond_0
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "No volume warning activity invalid"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_1
    :goto_0
    return-void

    .line 1621
    :cond_2
    iget-object v5, p0, Lexl$2;->a:Lexl;

    invoke-static {v5}, Lexl;->b(Lexl;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1622
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 1623
    const/4 v3, 0x0

    .line 1624
    .local v3, "streamType":I
    iget-object v5, p0, Lexl$2;->a:Lexl;

    invoke-static {v5}, Lexl;->l(Lexl;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1625
    const/4 v3, 0x6

    .line 1627
    :cond_3
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1628
    .local v1, "callVolume":I
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 1629
    .local v2, "maxVolume":I
    div-int/lit8 v5, v2, 0x2

    if-ge v1, v5, :cond_1

    .line 1630
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->dt_conference_low_volume_toast:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1632
    .local v4, "toast":Ljava/lang/String;
    iget-object v5, p0, Lexl$2;->a:Lexl;

    invoke-static {v5}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1633
    iget-object v5, p0, Lexl$2;->a:Lexl;

    invoke-static {v5}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->ERR_LOW_VOLUME:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->value()I

    move-result v6

    invoke-interface {v5, v6, v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->b(ILjava/lang/String;)V

    goto :goto_0
.end method
