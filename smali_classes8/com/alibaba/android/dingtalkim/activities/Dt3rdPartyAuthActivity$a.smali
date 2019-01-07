.class final Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "Dt3rdPartyAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 116
    const-string/jumbo v2, "com.alibaba.android.dingtalk.im.action_dd_auth_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;)V

    .line 118
    const-string/jumbo v2, "com.alibaba.android.dingtalk.im.action_dd_auth_data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 119
    .local v0, "authData":Ljava/io/Serializable;
    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 120
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

    .line 121
    .local v1, "authObject":Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->getErrorCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->getAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->finish()V

    .line 128
    .end local v0    # "authData":Ljava/io/Serializable;
    .end local v1    # "authObject":Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0    # "authData":Ljava/io/Serializable;
    :cond_1
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[Dt3rdPartyAuthActivity]"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " onReceive not instanceof Dt3rdPartyAuthObject"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
