.class public final Lfuq;
.super Lfuo;
.source "CertificationTask.java"


# instance fields
.field c:Lchv;

.field d:Lcom/alibaba/android/user/outverify/TaskStatus;

.field e:Landroid/app/Activity;

.field f:Lfus;

.field g:Ljava/lang/String;

.field h:[B

.field i:[B

.field j:Ljava/lang/String;

.field k:Lfur;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lchv;)V
    .locals 1
    .param p1, "certifyRequest"    # Lchv;

    .prologue
    .line 46
    invoke-direct {p0}, Lfuo;-><init>()V

    .line 178
    new-instance v0, Lfuq$3;

    invoke-direct {v0, p0}, Lfuq$3;-><init>(Lfuq;)V

    iput-object v0, p0, Lfuq;->k:Lfur;

    .line 47
    iput-object p1, p0, Lfuq;->c:Lchv;

    .line 48
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v0, v1, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lfuq;->e:Landroid/app/Activity;

    invoke-static {v0}, Lfuq;->c(Landroid/app/Activity;)V

    .line 92
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->CANCELED:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 93
    invoke-virtual {p0}, Lfuq;->b()V

    .line 95
    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 57
    iget-object v2, p0, Lfuq;->c:Lchv;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iput-object p1, p0, Lfuq;->e:Landroid/app/Activity;

    .line 62
    iget-object v2, p0, Lfuq;->c:Lchv;

    .line 1055
    iget v2, v2, Lchv;->f:I

    .line 62
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 63
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Back:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 71
    .local v1, "takeMode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    :goto_1
    iget-object v2, p0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v3, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v2, v3, :cond_0

    .line 72
    sget-object v2, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v2, p0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 2109
    new-instance v2, Lfuq$2;

    invoke-direct {v2, p0}, Lfuq$2;-><init>(Lfuq;)V

    iput-object v2, p0, Lfuq;->l:Landroid/content/BroadcastReceiver;

    .line 2142
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "intent_action_rp_take_photo"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2143
    iget-object v3, p0, Lfuq;->e:Landroid/app/Activity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lfuq;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 74
    move-object v0, v1

    .line 75
    .local v0, "finalTakeMode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    iget-object v2, p0, Lfuq;->e:Landroid/app/Activity;

    invoke-static {v2}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/rp_take_photo.html"

    new-instance v4, Lfuq$1;

    invoke-direct {v4, p0, v0}, Lfuq$1;-><init>(Lfuq;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 64
    .end local v0    # "finalTakeMode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    .end local v1    # "takeMode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    :cond_2
    iget-object v2, p0, Lfuq;->c:Lchv;

    .line 2055
    iget v2, v2, Lchv;->f:I

    .line 64
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 65
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Front:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .restart local v1    # "takeMode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    goto :goto_1

    .line 67
    .end local v1    # "takeMode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    :cond_3
    iget-object v2, p0, Lfuq;->e:Landroid/app/Activity;

    const/4 v3, 0x0

    const-string/jumbo v4, "data error"

    iget-object v5, p0, Lfuq;->c:Lchv;

    invoke-static {v2, v3, v4, v5}, Lfuq;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lchv;)V

    goto :goto_0
.end method

.method b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 98
    .line 2172
    iget-object v0, p0, Lfuq;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lfuq;->e:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfuq;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2174
    iput-object v2, p0, Lfuq;->l:Landroid/content/BroadcastReceiver;

    .line 99
    :cond_0
    iget-object v0, p0, Lfuq;->f:Lfus;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lfuq;->f:Lfus;

    .line 3063
    iput-object v2, v0, Lfus;->a:Lfur;

    .line 101
    iget-object v0, p0, Lfuq;->f:Lfus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfus;->a(Z)V

    .line 102
    iput-object v2, p0, Lfuq;->f:Lfus;

    .line 105
    :cond_1
    return-void
.end method

.method c()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    iget-object v5, p0, Lfuq;->c:Lchv;

    .line 4039
    iget-object v5, v5, Lchv;->b:Ljava/lang/String;

    .line 148
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 150
    const/16 v5, 0x80

    :try_start_0
    invoke-static {v5}, Lfun;->a(I)Lfun$a;

    move-result-object v2

    .line 151
    .local v2, "randomAESInfo":Lfun$a;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lfun$a;->a()Z

    move-result v5

    if-nez v5, :cond_2

    .line 152
    :cond_0
    const-string/jumbo v5, "outverify"

    const/4 v6, 0x0

    const-string/jumbo v7, "[CertificationTask] genRandomAESInfo invalid:"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 167
    .end local v2    # "randomAESInfo":Lfun$a;
    :cond_1
    :goto_0
    return v3

    .line 155
    .restart local v2    # "randomAESInfo":Lfun$a;
    :cond_2
    iget-object v5, v2, Lfun$a;->a:[B

    iget-object v6, p0, Lfuq;->c:Lchv;

    .line 5039
    iget-object v6, v6, Lchv;->b:Ljava/lang/String;

    .line 155
    invoke-static {v5, v6}, Lfut;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 6021
    .local v1, "encryptedRSAKeyBytes":[B
    const/4 v5, 0x2

    invoke-static {v1, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    .line 156
    iput-object v5, p0, Lfuq;->g:Ljava/lang/String;

    .line 157
    iget-object v5, v2, Lfun$a;->a:[B

    iput-object v5, p0, Lfuq;->h:[B

    .line 158
    iget-object v5, v2, Lfun$a;->b:[B

    iput-object v5, p0, Lfuq;->i:[B

    .line 159
    iget-object v5, v2, Lfun$a;->b:[B

    .line 7021
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    .line 159
    iput-object v5, p0, Lfuq;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "encryptedRSAKeyBytes":[B
    .end local v2    # "randomAESInfo":Lfun$a;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string/jumbo v5, "outverify"

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "[CertificationTask] checkGenAesKeyAndSave error:"

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v9, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 165
    goto :goto_0
.end method
