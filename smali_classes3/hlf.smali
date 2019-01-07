.class public final Lhlf;
.super Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;
.source "DingDataProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;-><init>()V

    .line 30
    new-instance v0, Lhlf$1;

    invoke-direct {v0, p0}, Lhlf$1;-><init>(Lhlf;)V

    iput-object v0, p0, Lhlf;->mLoginService:Lcom/ali/user/enterprise/base/rpc/LoginService;

    .line 86
    return-void
.end method


# virtual methods
.method public final getLogService()Lcom/ali/user/enterprise/base/log/LogService;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lhlf$2;

    invoke-direct {v0, p0}, Lhlf$2;-><init>(Lhlf;)V

    return-object v0
.end method

.method public final getThreadService()Lcom/ali/user/enterprise/base/coordinator/ThreadService;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lhlf$3;

    invoke-direct {v0, p0}, Lhlf$3;-><init>(Lhlf;)V

    return-object v0
.end method
