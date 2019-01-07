.class public Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "Dt3rdPartyAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "[Dt3rdPartyAuthActivity]"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->b:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->i:Landroid/content/BroadcastReceiver;

    .line 184
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 132
    new-instance v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;

    invoke-direct {v1}, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;-><init>()V

    .line 133
    .local v1, "sendAuthResp":Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;
    iput-object p3, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->code:Ljava/lang/String;

    .line 134
    iput p1, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->mErrCode:I

    .line 135
    iput-object p2, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->mErrStr:Ljava/lang/String;

    .line 136
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    iget-object v2, v2, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->mTransaction:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->mTransaction:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    iget-object v2, v2, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->state:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->state:Ljava/lang/String;

    .line 140
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->toBundle(Landroid/os/Bundle;)V

    .line 143
    const-string/jumbo v2, "im"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "[Dt3rdPartyAuthActivity]"

    aput-object v4, v3, v7

    const-string/jumbo v4, " callbackMessage2ThirdApp"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v10, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->c:Ljava/lang/String;

    .line 1151
    invoke-static {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1152
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1153
    new-instance v4, Landroid/content/ComponentName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".ddshare.DDShareActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1154
    const/high16 v2, 0x14000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1155
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1158
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1170
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v2

    .line 1160
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1161
    const-string/jumbo v3, "im"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[Dt3rdPartyAuthActivity]"

    aput-object v5, v4, v7

    const-string/jumbo v5, " callbackMessage2ThirdApp exception:"

    aput-object v5, v4, v8

    .line 1162
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    .line 1161
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v10, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "callback to 3rd app failed , 3rd app callbackActivity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1164
    :catch_1
    move-exception v2

    .line 1165
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1166
    const-string/jumbo v3, "im"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[Dt3rdPartyAuthActivity]"

    aput-object v5, v4, v7

    const-string/jumbo v5, " callbackMessage2ThirdApp exception:"

    aput-object v5, v4, v8

    .line 1167
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1166
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v10, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "callback to 3rd app failed,exception"

    aput-object v5, v4, v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1171
    :cond_1
    const-string/jumbo v2, "im"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "[Dt3rdPartyAuthActivity]"

    aput-object v4, v3, v7

    const-string/jumbo v4, " callbackMessage2ThirdApp failed, 3rd app not found"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v10, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "callback to 3rd app failed , 3rd app not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, -0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_1

    .line 1065
    const-string/jumbo v1, "outShare"

    const-string/jumbo v2, "android.intent.ding.EXTRA_ACTION_TYPE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->g:Z

    .line 1066
    const-string/jumbo v1, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->c:Ljava/lang/String;

    .line 1067
    const-string/jumbo v1, "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->d:Ljava/lang/String;

    .line 1068
    const-string/jumbo v1, "android.intent.ding.EXTRA_MESSAGE_APP_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->e:Ljava/lang/String;

    .line 1069
    const-string/jumbo v1, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->f:I

    .line 1070
    const-string/jumbo v1, "android.intent.ding.EXTRA_COMMAND_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1071
    new-instance v2, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    invoke-direct {v2}, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    .line 1072
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 1073
    const-string/jumbo v0, "im"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[Dt3rdPartyAuthActivity]"

    aput-object v3, v2, v4

    const-string/jumbo v3, "version:"

    aput-object v3, v2, v6

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    invoke-virtual {v0}, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->checkArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->d:Ljava/lang/String;

    .line 1076
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    if-eq v1, v0, :cond_2

    .line 1078
    :cond_0
    const-string/jumbo v0, "im"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[Dt3rdPartyAuthActivity]"

    aput-object v2, v1, v4

    const-string/jumbo v2, "arguments invalid:"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string/jumbo v0, "arguments invalid"

    invoke-direct {p0, v8, v0, v5}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "arguments invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->finish()V

    .line 1087
    :cond_1
    :goto_0
    return-void

    .line 1083
    :cond_2
    const-string/jumbo v0, "sns_login"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->h:Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;

    iget-object v1, v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    const-string/jumbo v0, "im"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[Dt3rdPartyAuthActivity]"

    aput-object v2, v1, v4

    const-string/jumbo v2, " none sns_login type, not supported"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string/jumbo v0, "none sns_login type, not supported"

    invoke-direct {p0, v8, v0, v5}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "none sns_login type, not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->finish()V

    goto :goto_0

    .line 1089
    :cond_3
    const-string/jumbo v0, "im"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[Dt3rdPartyAuthActivity]"

    aput-object v2, v1, v4

    const-string/jumbo v2, " open webview"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->i:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 1105
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;

    invoke-direct {v0, p0, v4}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->i:Landroid/content/BroadcastReceiver;

    .line 1107
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alibaba.android.dingtalk.im.action_dd_auth_result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1091
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1092
    const-string/jumbo v1, "https://h5.dingtalk.com/appauth/index.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "appid"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->e:Ljava/lang/String;

    .line 1093
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "signature"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->d:Ljava/lang/String;

    .line 1094
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "identifier"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->c:Ljava/lang/String;

    .line 1095
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string/jumbo v1, "nav_webview_from_model"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1098
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 199
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/Dt3rdPartyAuthActivity;->a()V

    .line 200
    return-void
.end method
