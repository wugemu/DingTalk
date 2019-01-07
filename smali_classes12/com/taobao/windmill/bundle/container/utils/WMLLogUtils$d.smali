.class public final Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$d;
.super Ljava/lang/Object;
.source "WMLLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "mManifest"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .prologue
    .line 176
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v3, "FAIL_PAGE_NOT_FOUND"

    const-string/jumbo v4, ""

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "data"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    aput-object v1, v5, v6

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    return-void

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
