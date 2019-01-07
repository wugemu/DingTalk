.class public Lcom/uc/webview/export/cyclone/UCDex;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUCDex()Lcom/uc/webview/export/cyclone/service/UCDex;
    .locals 3

    .prologue
    .line 16
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCDex;

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCService;->initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/cyclone/service/UCDex;

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x7e3

    const-string/jumbo v2, "The implement of UCDex service is not registered."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCDex;->getUCDex()Lcom/uc/webview/export/cyclone/service/UCDex;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/cyclone/service/UCDex;->run()V

    .line 27
    return-void
.end method
