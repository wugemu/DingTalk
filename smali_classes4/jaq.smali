.class public final Ljaq;
.super Ljava/lang/Object;
.source "LWAPIFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljaj;
    .locals 1
    .param p0, "msgContent"    # Ljava/lang/String;
    .param p1, "shareType"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/laiwang/sdk/message/LWMessageText;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessageText;-><init>()V

    .line 38
    .local v0, "lwMessageText":Lcom/laiwang/sdk/message/LWMessageText;
    invoke-virtual {v0, p0}, Lcom/laiwang/sdk/message/LWMessageText;->setMessageText(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/laiwang/sdk/message/LWMessageText;->setShareType(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Ljaj;
    .locals 3
    .param p0, "msgTitle"    # Ljava/lang/String;
    .param p1, "msgContent"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "msgPicture"    # Ljava/lang/String;
    .param p4, "msgDescription"    # Ljava/lang/String;
    .param p5, "msgThumbnail"    # Ljava/lang/String;
    .param p6, "msgExtra"    # Ljava/lang/String;
    .param p7, "msgPlaylink"    # Ljava/lang/String;
    .param p8, "msgSource"    # Ljava/lang/String;
    .param p9, "msgDuration"    # D
    .param p11, "msgFlag"    # Ljava/lang/String;
    .param p12, "shareType"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lcom/laiwang/sdk/message/LWMessageMedia;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessageMedia;-><init>()V

    .line 131
    .local v0, "lwMessageMedia":Lcom/laiwang/sdk/message/LWMessageMedia;
    invoke-virtual {v0, p0}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageTitle(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageText(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p3}, Lcom/laiwang/sdk/message/LWMessageMedia;->setPicture(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p4}, Lcom/laiwang/sdk/message/LWMessageMedia;->setDescription(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p6}, Lcom/laiwang/sdk/message/LWMessageMedia;->setExtra(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p7}, Lcom/laiwang/sdk/message/LWMessageMedia;->setPlayLink(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p7}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p5}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageImageURL(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p8}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMesssageSource(Ljava/lang/String;)V

    .line 140
    invoke-static {p9, p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/message/LWMessageMedia;->setDuration(Ljava/lang/Double;)V

    .line 141
    invoke-virtual {v0, p12}, Lcom/laiwang/sdk/message/LWMessageMedia;->setShareType(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p2}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageType(I)V

    .line 143
    invoke-virtual {v0, p11}, Lcom/laiwang/sdk/message/LWMessageMedia;->setFlag(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "laiwang.share.sdk.1111"

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageActiviy(Ljava/lang/String;)V

    .line 146
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljal;Ljava/lang/String;Ljava/lang/String;)Ljaj;
    .locals 2
    .param p0, "msgTitle"    # Ljava/lang/String;
    .param p1, "msgContent"    # Ljava/lang/String;
    .param p2, "msgChat"    # Ljava/lang/String;
    .param p3, "msgLinkUrl"    # Ljava/lang/String;
    .param p4, "lwmsgThumbImage"    # Ljal;
    .param p5, "msgSource"    # Ljava/lang/String;
    .param p6, "msgShareType"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessage;-><init>()V

    .line 89
    .local v0, "iMessageComponent":Lcom/laiwang/sdk/message/LWMessage;
    invoke-virtual {v0}, Lcom/laiwang/sdk/message/LWMessage;->isMessageComponent()V

    .line 90
    invoke-virtual {v0, p0}, Lcom/laiwang/sdk/message/LWMessage;->setMessageTitle(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p3}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/laiwang/sdk/message/LWMessage;->setMessageChat(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p5}, Lcom/laiwang/sdk/message/LWMessage;->setMesssageSource(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p6}, Lcom/laiwang/sdk/message/LWMessage;->setShareType(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p4}, Lcom/laiwang/sdk/message/LWMessage;->setImageThumb(Ljal;)V

    .line 100
    const-string/jumbo v1, "laiwang.share.sdk.1111"

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/message/LWMessage;->setMessageActiviy(Ljava/lang/String;)V

    .line 101
    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljal;
    .locals 2
    .param p0, "type"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 186
    new-instance v0, Ljal;

    invoke-direct {v0}, Ljal;-><init>()V

    .line 187
    .local v0, "lwmsgImage":Ljal;
    invoke-virtual {v0, p0}, Ljal;->a(I)V

    .line 188
    invoke-virtual {v0, p1}, Ljal;->a(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p2}, Ljal;->b(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljal;->a(Landroid/graphics/Bitmap;)V

    .line 191
    invoke-virtual {v0}, Ljal;->e()V

    .line 192
    invoke-virtual {v0}, Ljal;->f()V

    .line 194
    return-object v0
.end method
