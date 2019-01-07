.class Lcom/alibaba/sdk/android/utils/c$1;
.super Ljava/lang/Object;
.source "DataTracker.java"

# interfaces
.implements Lcom/ut/mini/IUTApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/utils/c;->a(Landroid/app/Application;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/sdk/android/utils/c;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/utils/c;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/sdk/android/utils/c$1;->b:Lcom/alibaba/sdk/android/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUTAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    new-instance v0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    const-string/jumbo v1, "24527540"

    const-string/jumbo v2, "56fc10fbe8c6ae7d0d895f49c4fb6838"

    invoke-direct {v0, v1, v2}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAliyunOsSystem()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isUTCrashHandlerDisable()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public isUTLogEnable()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/alibaba/sdk/android/utils/d;->c()Z

    move-result v0

    return v0
.end method
