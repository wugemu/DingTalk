.class final Lcom/ali/user/enterprise/Login$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/Login;->init(Landroid/content/Context;Lcom/ali/user/enterprise/base/constant/LoginEnvType;Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/info/AppInfo;->init()V

    .line 64
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/session/ISession;->checkSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSessionListFromFile()Lcom/ali/user/enterprise/base/data/SessionList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-static {v0}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper;->sessionToModel(Lcom/ali/user/enterprise/base/session/ISession;)Lcom/ali/user/enterprise/base/data/SessionModel;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->putSessionModelToFile(Lcom/ali/user/enterprise/base/data/SessionModel;)V

    .line 69
    :cond_0
    return-void
.end method
