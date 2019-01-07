.class public final Lfvy$1;
.super Ljava/lang/Object;
.source "PlayStoreService.java"

# interfaces
.implements Livl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfvy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lfvy;


# direct methods
.method public constructor <init>(Lfvy;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lfvy;

    .prologue
    .line 70
    iput-object p1, p0, Lfvy$1;->b:Lfvy;

    iput-object p2, p0, Lfvy$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 111
    const-class v0, Lfvy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInstallReferrerServiceDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public final a(I)V
    .locals 10
    .param p1, "responseCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    iget-object v3, p0, Lfvy$1;->b:Lfvy;

    invoke-static {v3}, Lfvy;->a(Lfvy;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/installreferrer/api/InstallReferrerClient;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lfvy$1;->b:Lfvy;

    invoke-static {v3}, Lfvy;->a(Lfvy;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/installreferrer/api/InstallReferrerClient;->b()V

    .line 107
    :cond_1
    return-void

    .line 76
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lfvy$1;->b:Lfvy;

    invoke-static {v3}, Lfvy;->a(Lfvy;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/installreferrer/api/InstallReferrerClient;->c()Livm;

    move-result-object v2

    .line 77
    .local v2, "referrerDetails":Livm;
    invoke-virtual {v2}, Livm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 78
    invoke-virtual {v2}, Livm;->a()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "referrer":Ljava/lang/String;
    iget-object v3, p0, Lfvy$1;->a:Landroid/content/Context;

    const-string/jumbo v4, "pref_play_install_referrer_reported"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    iget-object v3, p0, Lfvy$1;->b:Lfvy;

    iget-object v4, p0, Lfvy$1;->a:Landroid/content/Context;

    invoke-static {v3, v4, v1}, Lfvy;->a(Lfvy;Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const-string/jumbo v3, "pref_play_user_active_referrer_reported"

    const/4 v4, 0x0

    .line 83
    invoke-static {v3, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lfvy$1;->b:Lfvy;

    invoke-static {v3, v1}, Lfvy;->a(Lfvy;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "referrer":Ljava/lang/String;
    .end local v2    # "referrerDetails":Livm;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-class v3, Lfvy;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getInstallReferrer exception %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "referrerDetails":Livm;
    :cond_3
    :try_start_1
    const-class v3, Lfvy;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getInstallReferrer failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 95
    .end local v2    # "referrerDetails":Livm;
    :pswitch_1
    const-class v3, Lfvy;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getInstallReferrer exception %s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "FEATURE_NOT_SUPPORTED"

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 99
    :pswitch_2
    const-class v3, Lfvy;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getInstallReferrer exception %s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "SERVICE_UNAVAILABLE"

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
