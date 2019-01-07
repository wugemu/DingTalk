.class public Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
.super Ljava/lang/Object;
.source "MiniAppOpenTypeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public miniAppId:Ljava/lang/String;

.field public orgAgentModel:Lhoh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 17
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "MiniAppOpenTypeModel{"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "miniAppId="

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->miniAppId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, ", OrgAgentModel="

    aput-object v2, v1, v0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    .line 21
    invoke-virtual {v0}, Lhoh;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x5

    const-string/jumbo v2, "}"

    aput-object v2, v1, v0

    .line 17
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method
