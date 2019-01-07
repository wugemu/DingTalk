.class public Lcom/laiwang/sdk/message/LWMessageMedia;
.super Lcom/laiwang/sdk/message/LWMessage;
.source "LWMessageMedia.java"


# instance fields
.field private description:Ljava/lang/String;

.field private duration:D

.field private extra:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private picture:Ljava/lang/String;

.field private playLink:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/laiwang/sdk/message/LWMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Ljaj;
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/laiwang/sdk/message/LWMessage;->fromBundle(Landroid/os/Bundle;)Ljaj;

    .line 55
    const-string/jumbo v0, "picture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->picture:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->description:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "thumbnail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->msgImageURL:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->extra:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "playLink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->playLink:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->duration:D

    .line 61
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->type:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public bridge synthetic fromBundle(Landroid/os/Bundle;)Ljak;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/laiwang/sdk/message/LWMessageMedia;->fromBundle(Landroid/os/Bundle;)Ljaj;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Double;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->duration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->playLink:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->description:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDuration(Ljava/lang/Double;)V
    .locals 2
    .param p1, "duration"    # Ljava/lang/Double;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->duration:D

    .line 97
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->extra:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->flag:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setPicture(Ljava/lang/String;)V
    .locals 0
    .param p1, "picture"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->picture:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPlayLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "playLink"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->playLink:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-super {p0}, Lcom/laiwang/sdk/message/LWMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "toBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "picture"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->picture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "thumbnail"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessageMedia;->getMessageImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "extra"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "playLink"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->playLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "duration"

    iget-wide v2, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->duration:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 48
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessageMedia;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v0
.end method
