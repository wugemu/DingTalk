.class public Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;
.super Ljava/lang/Object;
.source "WeiXinExecutor.java"


# static fields
.field private static final THUMB_SIZE:I = 0x96

.field private static final TIMELINE_SUPPORTED_VERSION:I = 0x21020001


# instance fields
.field private mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mConstants"    # Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getWXAppID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 50
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getWXAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 51
    return-void
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public callback(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 2
    .param p1, "resp"    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 424
    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    :pswitch_0
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 444
    return-void

    .line 426
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onSuccess()V

    goto :goto_0

    .line 431
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onCancel()V

    goto :goto_0

    .line 436
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doShareAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "extInfo"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "isTimeLine"    # Z
    .param p6, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x96

    const/4 v3, 0x1

    .line 108
    iput-object p6, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 109
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;-><init>()V

    .line 110
    .local v0, "appdata":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 113
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 114
    .local v1, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    invoke-static {p1, v4, v4, v3}, Lcom/alibaba/laiwang/tide/share/business/Util;->extractThumbNail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 115
    iput-object p3, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 116
    iput-object p4, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 117
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 119
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 120
    .local v2, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v4, "appdata"

    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 121
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 122
    if-eqz p5, :cond_0

    :goto_0
    iput v3, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 123
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 125
    return-void

    .line 122
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public doShareByteAppData([BLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 4
    .param p1, "fileData"    # [B
    .param p2, "thumbImage"    # Landroid/graphics/Bitmap;
    .param p3, "extInfo"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "isTimeLine"    # Z
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 138
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;-><init>()V

    .line 139
    .local v0, "appdata":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->fileData:[B

    .line 140
    iput-object p3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 142
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 143
    .local v1, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    invoke-virtual {v1, p2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 144
    iput-object p4, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 145
    iput-object p5, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 146
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 148
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 149
    .local v2, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v3, "appdata"

    invoke-direct {p0, v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 150
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 151
    if-eqz p6, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 152
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 154
    return-void

    .line 151
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public doShareByteImage(Landroid/graphics/Bitmap;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isTimeLine"    # Z
    .param p3, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x96

    const/4 v4, 0x1

    .line 186
    iput-object p3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 187
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v0, p1}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v0, "imgObj":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 190
    .local v1, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 192
    invoke-static {p1, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 194
    .local v3, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/alibaba/laiwang/tide/share/business/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 196
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 197
    .local v2, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v5, "img"

    invoke-direct {p0, v5}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 198
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 199
    if-eqz p2, :cond_0

    :goto_0
    iput v4, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 200
    iget-object v4, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v4, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v4

    return v4

    .line 199
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public doShareHypeLink(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BLjava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;
    .param p4, "thumbByte"    # [B
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "isTimeline"    # Z
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 399
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 400
    .local v2, "webpage":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    iput-object p5, v2, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 402
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 403
    .local v0, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 404
    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 406
    if-eqz p4, :cond_0

    .line 407
    iput-object p4, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 411
    :goto_0
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 412
    .local v1, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v3, "webpage"

    invoke-static {v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/utils/WeixinUtils;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 413
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 414
    if-eqz p6, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput v3, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 415
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v3

    return v3

    .line 409
    .end local v1    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_0
    invoke-virtual {v0, p3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 414
    .restart local v1    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public doShareLocalImage(Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isTimeLine"    # Z
    .param p4, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x96

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 220
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 244
    :goto_0
    return v6

    .line 224
    :cond_0
    iput-object p4, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 225
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>()V

    .line 226
    .local v2, "imgObj":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    invoke-virtual {v2, p1}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    .line 228
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 229
    .local v3, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object v2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 231
    if-nez p2, :cond_1

    .line 232
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0, v8, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    invoke-static {p2, v5}, Lcom/alibaba/laiwang/tide/share/business/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 240
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v4}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 241
    .local v4, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v7, "img"

    invoke-direct {p0, v7}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 242
    iput-object v3, v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 243
    if-eqz p3, :cond_2

    :goto_2
    iput v5, v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 244
    iget-object v5, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v5, v4}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v6

    goto :goto_0

    .line 237
    .end local v4    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_1
    invoke-static {p2, v6}, Lcom/alibaba/laiwang/tide/share/business/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    goto :goto_1

    .restart local v4    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_2
    move v5, v6

    .line 243
    goto :goto_2
.end method

.method public doShareLocalImage(Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isTimeLine"    # Z
    .param p3, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->doShareLocalImage(Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z

    move-result v0

    return v0
.end method

.method public doShareLowBandMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 5
    .param p1, "musicUrl"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "thumbData"    # [B
    .param p6, "isTimeLine"    # Z
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 301
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 302
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;-><init>()V

    .line 303
    .local v1, "music":Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;
    iput-object p1, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 306
    .local v0, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 307
    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 308
    iput-object p3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 310
    array-length v4, p5

    if-lez v4, :cond_1

    .line 311
    iput-object p5, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 316
    :cond_0
    :goto_0
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 317
    .local v2, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v4, "music"

    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 318
    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 319
    if-eqz p6, :cond_2

    :goto_1
    iput v3, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 320
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 322
    return-void

    .line 312
    .end local v2    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_1
    if-eqz p4, :cond_0

    .line 313
    invoke-static {p4, v3}, Lcom/alibaba/laiwang/tide/share/business/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    goto :goto_0

    .line 319
    .restart local v2    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public doShareLowBandVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 5
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "thumbData"    # [B
    .param p6, "isTimeLine"    # Z
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 365
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 366
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;-><init>()V

    .line 367
    .local v2, "video":Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;
    iput-object p1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;

    .line 369
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 370
    .local v0, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 371
    iput-object p3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 372
    array-length v4, p5

    if-lez v4, :cond_1

    .line 373
    iput-object p5, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 378
    :cond_0
    :goto_0
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 379
    .local v1, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v4, "video"

    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 380
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 381
    if-eqz p6, :cond_2

    :goto_1
    iput v3, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 382
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 383
    return-void

    .line 374
    .end local v1    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_1
    if-eqz p4, :cond_0

    .line 375
    invoke-static {p4, v3}, Lcom/alibaba/laiwang/tide/share/business/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    goto :goto_0

    .line 381
    .restart local v1    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public doShareMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 5
    .param p1, "musicUrl"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "thumbData"    # [B
    .param p6, "isTimeLine"    # Z
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 268
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 269
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;-><init>()V

    .line 270
    .local v1, "music":Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;
    iput-object p1, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 272
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 273
    .local v0, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 274
    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 275
    iput-object p3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 277
    array-length v4, p5

    if-lez v4, :cond_1

    .line 278
    iput-object p5, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 283
    :cond_0
    :goto_0
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 284
    .local v2, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v4, "music"

    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 285
    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 286
    if-eqz p6, :cond_2

    :goto_1
    iput v3, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 287
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 289
    return-void

    .line 279
    .end local v2    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_1
    if-eqz p4, :cond_0

    .line 280
    invoke-static {p4, v3}, Lcom/alibaba/laiwang/tide/share/business/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    goto :goto_0

    .line 286
    .restart local v2    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public doShareNoAttachmentApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 4
    .param p1, "extInfo"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "isTimeLine"    # Z
    .param p5, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    iput-object p5, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 165
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;-><init>()V

    .line 166
    .local v0, "appdata":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 167
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 168
    .local v1, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object p2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 169
    iput-object p3, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 170
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 172
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 173
    .local v2, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v3, "appdata"

    invoke-direct {p0, v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 174
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 175
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 176
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 178
    return-void

    .line 175
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public doShareText(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "isTimeline"    # Z
    .param p4, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 77
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 81
    :cond_1
    iput-object p4, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 83
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;-><init>()V

    .line 84
    .local v2, "textObj":Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;
    iput-object p2, v2, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 87
    .local v0, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 89
    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 91
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 92
    .local v1, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v4, "text"

    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 93
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 94
    if-eqz p3, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput v3, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 96
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v3

    goto :goto_0
.end method

.method public doShareURLImage(Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isTimeLine"    # Z
    .param p3, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 256
    return-void
.end method

.method public doShareVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 5
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "thumbData"    # [B
    .param p6, "isTimeLine"    # Z
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 334
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 335
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;-><init>()V

    .line 336
    .local v2, "video":Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;
    iput-object p1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 338
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 339
    .local v0, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 340
    iput-object p3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 341
    array-length v4, p5

    if-lez v4, :cond_1

    .line 342
    iput-object p5, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 347
    :cond_0
    :goto_0
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 348
    .local v1, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string/jumbo v4, "video"

    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 349
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 350
    if-eqz p6, :cond_2

    :goto_1
    iput v3, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 351
    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 353
    return-void

    .line 343
    .end local v1    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_1
    if-eqz p4, :cond_0

    .line 344
    invoke-static {p4, v3}, Lcom/alibaba/laiwang/tide/share/business/Util;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    goto :goto_0

    .line 350
    .restart local v1    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getWXAPI()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public isWXAppSupportSession()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWXAppSupportTimeline()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 61
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x21020001

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 60
    goto :goto_0
.end method
