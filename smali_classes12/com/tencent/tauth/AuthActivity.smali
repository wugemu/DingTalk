.class public Lcom/tencent/tauth/AuthActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 158
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    .line 189
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Ljst;->a()Ljst;

    move-result-object v3

    .line 163
    const-string/jumbo v0, "serial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2031
    iget-object v0, v3, Ljst;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljst$a;

    .line 165
    if-eqz v0, :cond_2

    .line 166
    const-string/jumbo v2, "://cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 167
    iget-object v1, v0, Ljst$a;->a:Ljuc;

    invoke-interface {v1}, Ljuc;->a()V

    .line 168
    iget-object v0, v0, Ljst$a;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    .line 3050
    :goto_1
    iget-object v0, v3, Ljst;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 170
    :cond_3
    const-string/jumbo v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    if-eqz v5, :cond_6

    .line 172
    const-string/jumbo v6, "access_token"

    iget-object v7, v0, Ljst$a;->c:Ljava/lang/String;

    .line 2074
    sget-boolean v2, Ljst;->d:Z

    if-nez v2, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2075
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2077
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 2079
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v10, v2, 0x2

    move v2, v1

    :goto_2
    if-ge v1, v10, :cond_5

    .line 2080
    mul-int/lit8 v11, v1, 0x2

    mul-int/lit8 v12, v1, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2081
    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 2083
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 2084
    xor-int/2addr v11, v12

    .line 2086
    int-to-char v11, v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2088
    add-int/lit8 v2, v2, 0x1

    .line 2089
    rem-int/2addr v2, v9

    .line 2079
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2092
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_6
    invoke-static {p1}, Ljtx;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 176
    invoke-static {v2, v1}, Ljtx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 177
    const-string/jumbo v2, "cb"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 179
    iget-object v0, v0, Ljst$a;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/connect/auth/AuthDialog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_7
    iget-object v2, v0, Ljst$a;->a:Ljuc;

    invoke-interface {v2, v1}, Ljuc;->a(Ljava/lang/Object;)V

    .line 183
    iget-object v0, v0, Ljst$a;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_1
    const-string/jumbo v1, "openSDK_LOG.AuthActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-->onCreate, uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    const-string/jumbo v2, "openSDK_LOG.AuthActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "-->onCreate, getIntent().getData() has exception! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1082
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1085
    invoke-static {v1}, Ljtx;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1086
    if-nez v1, :cond_3

    .line 1087
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 1091
    :cond_3
    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    const-string/jumbo v3, "openSDK_LOG.AuthActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-->handleActionUri, action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    if-nez v2, :cond_4

    .line 1094
    invoke-direct {p0, v1, v0}, Lcom/tencent/tauth/AuthActivity;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1095
    :cond_4
    const-string/jumbo v3, "shareToQQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "shareToQzone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "sendToMyComputer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "shareToTroopBar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1102
    :cond_5
    const-string/jumbo v0, "shareToQzone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Ljtu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "5.2.0"

    invoke-static {p0, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    .line 1106
    sget v0, Lcom/tencent/tauth/AuthActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 1107
    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 1108
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    .line 1109
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 1115
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1117
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1118
    sput-boolean v6, Lcom/tencent/connect/common/AssistActivity;->c:Z

    .line 1119
    invoke-virtual {p0, v0}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 1120
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 1121
    :cond_7
    const-string/jumbo v3, "addToQQFavorites"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1122
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1123
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1124
    const-string/jumbo v0, "key_action"

    const-string/jumbo v1, "action_share"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    invoke-static {v2}, Ljtv;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_8

    .line 1128
    check-cast v0, Ljuc;

    invoke-static {v3, v0}, Ljsw;->a(Landroid/content/Intent;Ljuc;)V

    .line 1130
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 1131
    :cond_9
    const-string/jumbo v3, "sharePrize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1132
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1134
    const-string/jumbo v0, "response"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    const-string/jumbo v0, ""

    .line 1138
    :try_start_1
    invoke-static {v1}, Ljtx;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1139
    const-string/jumbo v3, "activityid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1144
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1145
    const-string/jumbo v1, "sharePrize"

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1147
    const-string/jumbo v3, "activityid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1150
    :cond_a
    invoke-virtual {p0, v2}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 1151
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 1141
    :catch_1
    move-exception v1

    const-string/jumbo v1, "openSDK_LOG.AuthActivity"

    const-string/jumbo v3, "sharePrize parseJson has exception."

    invoke-static {v1, v3}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1153
    :cond_b
    invoke-direct {p0, v1, v0}, Lcom/tencent/tauth/AuthActivity;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
