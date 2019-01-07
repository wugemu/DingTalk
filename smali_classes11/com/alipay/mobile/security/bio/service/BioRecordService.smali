.class public abstract Lcom/alipay/mobile/security/bio/service/BioRecordService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "BioRecordService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSequenceID()I
.end method

.method public abstract getUniqueID()Ljava/lang/String;
.end method

.method public abstract setExtProperty(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUniqueID(Ljava/lang/String;)V
.end method

.method public abstract write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V
.end method
