.class public Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;
.super Lcom/alipay/share/sdk/openapi/BaseReq;
.source "SendMessageToZFB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/share/sdk/openapi/SendMessageToZFB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APSDK.SendToZFB.Req"

.field public static final ZFBSceneSession:I = 0x0

.field public static final ZFBSceneTimeLine:I = 0x1


# instance fields
.field public message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

.field public scene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/share/sdk/openapi/BaseReq;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/share/sdk/openapi/BaseReq;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method


# virtual methods
.method final checkArgs()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "APSDK.SendToZFB.Req"

    const-string/jumbo v1, "checkArgs fail ,message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-virtual {v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alipay/share/sdk/openapi/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p1}, Lcom/alipay/share/sdk/openapi/APMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/alipay/share/sdk/openapi/APMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    .line 57
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    .line 58
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alipay/share/sdk/openapi/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-static {v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage$Builder;->toBundle(Lcom/alipay/share/sdk/openapi/APMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 63
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    return-void
.end method
