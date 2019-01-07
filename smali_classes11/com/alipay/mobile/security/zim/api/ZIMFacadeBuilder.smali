.class public Lcom/alipay/mobile/security/zim/api/ZIMFacadeBuilder;
.super Ljava/lang/Object;
.source "ZIMFacadeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context Can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    new-instance v0, Lipx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lipx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zimId"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context Can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    new-instance v0, Lipx;

    invoke-direct {v0, p0, p1}, Lipx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
