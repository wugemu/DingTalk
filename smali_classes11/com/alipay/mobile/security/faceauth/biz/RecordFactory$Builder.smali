.class public Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;
.super Ljava/lang/Object;
.source "RecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/biz/RecordFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->a:Ljava/util/Map;

    .line 14
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    .line 18
    sget-object v0, Lcom/alipay/mobile/security/faceauth/config/Contacts;->DETECT_SERVICE_TYPE:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/security/faceauth/FaceServiceType;)V
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->a:Ljava/util/Map;

    .line 14
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    .line 24
    return-void
.end method


# virtual methods
.method public create()Lcom/alipay/mobile/security/faceauth/model/RecordService;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ServiceType must be setted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    sget-object v1, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$1;->a:[I

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/FaceServiceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    new-instance v0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;-><init>(Ljava/util/Map;)V

    .line 55
    .local v0, "service":Lcom/alipay/mobile/security/faceauth/model/RecordService;
    :goto_0
    return-object v0

    .line 47
    .end local v0    # "service":Lcom/alipay/mobile/security/faceauth/model/RecordService;
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;-><init>(Ljava/util/Map;)V

    .line 48
    .restart local v0    # "service":Lcom/alipay/mobile/security/faceauth/model/RecordService;
    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setParam(Ljava/util/Map;)Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->a:Ljava/util/Map;

    .line 33
    return-object p0
.end method

.method public setType(Lcom/alipay/mobile/security/faceauth/FaceServiceType;)Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordFactory$Builder;->b:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    .line 28
    return-object p0
.end method
