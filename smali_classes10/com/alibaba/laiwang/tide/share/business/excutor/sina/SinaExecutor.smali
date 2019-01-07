.class public Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;
.super Ljava/lang/Object;
.source "SinaExecutor.java"


# instance fields
.field private listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

.field private mAccessToken:Ljgy;

.field private mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

.field private mContext:Landroid/content/Context;

.field private mSsoHandler:Ljhb;

.field private mWeiboAuth:Ljgz;

.field private mWeiboShareAPI:Ljgp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mConstants"    # Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    .line 238
    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 51
    new-instance v0, Ljgz;

    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSInaAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSinaRedirectRrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSinaScope()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljgz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboAuth:Ljgz;

    .line 52
    iput-object p2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    .line 53
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Ljgy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mAccessToken:Ljgy;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;Ljgy;)Ljgy;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;
    .param p1, "x1"    # Ljgy;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mAccessToken:Ljgy;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;
    .param p1, "x1"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    return-object p1
.end method

.method private doShareForRespone(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/Bitmap;
    .param p4, "thumbImage"    # Landroid/graphics/Bitmap;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    iput-object p6, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 310
    new-instance v4, Ljgi;

    invoke-direct {v4}, Ljgi;-><init>()V

    .line 311
    .local v4, "weiboMessage":Ljgi;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 312
    new-instance v3, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 313
    .local v3, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    iput-object p2, v3, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 314
    iput-object v3, v4, Ljgi;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 316
    .end local v3    # "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    :cond_0
    if-eqz p3, :cond_1

    .line 317
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 318
    .local v0, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 319
    iput-object v0, v4, Ljgi;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 322
    .end local v0    # "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 324
    new-instance v1, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 325
    .local v1, "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    invoke-static {}, Ljhk;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 326
    iput-object p1, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 327
    iput-object p2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 329
    invoke-virtual {v1, p4}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 330
    iput-object p5, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 331
    iput-object p2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    .line 332
    iput-object v1, v4, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 344
    .end local v1    # "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    :cond_2
    new-instance v2, Ljgq;

    invoke-direct {v2}, Ljgq;-><init>()V

    .line 345
    .local v2, "response":Ljgq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ljgq;->a:Ljava/lang/String;

    .line 346
    iget-object v5, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ljgq;->d:Ljava/lang/String;

    .line 347
    iput-object v4, v2, Ljgq;->e:Ljgi;

    .line 349
    iget-object v5, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v5, v2}, Ljgp;->a(Ljgm;)Z

    .line 350
    return-void
.end method

.method private doshare(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/Bitmap;
    .param p4, "thumbImage"    # Landroid/graphics/Bitmap;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    new-instance v4, Ljgi;

    invoke-direct {v4}, Ljgi;-><init>()V

    .line 273
    .local v4, "weiboMessage":Ljgi;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    new-instance v3, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 275
    .local v3, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    iput-object p2, v3, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 276
    iput-object v3, v4, Ljgi;->a:Lcom/sina/weibo/sdk/api/TextObject;

    .line 278
    .end local v3    # "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    :cond_0
    if-eqz p3, :cond_1

    .line 279
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 280
    .local v0, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 281
    iput-object v0, v4, Ljgi;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 284
    .end local v0    # "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 286
    new-instance v1, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 287
    .local v1, "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    invoke-static {}, Ljhk;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 288
    iput-object p1, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 289
    iput-object p2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 291
    invoke-virtual {v1, p4}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 292
    iput-object p5, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 293
    iput-object p2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    .line 294
    iput-object v1, v4, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 298
    .end local v1    # "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    :cond_2
    new-instance v2, Ljgt;

    invoke-direct {v2}, Ljgt;-><init>()V

    .line 300
    .local v2, "request":Ljgt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ljgt;->a:Ljava/lang/String;

    .line 301
    iput-object v4, v2, Ljgt;->b:Ljgi;

    .line 303
    iget-object v5, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v5, v2}, Ljgp;->a(Ljgl;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    iput-object p6, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 306
    :cond_3
    return-void
.end method


# virtual methods
.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 192
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mSsoHandler:Ljhb;

    if-eqz v0, :cond_4

    .line 193
    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mSsoHandler:Ljhb;

    .line 2175
    const-string/jumbo v0, "Weibo_SSO_login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iget v0, v1, Ljhb;->d:I

    if-ne p1, v0, :cond_4

    .line 2179
    if-ne p2, v4, :cond_b

    .line 2180
    iget-object v2, v1, Ljhb;->c:Landroid/app/Activity;

    .line 3090
    invoke-static {v2}, Ljgj;->a(Landroid/content/Context;)Ljgj$a;

    move-result-object v0

    .line 3091
    if-eqz v0, :cond_0

    iget v3, v0, Ljgj$a;->b:I

    const/16 v4, 0x2870

    if-le v3, v4, :cond_6

    .line 3093
    :cond_0
    if-eqz v0, :cond_6

    .line 3098
    if-eqz p3, :cond_5

    const-string/jumbo v0, "_weibo_appPackage"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3100
    :goto_0
    if-eqz v0, :cond_1

    .line 3101
    const-string/jumbo v3, "_weibo_transaction"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3102
    invoke-static {v2, v0}, Ljgj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3103
    :cond_1
    const/4 v0, 0x0

    .line 2180
    :goto_1
    if-eqz v0, :cond_4

    .line 2185
    const-string/jumbo v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2186
    if-nez v0, :cond_2

    .line 2187
    const-string/jumbo v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2191
    :cond_2
    if-eqz v0, :cond_9

    .line 2192
    const-string/jumbo v2, "access_denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "OAuthAccessDeniedException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2193
    :cond_3
    const-string/jumbo v0, "Weibo_SSO_login"

    const-string/jumbo v2, "Login canceled by user."

    invoke-static {v0, v2}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object v0, v1, Ljhb;->b:Ljha;

    invoke-interface {v0}, Ljha;->onCancel()V

    .line 2232
    :cond_4
    :goto_2
    return-void

    .line 3098
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3106
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 2197
    :cond_7
    const-string/jumbo v2, "error_description"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2198
    if-eqz v2, :cond_8

    .line 2199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2202
    :cond_8
    const-string/jumbo v3, "Weibo_SSO_login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Login failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    iget-object v1, v1, Ljhb;->b:Ljha;

    .line 2204
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    invoke-direct {v3, v0, p2, v2}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2203
    invoke-interface {v1, v3}, Ljha;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_2

    .line 2208
    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2209
    invoke-static {v0}, Ljgy;->a(Landroid/os/Bundle;)Ljgy;

    move-result-object v2

    .line 2211
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljgy;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2212
    const-string/jumbo v3, "Weibo_SSO_login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Login Success! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljgy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget-object v1, v1, Ljhb;->b:Ljha;

    invoke-interface {v1, v0}, Ljha;->onComplete(Landroid/os/Bundle;)V

    goto :goto_2

    .line 2215
    :cond_a
    const-string/jumbo v0, "Weibo_SSO_login"

    const-string/jumbo v2, "Failed to receive access token by SSO"

    invoke-static {v0, v2}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    iget-object v0, v1, Ljhb;->a:Ljgz;

    iget-object v1, v1, Ljhb;->b:Ljha;

    invoke-virtual {v0, v1}, Ljgz;->a(Ljha;)V

    goto/16 :goto_2

    .line 2222
    :cond_b
    if-nez p2, :cond_4

    .line 2225
    if-eqz p3, :cond_c

    .line 2226
    const-string/jumbo v0, "Weibo_SSO_login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Login failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "error"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    iget-object v0, v1, Ljhb;->b:Ljha;

    .line 2228
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    .line 2229
    const-string/jumbo v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2230
    const-string/jumbo v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2231
    const-string/jumbo v4, "failing_url"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2228
    invoke-direct {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2227
    invoke-interface {v0, v1}, Ljha;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_2

    .line 2234
    :cond_c
    const-string/jumbo v0, "Weibo_SSO_login"

    const-string/jumbo v2, "Login canceled by user."

    invoke-static {v0, v2}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    iget-object v0, v1, Ljhb;->b:Ljha;

    invoke-interface {v0}, Ljha;->onCancel()V

    goto/16 :goto_2
.end method

.method public callback(Ljgm;)V
    .locals 2
    .param p1, "baseResp"    # Ljgm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget v0, p1, Ljgm;->b:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    .line 74
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onSuccess()V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onCancel()V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    iget-object v1, p1, Ljgm;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkToken()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mAccessToken:Ljgy;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-interface {v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/utils/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljgy;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mAccessToken:Ljgy;

    .line 179
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->println(J)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mAccessToken:Ljgy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mAccessToken:Ljgy;

    invoke-virtual {v0}, Ljgy;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doOAuth(Landroid/app/Activity;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->checkToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-interface {p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onSuccess()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljhb;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboAuth:Ljgz;

    invoke-direct {v0, p1, v2}, Ljhb;-><init>(Landroid/app/Activity;Ljgz;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mSsoHandler:Ljhb;

    .line 92
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mSsoHandler:Ljhb;

    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$1;-><init>(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V

    .line 1141
    const v3, 0x80cd

    iput v3, v2, Ljhb;->d:I

    .line 1142
    iput-object v0, v2, Ljhb;->b:Ljha;

    .line 1145
    iget-object v0, v2, Ljhb;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v0, 0x0

    .line 1278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1279
    :cond_2
    const-string/jumbo v0, "com.sina.weibo"

    .line 1280
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.sina.weibo.remotessoservice"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    iget-object v0, v2, Ljhb;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1284
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sina.weibo.remotessoservice"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1285
    iget-object v4, v2, Ljhb;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1148
    :goto_1
    if-nez v0, :cond_0

    .line 1149
    iget-object v0, v2, Ljhb;->a:Ljgz;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, v2, Ljhb;->a:Ljgz;

    iget-object v1, v2, Ljhb;->b:Ljha;

    invoke-virtual {v0, v1}, Ljgz;->a(Ljha;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1288
    goto :goto_1
.end method

.method public doShare(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 14
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->checkToken()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    if-eqz p4, :cond_0

    .line 142
    const-string/jumbo v2, "token \u65e0\u6548\uff0c\u8bf7\u91cd\u65b0OAuth!"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;

    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-interface {v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/utils/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljgy;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;-><init>(Ljgy;)V

    .line 148
    .local v1, "api":Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;
    new-instance v6, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;

    move-object/from16 v0, p4

    invoke-direct {v6, p0, v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;-><init>(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V

    .line 164
    .local v6, "mListener":Ljhe;
    if-eqz p2, :cond_2

    .line 165
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljhe;)V

    goto :goto_0

    .line 167
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    move-object v8, p1

    move-object/from16 v9, p3

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/models/StatusesAPI;->uploadUrlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljhe;)V

    goto :goto_0
.end method

.method public doShareCallApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "image"    # Landroid/graphics/Bitmap;
    .param p5, "thumbImage"    # Landroid/graphics/Bitmap;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "needResponse"    # Z
    .param p8, "listener"    # Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mConstants:Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;->getSInaAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljgx;->a(Landroid/content/Context;Ljava/lang/String;)Ljgp;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    .line 251
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v0}, Ljgp;->c()Z

    .line 252
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v0}, Ljgp;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    invoke-interface {v0}, Ljgp;->b()I

    move-result v7

    .line 254
    .local v7, "supportApi":I
    const/16 v0, 0x286f

    if-lt v7, v0, :cond_1

    .line 255
    if-eqz p7, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p8

    .line 256
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->doShareForRespone(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V

    .line 266
    .end local v7    # "supportApi":I
    :goto_0
    return-void

    .restart local v7    # "supportApi":I
    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p8

    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->doshare(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u5fae\u535a\u5ba2\u6237\u7aef\u7248\u672c\u4e0d\u652f\u6301\u6b64\u5206\u4eab\uff0c\u8bf7\u4e0b\u8f7d\u6700\u65b0\u5fae\u535a\u5ba2\u6237\u7aef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 264
    .end local v7    # "supportApi":I
    :cond_2
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u5fae\u535a\u5ba2\u6237\u7aef\u7248\u672c\u4e0d\u652f\u6301\u6b64\u5206\u4eab\uff0c\u8bf7\u4e0b\u8f7d\u6700\u65b0\u5fae\u535a\u5ba2\u6237\u7aef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleWeiboResponse(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->mWeiboShareAPI:Ljgp;

    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$3;

    invoke-direct {v1, p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$3;-><init>(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;)V

    invoke-interface {v0, p1, v1}, Ljgp;->a(Landroid/content/Intent;Ljgo$a;)Z

    goto :goto_0
.end method
