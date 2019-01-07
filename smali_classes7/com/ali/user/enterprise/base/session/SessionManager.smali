.class public Lcom/ali/user/enterprise/base/session/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/session/ISession;


# static fields
.field private static final CLEAR_SESSION_ACTION:Ljava/lang/String; = "NOTIFY_CLEAR_SESSION"

.field public static final CURRENT_PROCESS:Ljava/lang/String; = "PROCESS_NAME"

.field private static DEBUG:Z = false

.field private static final NEW_SESSION_TAG:Ljava/lang/String; = "newSession"

.field public static final NOTIFY_SESSION_VALID:Ljava/lang/String; = "NOTIFY_SESSION_VALID"

.field private static final TAG:Ljava/lang/String; = "login.LoginSessionManager"

.field public static final USERINFO:Ljava/lang/String; = "userinfo"

.field private static final checkLock:Ljava/lang/Object;

.field private static instance:Lcom/ali/user/enterprise/base/session/SessionManager;

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;


# instance fields
.field private extJson:Ljava/lang/String;

.field private mAutoLoginToken:Ljava/lang/String;

.field private mBizType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCookie:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;",
            ">;"
        }
    .end annotation
.end field

.field private mCorpId:Ljava/lang/String;

.field private mEcode:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mExtraMap:Ljava/lang/String;

.field private mHavanaSsoTokenExpiredTime:J

.field private mHeadPicLink:Ljava/lang/String;

.field private mInjectCookieCount:I

.field private mIsCommentUsed:Z

.field public mLoginPhone:Ljava/lang/String;

.field private mLoginSite:I

.field private mLoginTime:J

.field private mNewSessionTag:Z

.field private mNick:Ljava/lang/String;

.field private mOldNick:Ljava/lang/String;

.field private mOldSid:Ljava/lang/String;

.field private mOldUserId:Ljava/lang/String;

.field private mSessionExpiredTime:J

.field private mShowNick:Ljava/lang/String;

.field private mSid:Ljava/lang/String;

.field private mSsoToken:Ljava/lang/String;

.field private mUidDigest:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private storage:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ali/user/enterprise/base/session/SessionManager;->DEBUG:Z

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->instance:Lcom/ali/user/enterprise/base/session/SessionManager;

    .line 1410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->checkLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    .line 106
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    .line 95
    iput-boolean v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    .line 113
    if-eqz p1, :cond_1

    .line 115
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 116
    .local v0, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/ali/user/enterprise/base/session/SessionManager;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    .line 122
    new-instance v1, Lcom/ali/user/enterprise/base/session/SessionManager$1;

    const-string/jumbo v2, "login-session-init"

    invoke-direct {v1, p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager$1;-><init>(Lcom/ali/user/enterprise/base/session/SessionManager;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Lcom/ali/user/enterprise/base/session/SessionManager$1;->start()V

    .line 166
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string/jumbo v1, "login.LoginSessionManager"

    const-string/jumbo v2, "new SessionManager "

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 56
    sput-object p0, Lcom/ali/user/enterprise/base/session/SessionManager;->receiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ali/user/enterprise/base/session/SessionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ali/user/enterprise/base/session/SessionManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ali/user/enterprise/base/session/SessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/ali/user/enterprise/base/session/SessionManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->clearMemoryData()V

    return-void
.end method

.method static synthetic access$300(Lcom/ali/user/enterprise/base/session/SessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/ali/user/enterprise/base/session/SessionManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initMemoryData()V

    return-void
.end method

.method private clearMemoryData()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSid:Ljava/lang/String;

    .line 223
    iput-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSessionExpiredTime:J

    .line 224
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEcode:Ljava/lang/String;

    .line 225
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNick:Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserName:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    .line 228
    iput-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    .line 229
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldSid:Ljava/lang/String;

    .line 231
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldNick:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldUserId:Ljava/lang/String;

    .line 233
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->extJson:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEmail:Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginSite:I

    .line 236
    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUidDigest:Ljava/lang/String;

    .line 238
    return-void
.end method

.method private clearWebviewCookie([Ljava/lang/String;)V
    .locals 12
    .param p1, "ssoDomainList"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1172
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v5, "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    const/4 v2, 0x0

    .local v2, "location":I
    :goto_0
    iget-object v7, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1174
    iget-object v7, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    .line 1176
    .local v0, "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    iget-object v7, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1177
    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v6

    .line 1178
    .local v6, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->expiresCookies(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)V

    .line 1179
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v7, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    const-string/jumbo v8, ".taobao.com"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1182
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1188
    .end local v0    # "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    :cond_1
    if-nez p1, :cond_2

    .line 1189
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSsoDomainList()[Ljava/lang/String;

    move-result-object p1

    .line 1191
    :cond_2
    if-eqz p1, :cond_4

    array-length v7, p1

    if-lez v7, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1192
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    .line 1194
    .local v1, "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    iget-object v3, v1, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1195
    .local v3, "originDomain":Ljava/lang/String;
    array-length v9, p1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_3

    aget-object v4, p1, v7

    .line 1196
    .local v4, "ssoDomain":Ljava/lang/String;
    iput-object v4, v1, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1197
    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v6

    .line 1198
    .restart local v6    # "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->expiresCookies(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)V

    .line 1200
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v10

    invoke-virtual {v1}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1206
    .end local v4    # "ssoDomain":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_3
    iput-object v3, v1, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    goto :goto_1

    .line 1210
    .end local v1    # "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .end local v3    # "originDomain":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeUTCookie()V

    .line 1211
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeWeitaoCookie()V

    .line 1212
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1213
    const-string/jumbo v7, "login.LoginSessionManager"

    const-string/jumbo v8, "injectCookie cookies is null"

    invoke-static {v7, v8}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_5
    iget-object v7, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1216
    return-void

    .restart local v1    # "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .restart local v3    # "originDomain":Ljava/lang/String;
    .restart local v4    # "ssoDomain":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ali/user/enterprise/base/session/SessionManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-class v1, Lcom/ali/user/enterprise/base/session/SessionManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "login.LoginSessionManager"

    const-string/jumbo v2, "SessionManager getInstance"

    invoke-static {v0, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    const-string/jumbo v0, "SessionManager"

    const-string/jumbo v2, "getInstance"

    const-string/jumbo v3, "getInstance"

    invoke-static {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->instance:Lcom/ali/user/enterprise/base/session/SessionManager;

    if-nez v0, :cond_1

    .line 179
    if-eqz p0, :cond_1

    .line 180
    new-instance v0, Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-direct {v0, p0}, Lcom/ali/user/enterprise/base/session/SessionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->instance:Lcom/ali/user/enterprise/base/session/SessionManager;

    .line 183
    :cond_1
    sget-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->instance:Lcom/ali/user/enterprise/base/session/SessionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initMemoryData()V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSid()Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getEcode()Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getLoginToken()Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getNick()Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSessionExpiredTime()J

    .line 210
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSsoToken()Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getUserId()Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getUserName()Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->isCommentTokenUsed()Z

    .line 214
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->isNewSessionTag()Z

    .line 215
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getExtJson()Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getLoginSite()I

    .line 217
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getUidDigest()Ljava/lang/String;

    .line 219
    return-void
.end method

.method private initSecurityGuardManager()V
    .locals 2

    .prologue
    .line 1401
    sget-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1402
    sget-object v1, Lcom/ali/user/enterprise/base/session/SessionManager;->checkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1403
    :try_start_0
    sget-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    sput-object v0, Lcom/ali/user/enterprise/base/session/SessionManager;->securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    .line 1406
    :cond_0
    monitor-exit v1

    .line 1408
    :cond_1
    return-void

    .line 1406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initStorage()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "userinfo"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    .line 190
    :cond_0
    return-void
.end method

.method private initStorage(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 194
    const-string/jumbo v0, "userinfo"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v3, "login.LoginSessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "context == null?"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", storage == null?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 1494
    sget-boolean v0, Lcom/ali/user/enterprise/base/session/SessionManager;->DEBUG:Z

    return v0
.end method

.method private removeUTCookie()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1310
    new-instance v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;-><init>()V

    .line 1311
    .local v0, "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    const-string/jumbo v1, "unb"

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->name:Ljava/lang/String;

    .line 1312
    const-string/jumbo v1, ".taobao.com"

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1313
    const-string/jumbo v1, "/"

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->path:Ljava/lang/String;

    .line 1314
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->value:Ljava/lang/String;

    .line 1315
    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->expiresCookies(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)V

    .line 1317
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private removeWeitaoCookie()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1327
    new-instance v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;-><init>()V

    .line 1328
    .local v0, "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    const-string/jumbo v1, "cookiej007"

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->name:Ljava/lang/String;

    .line 1329
    const-string/jumbo v1, ".jaeapp.com"

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1330
    const-string/jumbo v1, "/"

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->path:Ljava/lang/String;

    .line 1331
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->value:Ljava/lang/String;

    .line 1332
    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->expiresCookies(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)V

    .line 1334
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setOldNick(Ljava/lang/String;)V
    .locals 3
    .param p1, "nick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 376
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set OldNick="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldNick:Ljava/lang/String;

    .line 379
    const-string/jumbo v0, "oldnick"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private setOldSid(Ljava/lang/String;)V
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 312
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set OldSid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldSid:Ljava/lang/String;

    .line 315
    const-string/jumbo v0, "oldsid"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method


# virtual methods
.method public appendEventTrace(Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 810
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    const-string/jumbo v3, "login.LoginSessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "logEventTrace : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_1
    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "userinfo"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "eventTrace"

    const-string/jumbo v5, ""

    .line 799
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "oldapiRefer":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 801
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 802
    .local v0, "length":I
    const/16 v3, 0x200

    if-le v0, v3, :cond_3

    .line 803
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 804
    const-string/jumbo v3, "login.LoginSessionManager"

    const-string/jumbo v4, "eventTrace length > 512, subString to 512"

    invoke-static {v3, v4}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_2
    add-int/lit16 v3, v0, -0x200

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, "trace":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "eventTrace"

    invoke-virtual {p0, v3, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    .end local v2    # "trace":Ljava/lang/String;
    :cond_3
    move-object v2, p1

    .restart local v2    # "trace":Ljava/lang/String;
    goto :goto_1
.end method

.method public checkHavanaExpired()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getHavanaSsoTokenExpiredTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSessionValid()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSessionExpiredTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAutoLoginInfo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1037
    const-string/jumbo v0, ", clearAutoLoginInfo"

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->appendEventTrace(Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    const-string/jumbo v0, "login.LoginSessionManager"

    const-string/jumbo v1, "Clear AutoLoginInfo"

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    iput-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mAutoLoginToken:Ljava/lang/String;

    .line 1041
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setLoginToken(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public clearCookieManager()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1241
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getCookies()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    .line 1243
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSsoDomainList()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->clearWebviewCookie([Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method public clearSessionInfo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1009
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    const-string/jumbo v0, "login.LoginSessionManager"

    const-string/jumbo v1, "Clear sessionInfo"

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_0
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setSid(Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v0, "sessionExpiredTime"

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeStorage(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setEcode(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setNick(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setUserId(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setUserName(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setHeadPicLink(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setExtJson(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setEmail(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setOneTimeToken(Ljava/lang/String;)V

    .line 1021
    const-string/jumbo v0, "loginSite"

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeStorage(Ljava/lang/String;)V

    .line 1023
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->sendClearSessionBroadcast()Z

    .line 1034
    return-void

    .line 1025
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeUTCookie()V

    .line 1026
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeWeitaoCookie()V

    .line 1027
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1029
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "injectCookieNew"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearSessionOnlyCookie()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1296
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    const-string/jumbo v1, "login.LoginSessionManager"

    const-string/jumbo v2, "start clearSessionOnlyCookie"

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1301
    .local v0, "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1302
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 1303
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    .end local v0    # "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1415
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initSecurityGuardManager()V

    .line 1417
    sget-object v4, Lcom/ali/user/enterprise/base/session/SessionManager;->securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-eqz v4, :cond_0

    .line 1419
    :try_start_0
    sget-object v4, Lcom/ali/user/enterprise/base/session/SessionManager;->securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 1420
    .local v0, "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_2

    .line 1421
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1422
    .local v1, "decryptCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1443
    .end local v0    # "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v1    # "decryptCode":Ljava/lang/String;
    .end local p1    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local v0    # "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v1    # "decryptCode":Ljava/lang/String;
    .restart local p1    # "code":Ljava/lang/String;
    :cond_1
    move-object p1, v1

    .line 1425
    goto :goto_0

    .line 1428
    .end local v1    # "decryptCode":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerDecryptNull"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v3, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 1430
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 1431
    const-string/jumbo p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1433
    .end local v0    # "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    :catch_0
    move-exception v2

    .line 1434
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerDecryptException"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 1435
    .restart local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 1436
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 1437
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1438
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1465
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initSecurityGuardManager()V

    .line 1467
    sget-object v4, Lcom/ali/user/enterprise/base/session/SessionManager;->securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-eqz v4, :cond_0

    .line 1469
    :try_start_0
    sget-object v4, Lcom/ali/user/enterprise/base/session/SessionManager;->securityGuardManager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 1470
    .local v0, "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_2

    .line 1471
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1472
    .local v2, "encodeCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1490
    .end local v0    # "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v2    # "encodeCode":Ljava/lang/String;
    .end local p1    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local v0    # "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v2    # "encodeCode":Ljava/lang/String;
    .restart local p1    # "code":Ljava/lang/String;
    :cond_1
    move-object p1, v2

    .line 1475
    goto :goto_0

    .line 1478
    .end local v2    # "encodeCode":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerEncryptNull"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 1479
    .local v3, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 1480
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1482
    .end local v0    # "dataEncrypt":Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    :catch_0
    move-exception v1

    .line 1483
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerEncodeException"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 1484
    .restart local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 1485
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 1486
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 540
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mBizType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "biz_type"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "storageBizType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    const/4 v1, 0x0

    .line 547
    .end local v0    # "storageBizType":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 545
    .restart local v0    # "storageBizType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mBizType:Ljava/lang/String;

    .line 547
    .end local v0    # "storageBizType":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mBizType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 267
    const-string/jumbo v0, ""

    .line 268
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "storageData":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .end local v1    # "storageData":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    const-string/jumbo v2, "login.LoginSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getByKey, key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1219
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1220
    :cond_0
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "injectCookieNew"

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/utils/FileUtils;->readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "jsonData":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1222
    invoke-virtual {p0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1223
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1224
    const-string/jumbo v2, "login.LoginSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get cookie from storage:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_1
    :try_start_0
    const-class v2, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    invoke-static {v1, v2}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    .end local v1    # "jsonData":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    return-object v2

    .line 1227
    .restart local v1    # "jsonData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCorpId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 518
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCorpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "corpId"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "storageCorpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const/4 v1, 0x0

    .line 526
    .end local v0    # "storageCorpId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 523
    .restart local v0    # "storageCorpId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCorpId:Ljava/lang/String;

    .line 526
    .end local v0    # "storageCorpId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCorpId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayNick()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 406
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mShowNick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "show_nick"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "storageShowNick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const/4 v1, 0x0

    .line 414
    .end local v0    # "storageShowNick":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 410
    .restart local v0    # "storageShowNick":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mShowNick:Ljava/lang/String;

    .line 412
    .end local v0    # "storageShowNick":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get mShowNick="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mShowNick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mShowNick:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEcode()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 321
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEcode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "ecode"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "storageecode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const/4 v2, 0x0

    .line 331
    .end local v1    # "storageecode":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 326
    .restart local v1    # "storageecode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEcode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v1    # "storageecode":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEcode:Ljava/lang/String;

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 616
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "email"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "storageEmail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const/4 v1, 0x0

    .line 623
    .end local v0    # "storageEmail":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 621
    .restart local v0    # "storageEmail":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEmail:Ljava/lang/String;

    .line 623
    .end local v0    # "storageEmail":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEventTrace()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "trace":Ljava/lang/String;
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "eventTrace"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    :cond_0
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getEventTrace="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    if-eqz v0, :cond_1

    .line 785
    .end local v0    # "trace":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "trace":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getExtJson()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 592
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->extJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "loginServiceExt_json"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "storageExtJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const/4 v1, 0x0

    .line 600
    .end local v0    # "storageExtJson":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 597
    .restart local v0    # "storageExtJson":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->extJson:Ljava/lang/String;

    .line 600
    .end local v0    # "storageExtJson":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->extJson:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtraMap()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 561
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ea_extra_map"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "storageExtraM":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mExtraMap:Ljava/lang/String;

    .line 567
    .end local v0    # "storageExtraM":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mExtraMap:Ljava/lang/String;

    return-object v1
.end method

.method public getHavanaSsoTokenExpiredTime()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 701
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 702
    iget-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "havanaSsoTokenExpiredTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    .line 705
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get havanaSsoTokenExpiredTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_1
    iget-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    return-wide v0
.end method

.method public getHeadPicLink()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 842
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "headPicLink"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    .line 845
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get headPicLink="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectCookieCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 766
    iget v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mInjectCookieCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "injectCookieCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mInjectCookieCount:I

    .line 770
    :cond_0
    iget v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mInjectCookieCount:I

    return v0
.end method

.method public getLoginPhone()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 859
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "loginPhone"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "loginPhone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    const/4 v1, 0x0

    .line 867
    .end local v0    # "loginPhone":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 863
    .restart local v0    # "loginPhone":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginPhone:Ljava/lang/String;

    .line 865
    .end local v0    # "loginPhone":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get login phone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_2
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginPhone:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLoginSite()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 738
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "loginSite"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginSite:I

    .line 739
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get loginSite="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    iget v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginSite:I

    return v0
.end method

.method public getLoginTime()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 719
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 720
    iget-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "loginTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    .line 723
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get loginTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_1
    iget-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    return-wide v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 502
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mAutoLoginToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "auto_login"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "storageloginToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const/4 v1, 0x0

    .line 508
    .end local v0    # "storageloginToken":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 506
    .restart local v0    # "storageloginToken":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mAutoLoginToken:Ljava/lang/String;

    .line 508
    .end local v0    # "storageloginToken":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mAutoLoginToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNick()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 342
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "nick"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "storagenick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const/4 v1, 0x0

    .line 348
    .end local v0    # "storagenick":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 346
    .restart local v0    # "storagenick":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNick:Ljava/lang/String;

    .line 348
    .end local v0    # "storagenick":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNick:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOldNick()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 364
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldNick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "oldnick"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "storagenick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 372
    .end local v0    # "storagenick":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 368
    .restart local v0    # "storagenick":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldNick:Ljava/lang/String;

    .line 370
    .end local v0    # "storagenick":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get oldNick="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldNick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldNick:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOldSid()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 300
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldSid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "oldsid"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "storageOldSid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x0

    .line 308
    .end local v0    # "storageOldSid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 304
    .restart local v0    # "storageOldSid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldSid:Ljava/lang/String;

    .line 306
    .end local v0    # "storageOldSid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get OldSid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldSid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldSid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOldUserId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 482
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "olduserid"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "storageuserId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const/4 v1, 0x0

    .line 490
    .end local v0    # "storageuserId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 486
    .restart local v0    # "storageuserId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldUserId:Ljava/lang/String;

    .line 488
    .end local v0    # "storageuserId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOneTimeToken()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "oneTimeToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->checkHavanaExpired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "havanaSsoToken"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "storageOneTimeToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    invoke-virtual {p0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .end local v1    # "storageOneTimeToken":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSessionExpiredTime()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 683
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 684
    iget-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSessionExpiredTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sessionExpiredTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSessionExpiredTime:J

    .line 687
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get sessionExpiredTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSessionExpiredTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_1
    iget-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSessionExpiredTime:J

    return-wide v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 280
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sid"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "storageSid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 286
    .end local v0    # "storageSid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 284
    .restart local v0    # "storageSid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSid:Ljava/lang/String;

    .line 286
    .end local v0    # "storageSid":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSsoDomainList()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 820
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ssoDomainList"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "domainsStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 824
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 826
    .end local v0    # "domainsStr":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 580
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ssoToken"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "storagessoToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSsoToken:Ljava/lang/String;

    .line 586
    .end local v0    # "storagessoToken":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSsoToken:Ljava/lang/String;

    return-object v1
.end method

.method public getUidDigest()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 429
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUidDigest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sessionKey"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "storageSessionKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const/4 v1, 0x0

    .line 439
    .end local v0    # "storageSessionKey":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 434
    .restart local v0    # "storageSessionKey":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUidDigest:Ljava/lang/String;

    .line 436
    .end local v0    # "storageSessionKey":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get sessionKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUidDigest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUidDigest:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 452
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userId"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "storageuserId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    .end local v0    # "storageuserId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 456
    .restart local v0    # "storageuserId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    .line 458
    .end local v0    # "storageuserId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    const-string/jumbo v2, "login.LoginSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    goto :goto_0

    .line 464
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->clearSessionInfo()V

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 384
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "username"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "storageuserName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const/4 v1, 0x0

    .line 392
    .end local v0    # "storageuserName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 388
    .restart local v0    # "storageuserName":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserName:Ljava/lang/String;

    .line 390
    .end local v0    # "storageuserName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get userName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserName:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p1, "cookies"    # [Ljava/lang/String;
    .param p2, "ssoDomainList"    # [Ljava/lang/String;

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_9

    .line 1086
    if-eqz p1, :cond_b

    .line 1087
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1088
    const-string/jumbo v11, "login.LoginSessionManager"

    const-string/jumbo v12, "injectCookie cookies != null"

    invoke-static {v11, v12}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v9, "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v3, p1, v11

    .line 1092
    .local v3, "cookie":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1093
    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->parseCookie(Ljava/lang/String;)Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    move-result-object v2

    .line 1094
    .local v2, "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    invoke-static {v2}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v10

    .line 1095
    .local v10, "url":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, "cookieStr":Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1097
    const-string/jumbo v13, "login.LoginSessionManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "add cookie: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v13

    invoke-virtual {v13, v10, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v13, v2, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    const-string/jumbo v14, ".taobao.com"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1102
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    if-eqz v13, :cond_3

    .line 1106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    .end local v2    # "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .end local v4    # "cookieStr":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1112
    .end local v3    # "cookie":Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_5

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSsoDomainList()[Ljava/lang/String;

    move-result-object p2

    .line 1115
    :cond_5
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    array-length v11, v0

    if-lez v11, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1116
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    .line 1118
    .local v3, "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    iget-object v6, v3, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1119
    .local v6, "originDomain":Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v13, v0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_7

    aget-object v7, p2, v11

    .line 1120
    .local v7, "ssoDomain":Ljava/lang/String;
    iput-object v7, v3, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1121
    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v10

    .line 1123
    .restart local v10    # "url":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1124
    .restart local v4    # "cookieStr":Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1125
    const-string/jumbo v14, "login.LoginSessionManager"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "add cookies to domain:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", cookie = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v14

    invoke-virtual {v14, v10, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1129
    .end local v4    # "cookieStr":Ljava/lang/String;
    .end local v7    # "ssoDomain":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_7
    iput-object v6, v3, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1084
    .end local v3    # "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .end local v6    # "originDomain":Ljava/lang/String;
    .end local v9    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1132
    .restart local v9    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->setSsoDomainList([Ljava/lang/String;)V

    .line 1133
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_a

    .line 1134
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/CookieManager;->flush()V

    .line 1141
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "injectCookieNew"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-static {v13}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    .end local v9    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    :cond_9
    :goto_4
    monitor-exit p0

    return-void

    .line 1137
    .restart local v9    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v5

    .line 1138
    .local v5, "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_3

    .line 1146
    .end local v5    # "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    .end local v9    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getCookies()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    .line 1148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1149
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->clearWebviewCookie([Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "injectCookieNew"

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1156
    :cond_c
    :try_start_3
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1157
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 1158
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_d

    .line 1159
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/CookieManager;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1164
    :catch_0
    move-exception v8

    .line 1165
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1161
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v5

    .line 1162
    .restart local v5    # "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public declared-synchronized injectExternalCookies([Ljava/lang/String;)V
    .locals 9
    .param p1, "externalCookies"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1056
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 1057
    if-eqz p1, :cond_3

    .line 1058
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, p1, v4

    .line 1059
    .local v2, "externalCookie":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1060
    invoke-static {v2}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->parseCookie(Ljava/lang/String;)Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    move-result-object v0

    .line 1061
    .local v0, "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v3

    .line 1062
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "cookieStr":Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1064
    const-string/jumbo v6, "login.LoginSessionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "add external cookie: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v6, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 1067
    iget-object v6, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v0    # "cook":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .end local v1    # "cookieStr":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1071
    .end local v2    # "externalCookie":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1072
    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "injectCookieNew"

    iget-object v6, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCookie:Ljava/util/List;

    invoke-static {v6}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ali/user/enterprise/base/utils/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_3
    monitor-exit p0

    return-void

    .line 1056
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public isCommentTokenUsed()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 658
    iget-boolean v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mIsCommentUsed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "commentTokenUsed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mIsCommentUsed:Z

    .line 661
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get isCommentUsed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mIsCommentUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_1
    iget-boolean v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mIsCommentUsed:Z

    return v0
.end method

.method public isNewSessionTag()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 879
    iget-boolean v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 880
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "newSession"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    .line 881
    iget-boolean v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    if-nez v2, :cond_0

    .line 883
    :try_start_0
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userId"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "storageuserId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 885
    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->oldDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "userid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v0    # "storageuserId":Ljava/lang/String;
    .end local v1    # "userid":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 896
    const-string/jumbo v2, "login.LoginSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get isNewSessionTag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_1
    iget-boolean v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    return v2

    .line 891
    :catch_0
    move-exception v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->setNewSessionTag(Z)V

    goto :goto_0
.end method

.method public oldDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1449
    :try_start_0
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ali/user/enterprise/base/session/encode/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/encode/Base64;->decodeBase64([B)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/session/encode/DESede;->decryptMode([B[B)[B

    move-result-object v1

    .line 1450
    .local v1, "srcBytes":[B
    new-instance p1, Ljava/lang/String;

    .end local p1    # "code":Ljava/lang/String;
    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1460
    .end local v1    # "srcBytes":[B
    :cond_0
    :goto_0
    return-object p1

    .line 1453
    :catch_0
    move-exception v2

    const-string/jumbo p1, ""

    goto :goto_0

    .line 1454
    :catch_1
    move-exception v0

    .line 1456
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1457
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;JJLjava/lang/String;)V
    .locals 8
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "ecode"    # Ljava/lang/String;
    .param p3, "nick"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "headPicLink"    # Ljava/lang/String;
    .param p6, "autoLoginToken"    # Ljava/lang/String;
    .param p7, "ssoToken"    # Ljava/lang/String;
    .param p8, "oneTimeToken"    # Ljava/lang/String;
    .param p9, "havanaSsoExpire"    # J
    .param p11, "externalCookies"    # [Ljava/lang/String;
    .param p12, "cookies"    # [Ljava/lang/String;
    .param p13, "domainList"    # [Ljava/lang/String;
    .param p14, "expires"    # J
    .param p16, "loginTime"    # J
    .param p18, "loginPhone"    # Ljava/lang/String;

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 927
    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_4

    .line 928
    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 931
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getOldNick()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 932
    :cond_0
    iput-object p5, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    .line 933
    const-string/jumbo v4, "headPicLink"

    invoke-interface {v2, v4, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 936
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 937
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 938
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "sdk onLoginSuccess, saveSession. sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", nick="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", autologintoken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 939
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", ssotoken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", expiresTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-wide/from16 v0, p14

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 940
    const-string/jumbo v4, "login.LoginSessionManager"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSid:Ljava/lang/String;

    .line 944
    const-string/jumbo v4, "sid"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 945
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldSid:Ljava/lang/String;

    .line 946
    const-string/jumbo v4, "oldsid"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 947
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSessionExpiredTime:J

    .line 948
    const-string/jumbo v4, "sessionExpiredTime"

    move-wide/from16 v0, p14

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 949
    iput-object p2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEcode:Ljava/lang/String;

    .line 950
    const-string/jumbo v4, "ecode"

    invoke-virtual {p0, p2}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 951
    iput-object p4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    .line 952
    const-string/jumbo v4, "userId"

    invoke-virtual {p0, p4}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 953
    iput-object p4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldUserId:Ljava/lang/String;

    .line 954
    const-string/jumbo v4, "olduserid"

    invoke-virtual {p0, p4}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 955
    iput-object p3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNick:Ljava/lang/String;

    .line 956
    const-string/jumbo v4, "nick"

    invoke-interface {v2, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 957
    iput-object p3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldNick:Ljava/lang/String;

    .line 958
    const-string/jumbo v4, "oldnick"

    invoke-interface {v2, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 959
    iput-object p3, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserName:Ljava/lang/String;

    .line 960
    const-string/jumbo v4, "username"

    invoke-interface {v2, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 961
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    .line 962
    const-string/jumbo v4, "loginTime"

    move-wide/from16 v0, p16

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 964
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginPhone:Ljava/lang/String;

    .line 965
    const-string/jumbo v4, "loginPhone"

    iget-object v5, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginPhone:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 969
    iput-object p6, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mAutoLoginToken:Ljava/lang/String;

    .line 970
    const-string/jumbo v4, "auto_login"

    invoke-virtual {p0, p6}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 971
    const-string/jumbo v4, ", sdkLogin save auto"

    invoke-virtual {p0, v4}, Lcom/ali/user/enterprise/base/session/SessionManager;->appendEventTrace(Ljava/lang/String;)V

    .line 975
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", delta="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, p14, p16

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ali/user/enterprise/base/session/SessionManager;->appendEventTrace(Ljava/lang/String;)V

    .line 977
    const-string/jumbo v4, "ssoToken"

    invoke-virtual {p0, p7}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 980
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 981
    const-string/jumbo v4, "havanaSsoToken"

    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 982
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p9, v4

    if-nez v4, :cond_8

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x384

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    .line 986
    :goto_3
    const-string/jumbo v4, "havanaSsoTokenExpiredTime"

    move-wide/from16 v0, p9

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 989
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 991
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    move-object/from16 v0, p11

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->injectExternalCookies([Ljava/lang/String;)V

    .line 994
    :try_start_0
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :goto_4
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->sendClearSessionBroadcast()Z

    .line 1001
    return-void

    .line 939
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 973
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    const-string/jumbo v4, ", sdkLogin save auto=null"

    invoke-virtual {p0, v4}, Lcom/ali/user/enterprise/base/session/SessionManager;->appendEventTrace(Ljava/lang/String;)V

    goto :goto_2

    .line 985
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long v4, v4, p9

    iput-wide v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    goto :goto_3

    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v4

    goto :goto_4
.end method

.method public oneTimeTokenExpired()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 258
    .local v0, "current":J
    iget-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x384

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 259
    const/4 v2, 0x0

    .line 261
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public recoverCookie()Z
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1251
    iget-object v9, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 1253
    .local v2, "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v7, "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getCookies()Ljava/util/List;

    move-result-object v3

    .line 1256
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 1257
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    .line 1258
    .local v0, "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    iget-object v8, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1259
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "cookieStr":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v10, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    const-string/jumbo v11, ".taobao.com"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1262
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1268
    .end local v0    # "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .end local v1    # "cookieStr":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->getSsoDomainList()[Ljava/lang/String;

    move-result-object v6

    .line 1270
    .local v6, "ssoDomainList":[Ljava/lang/String;
    if-eqz v6, :cond_4

    array-length v9, v6

    if-lez v9, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1271
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;

    .line 1273
    .restart local v0    # "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    iget-object v4, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1274
    .local v4, "originDomain":Ljava/lang/String;
    array-length v11, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_3

    aget-object v5, v6, v9

    .line 1275
    .local v5, "ssoDomain":Ljava/lang/String;
    iput-object v5, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    .line 1276
    invoke-static {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookieUtils;->getHttpDomin(Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;)Ljava/lang/String;

    move-result-object v8

    .line 1278
    .restart local v8    # "url":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    .restart local v1    # "cookieStr":Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1280
    const-string/jumbo v12, "login.LoginSessionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "add cookies to domain:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", cookie = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v12

    invoke-virtual {v12, v8, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1285
    .end local v1    # "cookieStr":Ljava/lang/String;
    .end local v5    # "ssoDomain":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_3
    iput-object v4, v0, Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;->domain:Ljava/lang/String;

    goto :goto_1

    .line 1288
    .end local v0    # "cookie":Lcom/ali/user/enterprise/base/session/cookies/LoginCookie;
    .end local v4    # "originDomain":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1289
    const/4 v9, 0x1

    .line 1291
    .end local v6    # "ssoDomainList":[Ljava/lang/String;
    :goto_3
    return v9

    :cond_5
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public removeEventTrace()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 813
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    const-string/jumbo v0, "login.LoginSessionManager"

    const-string/jumbo v1, "removeEventTrace"

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_0
    const-string/jumbo v0, "eventTrace"

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeStorage(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public removeStorage(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1391
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 1392
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1394
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1395
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1397
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public saveStorage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 1377
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1379
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1383
    iget-boolean v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    if-nez v1, :cond_0

    .line 1384
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->setNewSessionTag(Z)V

    .line 1387
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public saveStorage(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1361
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 1362
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1363
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1364
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1368
    iget-boolean v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    if-nez v1, :cond_0

    .line 1369
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->setNewSessionTag(Z)V

    .line 1372
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public saveStorage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 1343
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1344
    if-nez p2, :cond_1

    .line 1345
    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->removeStorage(Ljava/lang/String;)V

    .line 1353
    :goto_0
    iget-boolean v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    if-nez v1, :cond_0

    .line 1354
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->setNewSessionTag(Z)V

    .line 1357
    :cond_0
    return-void

    .line 1347
    :cond_1
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1348
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public sendClearSessionBroadcast()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1045
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "NOTIFY_CLEAR_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "PROCESS_NAME"

    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ali/user/enterprise/base/thread/LoginThreadHelper;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1049
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    const-string/jumbo v1, "login.LoginSessionManager"

    const-string/jumbo v2, "sendBroadcast: CLEAR_SESSION_ACTION"

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 551
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBizType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mBizType:Ljava/lang/String;

    .line 555
    const-string/jumbo v0, "biz_type"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public setCommentTokenUsed(Z)V
    .locals 4
    .param p1, "commentTokenUsed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 668
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set commentTokenUsed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    iput-boolean p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mIsCommentUsed:Z

    .line 671
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 672
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 674
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "commentTokenUsed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 675
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 680
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 678
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setCorpId(Ljava/lang/String;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 530
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCorpId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mCorpId:Ljava/lang/String;

    .line 534
    const-string/jumbo v0, "corpId"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public setDisplayNick(Ljava/lang/String;)V
    .locals 3
    .param p1, "showNick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 419
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set mShowNick="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mShowNick:Ljava/lang/String;

    .line 422
    const-string/jumbo v0, "show_nick"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setEcode(Ljava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEcode:Ljava/lang/String;

    .line 337
    const-string/jumbo v0, "ecode"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 627
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mEmail:Ljava/lang/String;

    .line 628
    const-string/jumbo v0, "email"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public setExtJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 604
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->extJson:Ljava/lang/String;

    .line 605
    const-string/jumbo v0, "loginServiceExt_json"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public setExtraMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "map"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 571
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setExtraMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mExtraMap:Ljava/lang/String;

    .line 575
    const-string/jumbo v0, "ea_extra_map"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public setHavanaSsoTokenExpiredTime(J)V
    .locals 5
    .param p1, "havanaSsoExpiredTime"    # J

    .prologue
    .line 712
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set havanaSsoTokenExpiredTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    iput-wide p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    .line 715
    const-string/jumbo v0, "havanaSsoTokenExpiredTime"

    iget-wide v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHavanaSsoTokenExpiredTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;J)V

    .line 716
    return-void
.end method

.method public setHeadPicLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "headPic"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 871
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set setHeadPicLink="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    .line 874
    const-string/jumbo v0, "headPicLink"

    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mHeadPicLink:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public setInjectCookieCount(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 756
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set session count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_0
    iput p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mInjectCookieCount:I

    .line 759
    const-string/jumbo v0, "injectCookieCount"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;I)V

    .line 760
    return-void
.end method

.method public setLoginPhone(Ljava/lang/String;)V
    .locals 3
    .param p1, "loginPhone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 851
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set loginPhone="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginPhone:Ljava/lang/String;

    .line 854
    const-string/jumbo v0, "loginPhone"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method public setLoginSite(I)V
    .locals 3
    .param p1, "site"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 747
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set LoginSite = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_0
    iput p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginSite:I

    .line 751
    const-string/jumbo v0, "loginSite"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;I)V

    .line 752
    return-void
.end method

.method public setLoginTime(J)V
    .locals 3
    .param p1, "loginTime"    # J

    .prologue
    .line 729
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set loginTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    iput-wide p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mLoginTime:J

    .line 732
    const-string/jumbo v0, "loginTime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;J)V

    .line 733
    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "loginToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 513
    const-string/jumbo v0, "auto_login"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public setNewSessionTag(Z)V
    .locals 4
    .param p1, "newSessionTag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 901
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setNewSessionTag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_0
    iput-boolean p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNewSessionTag:Z

    .line 904
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/session/SessionManager;->initStorage()V

    .line 905
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 907
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "newSession"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 908
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 909
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 913
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 911
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 3
    .param p1, "nick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 353
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set nick="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mNick:Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "nick"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-direct {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->setOldNick(Ljava/lang/String;)V

    .line 360
    :cond_1
    return-void
.end method

.method public setOldUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "oldUserId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 494
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setOldUserId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mOldUserId:Ljava/lang/String;

    .line 497
    const-string/jumbo v0, "olduserid"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public setOneTimeToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "oneTimeToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 648
    const-string/jumbo v0, "havanaSsoToken"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public setSessionExpiredTime(J)V
    .locals 3
    .param p1, "sessionExpiredTime"    # J

    .prologue
    .line 693
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set sessionExpiredTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    iput-wide p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSessionExpiredTime:J

    .line 696
    const-string/jumbo v0, "sessionExpiredTime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;J)V

    .line 697
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 291
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set sid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSid:Ljava/lang/String;

    .line 294
    const-string/jumbo v0, "sid"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->setOldSid(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public setSsoDomainList([Ljava/lang/String;)V
    .locals 4
    .param p1, "ssoDomainList"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 830
    const-string/jumbo v0, ""

    .line 831
    .local v0, "domainsStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 832
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 835
    :cond_0
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    const-string/jumbo v1, "login.LoginSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setSsoDomainList="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_1
    const-string/jumbo v1, "ssoDomainList"

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssoToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 610
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mSsoToken:Ljava/lang/String;

    .line 611
    const-string/jumbo v0, "ssoToken"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public setUidDigest(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 443
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set sessionKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUidDigest:Ljava/lang/String;

    .line 447
    const-string/jumbo v0, "sessionKey"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 471
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserId:Ljava/lang/String;

    .line 474
    const-string/jumbo v0, "userId"

    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    invoke-virtual {p0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->setOldUserId(Ljava/lang/String;)V

    .line 478
    :cond_1
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 397
    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string/jumbo v0, "login.LoginSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set userName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager;->mUserName:Ljava/lang/String;

    .line 400
    const-string/jumbo v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/enterprise/base/session/SessionManager;->saveStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method
