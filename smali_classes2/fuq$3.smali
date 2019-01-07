.class final Lfuq$3;
.super Ljava/lang/Object;
.source "CertificationTask.java"

# interfaces
.implements Lfur;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfuq;


# direct methods
.method constructor <init>(Lfuq;)V
    .locals 0
    .param p1, "this$0"    # Lfuq;

    .prologue
    .line 178
    iput-object p1, p0, Lfuq$3;->a:Lfuq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfus;Ljava/lang/String;)V
    .locals 3
    .param p1, "task"    # Lfus;
    .param p2, "finalUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 7033
    iget-object v1, v1, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 191
    sget-object v2, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 8033
    iget-object v1, v1, Lfuq;->e:Landroid/app/Activity;

    .line 192
    invoke-static {v1}, Lfuq;->c(Landroid/app/Activity;)V

    .line 193
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    sget-object v2, Lcom/alibaba/android/user/outverify/TaskStatus;->DONE:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 9033
    iput-object v2, v1, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 194
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;-><init>()V

    .line 195
    .local v0, "response":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setSucceed(Z)V

    .line 196
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 10033
    iget-object v1, v1, Lfuq;->c:Lchv;

    .line 10047
    iget-object v1, v1, Lchv;->d:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setAttachInfo(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 11033
    iget-object v1, v1, Lfuq;->c:Lchv;

    .line 11051
    iget v1, v1, Lchv;->e:I

    .line 197
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setCertifyType(I)V

    .line 198
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 12033
    iget-object v1, v1, Lfuq;->c:Lchv;

    .line 12055
    iget v1, v1, Lchv;->f:I

    .line 198
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setType(I)V

    .line 199
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 13033
    iget-object v1, v1, Lfuq;->g:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setEncryptedKey(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 14033
    iget-object v1, v1, Lfuq;->j:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setIvParameter(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->setImageUrl(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 15033
    iget-object v1, v1, Lfuq;->e:Landroid/app/Activity;

    .line 202
    invoke-static {v1, v0}, Lfuq;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;)V

    .line 203
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 16033
    invoke-virtual {v1}, Lfuq;->b()V

    .line 205
    .end local v0    # "response":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lfuq$3;->a:Lfuq;

    .line 1033
    iget-object v0, v0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 181
    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lfuq$3;->a:Lfuq;

    .line 2033
    iget-object v0, v0, Lfuq;->e:Landroid/app/Activity;

    .line 182
    invoke-static {v0}, Lfuq;->c(Landroid/app/Activity;)V

    .line 183
    iget-object v0, p0, Lfuq$3;->a:Lfuq;

    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->DONE:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 3033
    iput-object v1, v0, Lfuq;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 184
    iget-object v0, p0, Lfuq$3;->a:Lfuq;

    .line 4033
    iget-object v0, v0, Lfuq;->e:Landroid/app/Activity;

    .line 184
    iget-object v1, p0, Lfuq$3;->a:Lfuq;

    .line 5033
    iget-object v1, v1, Lfuq;->c:Lchv;

    .line 184
    invoke-static {v0, p1, p2, v1}, Lfuq;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lchv;)V

    .line 185
    iget-object v0, p0, Lfuq$3;->a:Lfuq;

    .line 6033
    invoke-virtual {v0}, Lfuq;->b()V

    .line 187
    :cond_0
    return-void
.end method
