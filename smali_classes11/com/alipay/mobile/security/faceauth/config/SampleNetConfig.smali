.class public Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;
.super Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;
.source "SampleNetConfig.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/config/ActionNetConfig;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSamplemodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->a:Ljava/util/List;

    return-object v0
.end method

.method public setSamplemodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "samplemodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/config/SampleNetConfig;->a:Ljava/util/List;

    .line 15
    return-void
.end method
