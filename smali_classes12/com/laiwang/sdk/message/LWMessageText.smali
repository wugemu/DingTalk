.class public Lcom/laiwang/sdk/message/LWMessageText;
.super Lcom/laiwang/sdk/message/LWMessage;
.source "LWMessageText.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/laiwang/sdk/message/LWMessage;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgType:I

    .line 42
    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Ljaj;
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const-string/jumbo v0, "clientId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgAppKey:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "clientSecret"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgSecret:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "shareType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgShareType:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgContent:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "msgType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgType:I

    .line 62
    return-object p0
.end method

.method public bridge synthetic fromBundle(Landroid/os/Bundle;)Ljak;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/laiwang/sdk/message/LWMessageText;->fromBundle(Landroid/os/Bundle;)Ljaj;

    move-result-object v0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "toBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "clientSecret"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "shareType"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgShareType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "msgType"

    iget v2, p0, Lcom/laiwang/sdk/message/LWMessageText;->msgType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    return-object v0
.end method
