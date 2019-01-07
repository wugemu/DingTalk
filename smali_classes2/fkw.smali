.class public final Lfkw;
.super Ljava/lang/Object;
.source "OrgMemberQrcodePresenter.java"

# interfaces
.implements Lfkv$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfkw$a;
    }
.end annotation


# instance fields
.field final a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final b:Lfkv$b;

.field c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

.field d:Lfkw$a;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Lfkt$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkv$b;Lfkw$a;)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lfkv$b;
    .param p3, "orgMemberCallback"    # Lfkw$a;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lfkw$5;

    invoke-direct {v0, p0}, Lfkw$5;-><init>(Lfkw;)V

    iput-object v0, p0, Lfkw;->g:Lfkt$a;

    .line 49
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfkw;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 50
    invoke-static {p2}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfkv$b;

    iput-object v0, p0, Lfkw;->b:Lfkv$b;

    .line 51
    invoke-static {p3}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfkw$a;

    iput-object v0, p0, Lfkw;->d:Lfkw$a;

    .line 52
    new-instance v0, Lfkw$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfkw$1;-><init>(Lfkw;Landroid/os/Looper;)V

    iput-object v0, p0, Lfkw;->f:Landroid/os/Handler;

    .line 63
    invoke-static {}, Lfkt;->a()Lfkt;

    move-result-object v0

    iget-object v1, p0, Lfkw;->g:Lfkt$a;

    .line 1073
    if-eqz v1, :cond_1

    .line 1077
    iget-object v2, v0, Lfkt;->a:Ljava/util/List;

    monitor-enter v2

    .line 1078
    :try_start_0
    iget-object v3, v0, Lfkt;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1079
    iget-object v0, v0, Lfkt;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lfkw;)V
    .locals 4
    .param p0, "x0"    # Lfkw;

    .prologue
    .line 33
    .line 4191
    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->url:Ljava/lang/String;

    .line 4192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4193
    :cond_0
    const/4 v0, 0x0

    .line 3227
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3231
    iget-object v1, p0, Lfkw;->b:Lfkv$b;

    iget-object v2, p0, Lfkw;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lfkw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lfkv$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    iget-object v0, p0, Lfkw;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    :cond_1
    return-void

    .line 4196
    :cond_2
    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->url:Ljava/lang/String;

    .line 4197
    const-string/jumbo v1, "faceInvite"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4199
    const-string/jumbo v1, "null"

    .line 4200
    const-string/jumbo v0, "null"

    .line 4201
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 4202
    if-eqz v3, :cond_3

    .line 4203
    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 4204
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 4206
    :cond_3
    const-string/jumbo v3, "inviter"

    invoke-static {v2, v3, v1}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4207
    const-string/jumbo v2, "stateCode"

    invoke-static {v1, v2, v0}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4208
    const-string/jumbo v1, "orgName"

    iget-object v2, p0, Lfkw;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_qrcode_org_creation"

    .line 3083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 258
    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "orgName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 68
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfkw;->e:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lfkw;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1102
    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    if-nez v0, :cond_0

    .line 1103
    new-instance v0, Lfkw$2;

    invoke-direct {v0, p0}, Lfkw$2;-><init>(Lfkw;)V

    .line 1123
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfkw;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1125
    invoke-static {}, Lfax;->a()Lfaa;

    move-result-object v1

    invoke-interface {v1, v0}, Lfaa;->a(Lcma;)V

    .line 1127
    :goto_0
    return-void

    .line 1128
    :cond_0
    new-instance v0, Lfkw$3;

    invoke-direct {v0, p0}, Lfkw$3;-><init>(Lfkw;)V

    .line 1149
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfkw;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1151
    invoke-static {}, Lfax;->a()Lfaa;

    move-result-object v1

    iget-object v2, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lfaa;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 214
    iget-object v3, p0, Lfkw;->d:Lfkw$a;

    invoke-interface {v3}, Lfkw$a;->a()I

    move-result v1

    .line 215
    .local v1, "qrcodeMem":I
    if-gtz v1, :cond_0

    .line 216
    const-string/jumbo v2, ""

    .line 222
    :goto_0
    return-object v2

    .line 219
    :cond_0
    const-string/jumbo v3, " <font color=\'#3296FA\'>%d</font> "

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "htmlNum":Ljava/lang/String;
    iget-object v3, p0, Lfkw;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v4, Lezg$l;->dt_createteam_add_member_qrcode_member_joined_AT:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "status":Ljava/lang/String;
    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lfkw;->g:Lfkt$a;

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lfkt;->a()Lfkt;

    move-result-object v0

    iget-object v1, p0, Lfkw;->g:Lfkt$a;

    .line 2085
    if-eqz v1, :cond_1

    .line 2089
    iget-object v2, v0, Lfkt;->a:Ljava/util/List;

    monitor-enter v2

    .line 2090
    :try_start_0
    iget-object v3, v0, Lfkt;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2091
    iget-object v0, v0, Lfkt;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2093
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    iget-object v0, p0, Lfkw;->f:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lfkw;->f:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lfkw;->b:Lfkv$b;

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lfkw;->b:Lfkv$b;

    invoke-interface {v0}, Lfkv$b;->a()V

    .line 96
    :cond_3
    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    invoke-static {}, Lfax;->a()Lfaa;

    move-result-object v0

    iget-object v1, p0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lfaa;->b(Ljava/lang/String;Lcma;)V

    .line 99
    :cond_4
    return-void

    .line 2093
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
