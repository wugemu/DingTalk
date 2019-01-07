.class public Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
.super Ljava/lang/Object;
.source "AliPayMiniParseUrlResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cid:Ljava/lang/String;

.field public closeAllActivityAnimation:Z

.field public commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

.field public ddAgentId:Ljava/lang/String;

.field public ddAppId:Ljava/lang/String;

.field public ddAppType:Ljava/lang/String;

.field public ddCorpId:Ljava/lang/String;

.field public ddFallbackUrl:Ljava/lang/String;

.field public ddMode:Ljava/lang/String;

.field public ddPVersion:Ljava/lang/String;

.field public ddPackageType:Ljava/lang/String;

.field public ddStatus:I

.field public extensionBundle:Landroid/os/Bundle;

.field public frameworkSceneId:I

.field public keepAlive:Ljava/lang/String;

.field public mainTask:Z

.field public miniAppId:Ljava/lang/String;

.field public mini_app_launch_path:I

.field public navi_to_open_mini_app:J

.field public nbsource:Ljava/lang/String;

.field public nbversion:Ljava/lang/String;

.field public page:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public referrerInfo:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    const/16 v0, 0x28

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "AliPayMiniParseUrlResult{"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "miniAppId="

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, ", ddCorpId="

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddCorpId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string/jumbo v2, ", ddAppId="

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string/jumbo v2, ", ddAgentId="

    aput-object v2, v1, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAgentId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string/jumbo v2, ", ddFallbackUrl="

    aput-object v2, v1, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string/jumbo v2, ", ddAppType="

    aput-object v2, v1, v0

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppType:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string/jumbo v2, ", ddStatus="

    aput-object v2, v1, v0

    const/16 v0, 0xe

    iget v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddStatus:I

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string/jumbo v2, ", page="

    aput-object v2, v1, v0

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->page:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string/jumbo v2, ", query="

    aput-object v2, v1, v0

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->query:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string/jumbo v2, ", keepAlive="

    aput-object v2, v1, v0

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->keepAlive:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string/jumbo v2, ", source="

    aput-object v2, v1, v0

    const/16 v0, 0x16

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->source:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string/jumbo v2, ", nbsource="

    aput-object v2, v1, v0

    const/16 v0, 0x18

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->nbsource:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string/jumbo v2, ", nbversion="

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->nbversion:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string/jumbo v2, ", ddPVersion="

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddPVersion:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string/jumbo v2, ", ddPackageType="

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddPackageType:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string/jumbo v2, ", ddMode="

    aput-object v2, v1, v0

    const/16 v0, 0x20

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddMode:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string/jumbo v2, ", mainTask="

    aput-object v2, v1, v0

    const/16 v0, 0x22

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mainTask:Z

    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string/jumbo v2, ", closeAllActivityAnimation="

    aput-object v2, v1, v0

    const/16 v0, 0x24

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->closeAllActivityAnimation:Z

    .line 76
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string/jumbo v2, "\uff0ccommonParseUrlResult="

    aput-object v2, v1, v0

    const/16 v2, 0x26

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    .line 78
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    const/16 v0, 0x27

    const-string/jumbo v2, "}"

    aput-object v2, v1, v0

    .line 40
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
