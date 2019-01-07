.class public Lcom/ali/user/enterprise/Login;
.super Ljava/lang/Object;
.source "Login.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "login.api"

.field private static loginTask:Landroid/os/AsyncTask;

.field private static mLock:Ljava/lang/Object;

.field private static transient mLoginPatterns:[Ljava/util/regex/Pattern;

.field private static transient mLogoutPatterns:[Ljava/util/regex/Pattern;

.field public static session:Lcom/ali/user/enterprise/base/session/ISession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/enterprise/Login;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSessionValid()Z
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->checkSessionValid()Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dingLogin(Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 3
    .param p0, "loginCallback"    # Lcom/ali/user/enterprise/login/LoginCallback;

    .prologue
    .line 77
    const-string/jumbo v0, "Login.directLogin"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/ali/user/enterprise/Login$2;

    invoke-direct {v0, p0}, Lcom/ali/user/enterprise/Login$2;-><init>(Lcom/ali/user/enterprise/login/LoginCallback;)V

    sput-object v0, Lcom/ali/user/enterprise/Login;->loginTask:Landroid/os/AsyncTask;

    .line 86
    new-instance v0, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;-><init>()V

    sget-object v1, Lcom/ali/user/enterprise/Login;->loginTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static getAlipayLoginId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    sget-object v4, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v4, :cond_0

    .line 204
    sget-object v4, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/session/ISession;->getExtJson()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "ext":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 207
    .local v3, "extJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    .line 208
    const-string/jumbo v4, "alipayLoginId"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "alipayLoginId":Ljava/lang/String;
    invoke-static {v0}, Lcom/ali/user/enterprise/Login;->hideAccount(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 216
    .end local v0    # "alipayLoginId":Ljava/lang/String;
    .end local v3    # "extJson":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v4

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public static getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getBizType()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getCorpId()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getDisplayNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getDisplayNick()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getEcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getEcode()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getHeadPicLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getHeadPicLink()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getLoginPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v1, :cond_1

    .line 251
    sget-object v1, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v1}, Lcom/ali/user/enterprise/base/session/ISession;->getLoginPhone()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "loginPhone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string/jumbo v1, ""

    .line 258
    .end local v0    # "loginPhone":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 255
    .restart local v0    # "loginPhone":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ali/user/enterprise/Login;->hideAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 258
    .end local v0    # "loginPhone":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getLoginSite()I
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getLoginSite()I

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLoginToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getNick()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getOldUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getOldUserId()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getOneTimeToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getOneTimeToken()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getSid()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getSnsNick()Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    sget-object v3, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v3, :cond_0

    .line 221
    sget-object v3, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v3}, Lcom/ali/user/enterprise/base/session/ISession;->getExtJson()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "ext":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 224
    .local v2, "extJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 225
    const-string/jumbo v3, "taobaoNickname"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 231
    .end local v2    # "extJson":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v3

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static hideAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    const-string/jumbo v3, ""

    .line 285
    :cond_0
    :goto_0
    return-object v3

    .line 265
    :cond_1
    move-object v3, p0

    .line 266
    .local v3, "hidedAccount":Ljava/lang/String;
    const-string/jumbo v6, "@"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 267
    const-string/jumbo v6, "@"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 268
    .local v4, "index":I
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "beforeString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "hehindString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_2

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "***"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 273
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "***"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    goto :goto_0

    .end local v0    # "beforeString":Ljava/lang/String;
    .end local v2    # "hehindString":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_3
    const-string/jumbo v6, "1\\d{10}"

    invoke-virtual {p0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 276
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 277
    .restart local v0    # "beforeString":Ljava/lang/String;
    const/4 v6, 0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2    # "hehindString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "****"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    goto/16 :goto_0

    .end local v0    # "beforeString":Ljava/lang/String;
    .end local v2    # "hehindString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_0

    .line 280
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "head":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "tail":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "***"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/ali/user/enterprise/base/constant/LoginEnvType;Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "envType"    # Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    .param p2, "dataProvider"    # Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;

    .prologue
    .line 50
    const-class v1, Lcom/ali/user/enterprise/Login;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "Login.init"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 51
    if-nez p2, :cond_0

    .line 52
    const-string/jumbo v0, "login.api"

    const-string/jumbo v2, "Login init error, data provider cannot be null"

    invoke-static {v0, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit v1

    return-void

    .line 56
    :cond_0
    :try_start_1
    invoke-virtual {p2, p0}, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->setContext(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1}, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->getSdkEnvType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;->setEnvType(I)V

    .line 58
    invoke-static {p2}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->setDataProvider(Lcom/ali/user/enterprise/base/provider/IDataProvider;)V

    .line 60
    invoke-static {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/enterprise/base/session/SessionManager;

    move-result-object v0

    sput-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    .line 61
    new-instance v0, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;-><init>()V

    new-instance v2, Lcom/ali/user/enterprise/Login$1;

    invoke-direct {v2}, Lcom/ali/user/enterprise/Login$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isLoginUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 318
    :try_start_0
    invoke-static {p0}, Lcom/ali/user/enterprise/Login;->isLoginUrlInner(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 322
    :goto_0
    return v0

    .line 320
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Event_isLoginUrl_Fail"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLoginUrlInner(Ljava/lang/String;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v5

    .line 293
    :cond_1
    const-string/jumbo v6, "sdkInterceptType=skip"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    sget-object v6, Lcom/ali/user/enterprise/Login;->mLoginPatterns:[Ljava/util/regex/Pattern;

    if-nez v6, :cond_2

    invoke-static {}, Lcom/ali/user/enterprise/base/constant/LoginUrlConstants;->getLoginUrls()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 298
    invoke-static {}, Lcom/ali/user/enterprise/base/constant/LoginUrlConstants;->getLoginUrls()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "[;]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "loginUrls":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [Ljava/util/regex/Pattern;

    sput-object v6, Lcom/ali/user/enterprise/Login;->mLoginPatterns:[Ljava/util/regex/Pattern;

    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v6, Lcom/ali/user/enterprise/Login;->mLoginPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v6

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 301
    sget-object v6, Lcom/ali/user/enterprise/Login;->mLoginPatterns:[Ljava/util/regex/Pattern;

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    aput-object v7, v6, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "loginUrls":[Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/ali/user/enterprise/Login;->mLoginPatterns:[Ljava/util/regex/Pattern;

    array-length v8, v7

    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 306
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 307
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 309
    const/4 v5, 0x1

    goto :goto_0

    .line 305
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public static isLogoutUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 351
    :try_start_0
    invoke-static {p0}, Lcom/ali/user/enterprise/Login;->isLogoutUrlInner(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 355
    :goto_0
    return v0

    .line 353
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Event_isLoginUrl_Fail"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLogoutUrlInner(Ljava/lang/String;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 327
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v5

    .line 331
    :cond_1
    sget-object v6, Lcom/ali/user/enterprise/Login;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    if-nez v6, :cond_2

    invoke-static {}, Lcom/ali/user/enterprise/base/constant/LoginUrlConstants;->getLogoutUrls()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 332
    invoke-static {}, Lcom/ali/user/enterprise/base/constant/LoginUrlConstants;->getLogoutUrls()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "[;]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "logoutUrls":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [Ljava/util/regex/Pattern;

    sput-object v6, Lcom/ali/user/enterprise/Login;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v6, Lcom/ali/user/enterprise/Login;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v6

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 335
    sget-object v6, Lcom/ali/user/enterprise/Login;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    aput-object v7, v6, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "logoutUrls":[Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/ali/user/enterprise/Login;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    array-length v8, v7

    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 339
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 340
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 342
    const/4 v5, 0x1

    goto :goto_0

    .line 338
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public static logout()V
    .locals 3

    .prologue
    .line 104
    const-string/jumbo v0, "Login.logout"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;-><init>()V

    new-instance v1, Lcom/ali/user/enterprise/Login$4;

    invoke-direct {v1}, Lcom/ali/user/enterprise/Login$4;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static multiLogin(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V
    .locals 3
    .param p0, "loginParam"    # Lcom/ali/user/enterprise/base/data/LoginParam;
    .param p1, "loginCallback"    # Lcom/ali/user/enterprise/login/MultiLoginCallback;

    .prologue
    .line 91
    const-string/jumbo v0, "Login.directLogin"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/ali/user/enterprise/Login$3;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/enterprise/Login$3;-><init>(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V

    sput-object v0, Lcom/ali/user/enterprise/Login;->loginTask:Landroid/os/AsyncTask;

    .line 100
    new-instance v0, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;-><init>()V

    sget-object v1, Lcom/ali/user/enterprise/Login;->loginTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/enterprise/base/coordinator/CoordinatorWrapper;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method
