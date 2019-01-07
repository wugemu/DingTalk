.class public Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
.super Ljava/lang/Object;
.source "H5PresetPkg.java"


# instance fields
.field private preSetInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private presetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreSetInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->preSetInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getPresetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->presetPath:Ljava/lang/String;

    return-object v0
.end method

.method public setPreSetInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "preSetInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;>;"
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->preSetInfo:Ljava/util/Map;

    .line 29
    return-void
.end method

.method public setPresetPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "presetPath"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->presetPath:Ljava/lang/String;

    .line 21
    return-void
.end method
