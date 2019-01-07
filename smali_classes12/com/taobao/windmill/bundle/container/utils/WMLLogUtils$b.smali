.class public final Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;
.super Ljava/lang/Object;
.source "WMLLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V
    .locals 8
    .param p0, "appInfoModel"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .prologue
    const/4 v0, 0x3

    .line 76
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v3, "SUCCESS_MTOP"

    const-string/jumbo v4, ""

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "version"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "zCacheKey"

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v6, 0x4

    const-string/jumbo v7, "zipUrl"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "minSdkVersion"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->minSdkVersion:I

    .line 80
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "schemaData"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->schemaData:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "templateZcacheKey"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateZcacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "templateAppId"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FAIL_MTOP_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "appInfo"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FAIL_INFO_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "appInfo"

    aput-object v4, v5, v1

    const/4 v1, 0x1

    aput-object p3, v5, v1

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FAIL_CONFIG_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    return-void
.end method
