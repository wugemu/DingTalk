.class public final Lgvy;
.super Lgvu;
.source "ShareAlipayUnit.java"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lgvy;->a:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lgvy;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p2, :cond_0

    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, v1}, Lgwa;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 44
    const-string/jumbo v0, "lwfrom=user_alipay"

    iput-object v0, p0, Lgvy;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgvy;->c:Landroid/content/Context;

    .line 49
    iput p2, p0, Lgvy;->d:I

    .line 50
    return-void

    .line 47
    :cond_0
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, v1}, Lgwa;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p2, :cond_0

    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p3}, Lgwa;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 44
    const-string/jumbo v0, "lwfrom=user_alipay"

    iput-object v0, p0, Lgvy;->e:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgvy;->c:Landroid/content/Context;

    .line 55
    iput p2, p0, Lgvy;->d:I

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p3}, Lgwa;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final isSupportShare(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "installedSharePackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 193
    .line 4064
    iget v1, p0, Lgvy;->d:I

    sget v2, Lgvy;->b:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 193
    :goto_0
    if-eqz v1, :cond_2

    .line 200
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v0

    .line 4064
    goto :goto_0

    .line 196
    :cond_2
    invoke-super {p0, p1}, Lgvu;->isSupportShare(Ljava/util/List;)Z

    move-result v0

    .line 197
    .local v0, "isSupportedShare":Z
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lgvy;->c:Landroid/content/Context;

    invoke-static {v1}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v1

    .line 5051
    iget-object v1, v1, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 198
    invoke-interface {v1}, Lcom/alipay/share/sdk/openapi/IAPApi;->isZFBSupportAPI()Z

    move-result v0

    goto :goto_1
.end method

.method public final share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 6
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 69
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[ShareAlipayUnit] share clicked"

    invoke-static {v1, v0, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[ShareAlipayUnit] shareInfo is null, cancelShare"

    invoke-static {v1, v0, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :goto_0
    return-void

    .line 74
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_0
    instance-of v1, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 1133
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    new-instance v0, Lcom/alipay/share/sdk/openapi/APImageObject;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/share/sdk/openapi/APImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 1134
    new-instance v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-direct {v1}, Lcom/alipay/share/sdk/openapi/APMediaMessage;-><init>()V

    .line 1135
    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    .line 1136
    new-instance v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-direct {v0}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>()V

    .line 1137
    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    .line 1138
    const-string/jumbo v1, "image"

    invoke-static {v1}, Lgvy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->transaction:Ljava/lang/String;

    .line 1139
    iget-object v1, p0, Lgvy;->c:Landroid/content/Context;

    invoke-static {v1}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v1

    .line 2051
    iget-object v1, v1, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 1139
    invoke-interface {v1, v0}, Lcom/alipay/share/sdk/openapi/IAPApi;->sendReq(Lcom/alipay/share/sdk/openapi/BaseReq;)Z

    goto :goto_0

    .line 80
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_1
    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 2154
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    new-instance v0, Lcom/alipay/share/sdk/openapi/APImageObject;

    invoke-direct {v0}, Lcom/alipay/share/sdk/openapi/APImageObject;-><init>()V

    .line 2155
    iget-object v1, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/APImageObject;->imagePath:Ljava/lang/String;

    .line 2156
    new-instance v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-direct {v1}, Lcom/alipay/share/sdk/openapi/APMediaMessage;-><init>()V

    .line 2157
    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    .line 2158
    new-instance v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-direct {v0}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>()V

    .line 2159
    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    .line 2160
    const-string/jumbo v1, "image"

    invoke-static {v1}, Lgvy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->transaction:Ljava/lang/String;

    .line 2161
    iget-object v1, p0, Lgvy;->c:Landroid/content/Context;

    invoke-static {v1}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v1

    .line 3051
    iget-object v1, v1, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 2161
    invoke-interface {v1, v0}, Lcom/alipay/share/sdk/openapi/IAPApi;->sendReq(Lcom/alipay/share/sdk/openapi/BaseReq;)Z

    goto :goto_0

    .line 3089
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 3090
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 3091
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgvy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3094
    instance-of v4, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    if-eqz v4, :cond_3

    move-object v0, p1

    .line 3095
    check-cast v0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 3096
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3099
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v4

    .line 3108
    new-instance v5, Lcom/alipay/share/sdk/openapi/APWebPageObject;

    invoke-direct {v5}, Lcom/alipay/share/sdk/openapi/APWebPageObject;-><init>()V

    .line 3109
    iput-object v3, v5, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    .line 3110
    new-instance v3, Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-direct {v3}, Lcom/alipay/share/sdk/openapi/APMediaMessage;-><init>()V

    .line 3111
    iput-object v1, v3, Lcom/alipay/share/sdk/openapi/APMediaMessage;->title:Ljava/lang/String;

    .line 3112
    iput-object v2, v3, Lcom/alipay/share/sdk/openapi/APMediaMessage;->description:Ljava/lang/String;

    .line 3113
    iput-object v5, v3, Lcom/alipay/share/sdk/openapi/APMediaMessage;->mediaObject:Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;

    .line 3114
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3115
    iput-object v4, v3, Lcom/alipay/share/sdk/openapi/APMediaMessage;->thumbUrl:Ljava/lang/String;

    .line 3118
    :cond_4
    if-eqz v0, :cond_5

    .line 3119
    invoke-virtual {v3, v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 3122
    :cond_5
    new-instance v1, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-direct {v1}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>()V

    .line 3123
    iput-object v3, v1, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    .line 3124
    const-string/jumbo v0, "webpage"

    invoke-static {v0}, Lgvy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->transaction:Ljava/lang/String;

    .line 3125
    iget v0, p0, Lgvy;->d:I

    sget v2, Lgvy;->b:I

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput v0, v1, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    .line 3128
    iget-object v0, p0, Lgvy;->c:Landroid/content/Context;

    invoke-static {v0}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v0

    .line 4051
    iget-object v0, v0, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 3128
    invoke-interface {v0, v1}, Lcom/alipay/share/sdk/openapi/IAPApi;->sendReq(Lcom/alipay/share/sdk/openapi/BaseReq;)Z

    goto/16 :goto_0

    .line 3125
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
