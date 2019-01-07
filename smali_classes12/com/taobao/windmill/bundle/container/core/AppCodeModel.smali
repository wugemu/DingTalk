.class public Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
.super Ljava/lang/Object;
.source "AppCodeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;
    }
.end annotation


# instance fields
.field public appCode:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appLogo:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private frameTempType:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

.field public orgUrl:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

.field public startPath:Ljava/lang/String;

.field private status:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

.field private version:Ljava/lang/String;

.field private zCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PubArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->frameTempType:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v5, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PubArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->frameTempType:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .line 43
    const-string/jumbo v5, "\\|"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "data":[Ljava/lang/String;
    array-length v1, v0

    .line 45
    .local v1, "length":I
    if-gtz v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v0, v5

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appId:Ljava/lang/String;

    .line 49
    if-le v1, v7, :cond_0

    .line 52
    aget-object v5, v0, v7

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->zCacheKey:Ljava/lang/String;

    .line 53
    if-le v1, v6, :cond_0

    .line 56
    aget-object v3, v0, v6

    .line 58
    .local v3, "statusStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, "statusInt":I
    packed-switch v2, :pswitch_data_0

    .line 72
    sget-object v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->ONLINE:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->status:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2    # "statusInt":I
    :goto_1
    if-le v1, v8, :cond_0

    .line 81
    aget-object v5, v0, v8

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->version:Ljava/lang/String;

    .line 82
    if-le v1, v9, :cond_0

    .line 85
    aget-object v5, v0, v9

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appName:Ljava/lang/String;

    .line 86
    if-le v1, v10, :cond_0

    .line 89
    aget-object v5, v0, v10

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appLogo:Ljava/lang/String;

    .line 90
    iget-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appLogo:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appLogo:Ljava/lang/String;

    const-string/jumbo v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appLogo:Ljava/lang/String;

    const-string/jumbo v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "https://ossgw.alicdn.com/taobao-miniapp/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appLogo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appLogo:Ljava/lang/String;

    .line 95
    :cond_2
    const/16 v5, 0x8

    if-le v1, v5, :cond_0

    .line 98
    const/16 v5, 0x8

    aget-object v4, v0, v5

    .line 99
    .local v4, "typeStr":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Ljava/lang/String;Z)Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->frameTempType:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    goto :goto_0

    .line 61
    .end local v4    # "typeStr":Ljava/lang/String;
    .restart local v2    # "statusInt":I
    :pswitch_0
    :try_start_1
    sget-object v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->ONLINE:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->status:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 75
    .end local v2    # "statusInt":I
    :catch_0
    move-exception v5

    sget-object v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->ONLINE:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->status:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    goto :goto_1

    .line 64
    .restart local v2    # "statusInt":I
    :pswitch_1
    :try_start_2
    sget-object v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->status:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    .line 65
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->zCacheKey:Ljava/lang/String;

    goto :goto_1

    .line 68
    :pswitch_2
    sget-object v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->CHECKING:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->status:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    .line 69
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->zCacheKey:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->frameTempType:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    return-object v0
.end method

.method public getStatus()Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->status:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getZCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->zCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFrameTempType(Ljava/lang/String;)V
    .locals 1
    .param p1, "frameType"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Ljava/lang/String;Z)Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->frameTempType:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .line 132
    return-void
.end method
