.class public Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;
.super Ljava/lang/Object;
.source "SinaWeiboExecutor.java"


# static fields
.field private static mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# instance fields
.field private mAccessToken:Ljgy;

.field private mContext:Landroid/content/Context;

.field private mSsoHandler:Ljhb;

.field private mWeiboAuth:Ljgz;

.field private mWeiboShareAPI:Ljgp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    .line 50
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljgz;

    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSInaAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSinaRedirectRrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSinaScope()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljgz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboAuth:Ljgz;

    .line 54
    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSInaAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljgx;->a(Landroid/content/Context;Ljava/lang/String;)Ljgp;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    .line 56
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v0}, Ljgp;->c()Z

    .line 58
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mContext:Landroid/content/Context;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must be Activity instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getImageObj(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 317
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 318
    .local v0, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 319
    return-object v0
.end method

.method private getMusicObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/MusicObject;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    new-instance v0, Lcom/sina/weibo/sdk/api/MusicObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/MusicObject;-><init>()V

    .line 347
    .local v0, "musicObject":Lcom/sina/weibo/sdk/api/MusicObject;
    invoke-static {}, Ljhk;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/MusicObject;->identify:Ljava/lang/String;

    .line 348
    iput-object p1, v0, Lcom/sina/weibo/sdk/api/MusicObject;->title:Ljava/lang/String;

    .line 349
    iput-object p2, v0, Lcom/sina/weibo/sdk/api/MusicObject;->description:Ljava/lang/String;

    .line 352
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/api/MusicObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 353
    iput-object p4, v0, Lcom/sina/weibo/sdk/api/MusicObject;->actionUrl:Ljava/lang/String;

    .line 354
    return-object v0
.end method

.method private getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 307
    .local v0, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    iput-object p1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 308
    return-object v0
.end method

.method private getVideoObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/VideoObject;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 365
    new-instance v0, Lcom/sina/weibo/sdk/api/VideoObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/VideoObject;-><init>()V

    .line 366
    .local v0, "videoObject":Lcom/sina/weibo/sdk/api/VideoObject;
    invoke-static {}, Ljhk;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VideoObject;->identify:Ljava/lang/String;

    .line 367
    iput-object p1, v0, Lcom/sina/weibo/sdk/api/VideoObject;->title:Ljava/lang/String;

    .line 368
    iput-object p2, v0, Lcom/sina/weibo/sdk/api/VideoObject;->description:Ljava/lang/String;

    .line 371
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/api/VideoObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 372
    iput-object p4, v0, Lcom/sina/weibo/sdk/api/VideoObject;->actionUrl:Ljava/lang/String;

    .line 374
    return-object v0
.end method

.method private getVoiceObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/VoiceObject;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 384
    new-instance v0, Lcom/sina/weibo/sdk/api/VoiceObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/VoiceObject;-><init>()V

    .line 385
    .local v0, "voiceObject":Lcom/sina/weibo/sdk/api/VoiceObject;
    invoke-static {}, Ljhk;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/VoiceObject;->identify:Ljava/lang/String;

    .line 386
    iput-object p1, v0, Lcom/sina/weibo/sdk/api/VoiceObject;->title:Ljava/lang/String;

    .line 387
    iput-object p2, v0, Lcom/sina/weibo/sdk/api/VoiceObject;->description:Ljava/lang/String;

    .line 390
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/api/VoiceObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 391
    iput-object p4, v0, Lcom/sina/weibo/sdk/api/VoiceObject;->actionUrl:Ljava/lang/String;

    .line 392
    return-object v0
.end method

.method private getWebpageObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/WebpageObject;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "linkUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 329
    .local v0, "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    invoke-static {}, Ljhk;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 330
    iput-object p1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 331
    iput-object p2, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 334
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 335
    iput-object p4, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 336
    return-object v0
.end method

.method private isWeiboAppSupportAPI()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v0}, Ljgp;->a()Z

    move-result v0

    return v0
.end method

.method private sendMultiMessage(Ljgi;)V
    .locals 4
    .param p1, "multiMessage"    # Ljgi;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->isWeiboAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const-string/jumbo v1, "SinaWeiboExecutor"

    const-string/jumbo v2, "weibo not support sdk share or weibo is not official version."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljgt;

    invoke-direct {v0}, Ljgt;-><init>()V

    .line 294
    .local v0, "request":Ljgt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljgt;->a:Ljava/lang/String;

    .line 295
    iput-object p1, v0, Ljgt;->b:Ljgi;

    .line 298
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v1, v0}, Ljgp;->a(Ljgl;)Z

    goto :goto_0
.end method

.method private sendSingleMessage(Lcom/sina/weibo/sdk/api/BaseMediaObject;)V
    .locals 4
    .param p1, "mediaObject"    # Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->isWeiboAppSupportAPI()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    const-string/jumbo v2, "SinaWeiboExecutor"

    const-string/jumbo v3, "weibo not support sdk share or weibo is not official version."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v1, Ljgh;

    invoke-direct {v1}, Ljgh;-><init>()V

    .line 273
    .local v1, "weiboMessage":Ljgh;
    iput-object p1, v1, Ljgh;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 275
    new-instance v0, Ljgr;

    invoke-direct {v0}, Ljgr;-><init>()V

    .line 277
    .local v0, "request":Ljgr;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljgr;->a:Ljava/lang/String;

    .line 278
    iput-object v1, v0, Ljgr;->b:Ljgh;

    .line 282
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v2, v0}, Ljgp;->a(Ljgl;)Z

    goto :goto_0
.end method


# virtual methods
.method public callback(Ljgm;)V
    .locals 2
    .param p1, "baseResp"    # Ljgm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 400
    iget v0, p1, Ljgm;->b:I

    packed-switch v0, :pswitch_data_0

    .line 417
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 418
    return-void

    .line 402
    :pswitch_0
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onSuccess()V

    goto :goto_0

    .line 407
    :pswitch_1
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onCancel()V

    goto :goto_0

    .line 412
    :pswitch_2
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    iget-object v1, p1, Ljgm;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public doShareBaseMultiMessage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    sput-object p3, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 153
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v2}, Ljgp;->b()I

    move-result v0

    .line 154
    .local v0, "supportApi":I
    const/16 v2, 0x286f

    if-lt v0, v2, :cond_0

    .line 156
    new-instance v1, Ljgi;

    invoke-direct {v1}, Ljgi;-><init>()V

    .line 157
    .local v1, "weiboMessage":Ljgi;
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 158
    invoke-direct {p0, p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getImageObj(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 160
    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendMultiMessage(Ljgi;)V

    .line 165
    .end local v1    # "weiboMessage":Ljgi;
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string/jumbo v2, "SinaWeiboExecutor"

    const-string/jumbo v3, "the version of weibo is low , so not support multi message,please update weibo client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doShareImage(Landroid/graphics/Bitmap;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 83
    sput-object p2, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getImageObj(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v0

    .line 85
    .local v0, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendSingleMessage(Lcom/sina/weibo/sdk/api/BaseMediaObject;)V

    .line 86
    return-void
.end method

.method public doShareLink(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "linkUrl"    # Ljava/lang/String;
    .param p5, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 139
    sput-object p5, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getWebpageObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v0

    .line 142
    .local v0, "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendSingleMessage(Lcom/sina/weibo/sdk/api/BaseMediaObject;)V

    .line 143
    return-void
.end method

.method public doShareMultiAttachLink(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "linkTitle"    # Ljava/lang/String;
    .param p4, "linkContent"    # Ljava/lang/String;
    .param p5, "linkThumbBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "linkUrl"    # Ljava/lang/String;
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    sput-object p7, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 178
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v2}, Ljgp;->b()I

    move-result v0

    .line 179
    .local v0, "supportApi":I
    const/16 v2, 0x286f

    if-lt v0, v2, :cond_0

    .line 181
    new-instance v1, Ljgi;

    invoke-direct {v1}, Ljgi;-><init>()V

    .line 182
    .local v1, "weiboMessage":Ljgi;
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 183
    invoke-direct {p0, p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getImageObj(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 184
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getWebpageObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 185
    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendMultiMessage(Ljgi;)V

    .line 190
    .end local v1    # "weiboMessage":Ljgi;
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string/jumbo v2, "SinaWeiboExecutor"

    const-string/jumbo v3, "the version of weibo is low , so not support multi message,please update weibo client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doShareMultiAttachMusic(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "musicTitle"    # Ljava/lang/String;
    .param p4, "musicContent"    # Ljava/lang/String;
    .param p5, "musicThumbBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "musicUrl"    # Ljava/lang/String;
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    sput-object p7, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 203
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v2}, Ljgp;->b()I

    move-result v0

    .line 204
    .local v0, "supportApi":I
    const/16 v2, 0x286f

    if-lt v0, v2, :cond_0

    .line 206
    new-instance v1, Ljgi;

    invoke-direct {v1}, Ljgi;-><init>()V

    .line 207
    .local v1, "weiboMessage":Ljgi;
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 208
    invoke-direct {p0, p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getImageObj(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 209
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getMusicObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/MusicObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 210
    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendMultiMessage(Ljgi;)V

    .line 215
    .end local v1    # "weiboMessage":Ljgi;
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string/jumbo v2, "SinaWeiboExecutor"

    const-string/jumbo v3, "the version of weibo is low , so not support multi message,please update weibo client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doShareMultiAttachVideo(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "videoTitle"    # Ljava/lang/String;
    .param p4, "videoContent"    # Ljava/lang/String;
    .param p5, "videoThumbBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "videoUrl"    # Ljava/lang/String;
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    sput-object p7, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 228
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v2}, Ljgp;->b()I

    move-result v0

    .line 229
    .local v0, "supportApi":I
    const/16 v2, 0x286f

    if-lt v0, v2, :cond_0

    .line 231
    new-instance v1, Ljgi;

    invoke-direct {v1}, Ljgi;-><init>()V

    .line 232
    .local v1, "weiboMessage":Ljgi;
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 233
    invoke-direct {p0, p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getImageObj(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 234
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getVideoObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/VideoObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 235
    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendMultiMessage(Ljgi;)V

    .line 240
    .end local v1    # "weiboMessage":Ljgi;
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string/jumbo v2, "SinaWeiboExecutor"

    const-string/jumbo v3, "the version of weibo is low , so not support multi message,please update weibo client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doShareMultiAttachVoice(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "voiceTitle"    # Ljava/lang/String;
    .param p4, "voiceContent"    # Ljava/lang/String;
    .param p5, "voiceThumbBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "voiceUrl"    # Ljava/lang/String;
    .param p7, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    sput-object p7, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 253
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v2}, Ljgp;->b()I

    move-result v0

    .line 254
    .local v0, "supportApi":I
    const/16 v2, 0x286f

    if-lt v0, v2, :cond_0

    .line 256
    new-instance v1, Ljgi;

    invoke-direct {v1}, Ljgi;-><init>()V

    .line 257
    .local v1, "weiboMessage":Ljgi;
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 258
    invoke-direct {p0, p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getImageObj(Landroid/graphics/Bitmap;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 259
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getVoiceObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/VoiceObject;

    move-result-object v2

    iput-object v2, v1, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 260
    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendMultiMessage(Ljgi;)V

    .line 265
    .end local v1    # "weiboMessage":Ljgi;
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string/jumbo v2, "SinaWeiboExecutor"

    const-string/jumbo v3, "the version of weibo is low , so not support multi message,please update weibo client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doShareMusic(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 96
    sput-object p5, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getMusicObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/MusicObject;

    move-result-object v0

    .line 99
    .local v0, "musicObject":Lcom/sina/weibo/sdk/api/MusicObject;
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendSingleMessage(Lcom/sina/weibo/sdk/api/BaseMediaObject;)V

    .line 101
    return-void
.end method

.method public doShareText(Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 70
    sput-object p2, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getTextObj(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v0

    .line 74
    .local v0, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendSingleMessage(Lcom/sina/weibo/sdk/api/BaseMediaObject;)V

    .line 76
    return-void
.end method

.method public doShareVideo(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 111
    sput-object p5, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getVideoObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/VideoObject;

    move-result-object v0

    .line 114
    .local v0, "videoObject":Lcom/sina/weibo/sdk/api/VideoObject;
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendSingleMessage(Lcom/sina/weibo/sdk/api/BaseMediaObject;)V

    .line 115
    return-void
.end method

.method public doShareVoice(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "shareListener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 125
    sput-object p5, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->mShareListener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->getVoiceObj(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/VoiceObject;

    move-result-object v0

    .line 128
    .local v0, "voiceObject":Lcom/sina/weibo/sdk/api/VoiceObject;
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->sendSingleMessage(Lcom/sina/weibo/sdk/api/BaseMediaObject;)V

    .line 129
    return-void
.end method
