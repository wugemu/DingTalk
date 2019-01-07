.class public Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "FaceLoadingFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
    .locals 3
    .param p0, "isEmployee"    # Z
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "deviceUid"    # Ljava/lang/String;
    .param p4, "groupId"    # Ljava/lang/String;
    .param p5, "settingMode"    # I
    .param p6, "source"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;-><init>()V

    .line 46
    .local v1, "fragment":Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "isEmployee"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v2, "corpId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v2, "deviceUid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v2, "groupId"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v2, "settingMode"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method

.method private a(J)V
    .locals 11
    .param p1, "uid"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 148
    iget-boolean v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->d:Z

    if-nez v5, :cond_1

    .line 149
    const-string/jumbo v5, "FaceRecord"

    const-string/jumbo v6, "FaceEmployee"

    const-string/jumbo v7, "[FaceRecord] not employee, ignore check hasFace"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->i:I

    if-ne v5, v9, :cond_2

    .line 153
    const-string/jumbo v5, "FaceRecord"

    const-string/jumbo v6, "FaceEmployee"

    const-string/jumbo v7, "[FaceRecord] is validate only mode, ignore check hasFace"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v2

    .line 157
    .local v2, "currentUid":J
    cmp-long v5, p1, v2

    if-eqz v5, :cond_3

    .line 158
    const-string/jumbo v5, "FaceRecord"

    const-string/jumbo v6, "FaceEmployee"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "[FaceRecord] checkEmployee uid not match uid="

    aput-object v8, v7, v10

    .line 160
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    const-string/jumbo v9, " current="

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 158
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.alibaba.dingtalk.face.record.action"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v5, "uid"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v5, "currentUid"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2115
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2116
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->b:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_3
    new-instance v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    invoke-direct {v4}, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;-><init>()V

    .line 175
    .local v4, "model":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->e:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->userId:Ljava/lang/String;

    .line 176
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->f:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->corpId:Ljava/lang/String;

    .line 177
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->g:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->deviceUid:Ljava/lang/String;

    .line 178
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->h:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->groupId:Ljava/lang/String;

    .line 179
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->j:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->source:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$1;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;J)V

    .line 203
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    const-class v5, Lcma;

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 203
    invoke-static {v0, v5, v7}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 3076
    if-eqz v5, :cond_0

    .line 3080
    const-string/jumbo v7, "faceboxrpc"

    invoke-static {v7}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 3081
    invoke-static {v7}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v7

    .line 3083
    if-nez v7, :cond_5

    .line 3084
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3085
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "hasUserFace, IFaceBoxRpcService is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3087
    :cond_4
    const-string/jumbo v7, ""

    const-string/jumbo v8, "IFaceBoxRpcService is null"

    invoke-static {v6, v5, v7, v8}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    const-string/jumbo v5, "FaceRecord"

    const-string/jumbo v6, "rpc"

    const-string/jumbo v7, "hasUserFace, IFaceBoxRpcService is null"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3095
    :cond_5
    :try_start_1
    new-instance v8, Lgst$3;

    invoke-direct {v8, v6, v5}, Lgst$3;-><init>(Landroid/os/Handler;Lcma;)V

    invoke-interface {v7, v4, v8}, Lgrx;->a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V

    .line 3116
    invoke-static {}, Lcja;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3118
    :catch_0
    move-exception v7

    invoke-static {}, Lcja;->c()V

    .line 3119
    const-string/jumbo v7, ""

    const-string/jumbo v8, "hasUserFace rpc error"

    invoke-static {v6, v5, v7, v8}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    const-string/jumbo v5, "FaceRecord"

    const-string/jumbo v6, "rpc"

    const-string/jumbo v7, "hasUserFace rpc error"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "apiEventListener":Lcma;
    .end local v4    # "model":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method private a(JJ)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "orgId"    # J

    .prologue
    .line 288
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v8

    .line 290
    .local v8, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v8, :cond_1

    .line 291
    iget-object v1, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Ljava/lang/String;)V

    .line 292
    iget-object v7, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 297
    .local v7, "nick":Ljava/lang/String;
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_2

    .line 298
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 299
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->b(Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_1
    return-void

    .line 294
    .end local v7    # "nick":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "nick":Ljava/lang/String;
    goto :goto_0

    .line 303
    :cond_2
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$3;

    invoke-direct {v0, p0, p3, p4, v7}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$3;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;JLjava/lang/String;)V

    .line 340
    .local v0, "listener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-class v2, Lcma;

    .line 341
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    move-wide v2, p1

    move-wide v4, p3

    .line 340
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    .prologue
    .line 32
    .line 4120
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4121
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 134
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgsu;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lgsu;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0, p1}, Lgsu;->a(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgsu;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Lgsu;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0, p1}, Lgsu;->b(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 127
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgsu;

    if-eqz v1, :cond_0

    .line 128
    check-cast v0, Lgsu;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lgsu;->a()V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->d:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1211
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 1219
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 1220
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->d:Z

    if-eqz v2, :cond_0

    .line 1221
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    .line 1222
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(JJ)V

    .line 1223
    invoke-direct {p0, v2, v3}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(J)V

    .line 109
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->c()V

    .line 112
    :cond_2
    return-void

    .line 1251
    :cond_3
    new-instance v2, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment$2;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;J)V

    .line 1280
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->e:Ljava/lang/String;

    const-class v0, Lcma;

    .line 1281
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1280
    invoke-virtual {v1, v3, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v1, "isEmployee"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->d:Z

    .line 78
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->e:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->f:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "deviceUid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->g:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->h:Ljava/lang/String;

    .line 82
    const-string/jumbo v1, "settingMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->i:I

    .line 83
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->j:Ljava/lang/String;

    .line 85
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    sget v0, Lgrv$d;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a:Landroid/view/View;

    .line 97
    sget v0, Lgrv$d;->no_permission_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->b:Landroid/view/View;

    .line 98
    sget v0, Lgrv$d;->has_record_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->c:Landroid/view/View;

    .line 99
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lgrv$e;->fragment_face_loading_layout:I

    return v0
.end method
