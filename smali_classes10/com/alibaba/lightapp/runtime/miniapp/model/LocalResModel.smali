.class public Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
.super Ljava/lang/Object;
.source "LocalResModel.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public corpId:Ljava/lang/String;

.field public extras:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public fileType:Ljava/lang/String;

.field public localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LocalResModel{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "localId="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", filePath="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ", fileName="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ", fileType="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, ", fileSize="

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, ", appId="

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->appId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, ", corpId="

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->corpId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, ", extras="

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->extras:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
