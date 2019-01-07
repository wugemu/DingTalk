.class public abstract Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "RecordExtService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRetryID()Ljava/lang/String;
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

.method public abstract setRetryID(Ljava/lang/String;)V
.end method

.method public abstract setUniqueID(Ljava/lang/String;)V
.end method

.method public abstract write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;)V
.end method

.method public abstract write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
