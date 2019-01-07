.class public Lcom/alibaba/android/teleconf/service/VoIPCallActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoIPCallActionReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/android/teleconf/service/VoIPCallActionReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/service/VoIPCallActionReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 26
    :try_start_0
    const-string/jumbo v8, "tele_conf"

    sget-object v9, Lcom/alibaba/android/teleconf/service/VoIPCallActionReceiver;->a:Ljava/lang/String;

    const-string/jumbo v10, "Click notification to voip-call"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v8

    .line 1428
    iget-wide v6, v8, Lewv;->a:J

    .line 29
    .local v6, "uid":J
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v8

    .line 1432
    iget-object v5, v8, Lewv;->b:Ljava/lang/String;

    .line 30
    .local v5, "nick":Ljava/lang/String;
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v8

    .line 1436
    iget-object v4, v8, Lewv;->c:Ljava/lang/String;

    .line 31
    .local v4, "mediaId":Ljava/lang/String;
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v8

    .line 1440
    iget-boolean v0, v8, Lewv;->d:Z

    .line 32
    .local v0, "beCaller":Z
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v8

    .line 1444
    iget-boolean v2, v8, Lewv;->e:Z

    .line 34
    .local v2, "canToPstn":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "user_id"

    invoke-virtual {v1, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    const-string/jumbo v8, "user_name"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v8, "media_id"

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v8, "from"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    const-string/jumbo v8, "conf_voip_to_pstn"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-static {p1, v1}, Lewb;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "beCaller":Z
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "canToPstn":Z
    .end local v4    # "mediaId":Ljava/lang/String;
    .end local v5    # "nick":Ljava/lang/String;
    .end local v6    # "uid":J
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v3

    .line 43
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
