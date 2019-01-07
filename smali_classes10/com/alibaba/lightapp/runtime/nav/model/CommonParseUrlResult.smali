.class public Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
.super Ljava/lang/Object;
.source "CommonParseUrlResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NORAL_URL:I = 0x1

.field public static final WEEX_MINI_URL:I = 0x4

.field public static final WEEX_URL:I = 0x2

.field public static final ZFB_MINI_URL:I = 0x3


# instance fields
.field public ddVersion:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public originUrl:Ljava/lang/String;

.field public urlType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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
    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CommonParseUrlResult{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ddVersion="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->ddVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", originUrl="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ", urlType="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->urlType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ", locale="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->locale:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
