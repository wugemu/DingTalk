.class public Lcom/alipay/share/sdk/openapi/APAPIFactory;
.super Ljava/lang/Object;
.source "APAPIFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static createZFBApi(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/share/sdk/openapi/IAPApi;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/alipay/share/sdk/openapi/APApiImlV1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/share/sdk/openapi/APApiImlV1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createZFBApi(Landroid/content/Context;Ljava/lang/String;Z)Lcom/alipay/share/sdk/openapi/IAPApi;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "needSignatureCheck"    # Z

    .prologue
    .line 13
    new-instance v0, Lcom/alipay/share/sdk/openapi/APApiImlV1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/share/sdk/openapi/APApiImlV1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
