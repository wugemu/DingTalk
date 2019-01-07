.class public final Lfzp;
.super Ljava/lang/Object;
.source "CSpaceSDKInvoker.java"

# interfaces
.implements Lxx;


# instance fields
.field a:Z

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "CSpaceSDKInvoker"

    iput-object v0, p0, Lfzp;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lfzp;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfzp;->c:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lfzp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2
    .param p1, "domainType"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 93
    .line 1151
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    .line 95
    .local v0, "devEnvironment":I
    const/16 v1, 0xfa0

    if-ne p1, v1, :cond_3

    .line 96
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-ne v0, v1, :cond_0

    .line 97
    const-string/jumbo v1, "https://space.dingtalk.com"

    .line 117
    :goto_0
    return-object v1

    .line 98
    :cond_0
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v0, v1, :cond_1

    .line 99
    const-string/jumbo v1, "https://pre-space.dingtalk.com"

    goto :goto_0

    .line 100
    :cond_1
    if-nez v0, :cond_2

    .line 101
    const-string/jumbo v1, "http://daily-space.dingtalk.com"

    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v1, "https://space.dingtalk.com"

    goto :goto_0

    .line 105
    :cond_3
    const/16 v1, 0x1770

    if-ne p1, v1, :cond_7

    .line 106
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-ne v0, v1, :cond_4

    .line 107
    const-string/jumbo v1, "https://preview.dingtalk.com"

    goto :goto_0

    .line 108
    :cond_4
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v0, v1, :cond_5

    .line 109
    const-string/jumbo v1, "https://pre-preview.dingtalk.com"

    goto :goto_0

    .line 110
    :cond_5
    if-nez v0, :cond_6

    .line 111
    const-string/jumbo v1, "https://pre-preview.dingtalk.com"

    goto :goto_0

    .line 113
    :cond_6
    const-string/jumbo v1, "https://preview.dingtalk.com"

    goto :goto_0

    .line 117
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 44
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceSDKInvoker"

    const-string/jumbo v3, "CSpaceSDKInvoker handleAccountShouldRelogin"

    const-string/jumbo v4, "token"

    const-string/jumbo v5, "token invalid or token expired"

    const/4 v6, 0x0

    .line 45
    invoke-static {v3, v4, v5, v6}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v1, p0, Lfzp;->a:Z

    if-eqz v1, :cond_0

    .line 50
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceSDKInvoker"

    const-string/jumbo v3, "CSpaceSDKInvoker handleAccountShouldRelogin processing"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    monitor-exit p0

    .line 80
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfzp;->a:Z

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    new-instance v0, Lfzp$1;

    invoke-direct {v0, p0}, Lfzp$1;-><init>(Lfzp;)V

    .line 79
    .local v0, "listener":Lgqq;
    invoke-static {p1, v0}, Lgpo;->a(Ljava/lang/String;Lgqq;)V

    goto :goto_0

    .line 54
    .end local v0    # "listener":Lgqq;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2
    .param p1, "domainType"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 122
    .line 2151
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    .line 124
    .local v0, "devEnvironment":I
    const/16 v1, 0xfa0

    if-ne p1, v1, :cond_3

    .line 125
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-ne v0, v1, :cond_0

    .line 126
    const-string/jumbo v1, "space.dingtalk.com"

    .line 146
    :goto_0
    return-object v1

    .line 127
    :cond_0
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v0, v1, :cond_1

    .line 128
    const-string/jumbo v1, "pre-space.dingtalk.com"

    goto :goto_0

    .line 129
    :cond_1
    if-nez v0, :cond_2

    .line 130
    const-string/jumbo v1, "daily-space.dingtalk.com"

    goto :goto_0

    .line 132
    :cond_2
    const-string/jumbo v1, "space.dingtalk.com"

    goto :goto_0

    .line 134
    :cond_3
    const/16 v1, 0x1770

    if-ne p1, v1, :cond_7

    .line 135
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-ne v0, v1, :cond_4

    .line 136
    const-string/jumbo v1, "preview.dingtalk.com"

    goto :goto_0

    .line 137
    :cond_4
    sget v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v0, v1, :cond_5

    .line 138
    const-string/jumbo v1, "pre-preview.dingtalk.com"

    goto :goto_0

    .line 139
    :cond_5
    if-nez v0, :cond_6

    .line 140
    const-string/jumbo v1, "pre-preview.dingtalk.com"

    goto :goto_0

    .line 142
    :cond_6
    const-string/jumbo v1, "preview.dingtalk.com"

    goto :goto_0

    .line 146
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method
