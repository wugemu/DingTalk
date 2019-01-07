.class public Lcom/alipay/bis/core/protocol/BisMetaInfo;
.super Ljava/lang/Object;
.source "BisMetaInfo.java"


# instance fields
.field private bEva:Ljava/lang/String;

.field private evVer:Ljava/lang/String;

.field private feVer:Ljava/lang/String;

.field private fmt:Ljava/lang/String;

.field private hwVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->fmt:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "EYE"

    iput-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->evVer:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "5.2"

    iput-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->feVer:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->hwVer:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->bEva:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->evVer:Ljava/lang/String;

    return-object v0
.end method

.method public getFeVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->feVer:Ljava/lang/String;

    return-object v0
.end method

.method public getFmt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->fmt:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->hwVer:Ljava/lang/String;

    return-object v0
.end method

.method public getbEva()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->bEva:Ljava/lang/String;

    return-object v0
.end method

.method public setEvVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "evVer"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->evVer:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFeVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "feVer"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->feVer:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setFmt(Ljava/lang/String;)V
    .locals 0
    .param p1, "fmt"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->fmt:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setHwVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "hwVer"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->hwVer:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setbEva(Ljava/lang/String;)V
    .locals 0
    .param p1, "bEva"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/bis/core/protocol/BisMetaInfo;->bEva:Ljava/lang/String;

    .line 54
    return-void
.end method
