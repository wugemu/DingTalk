.class public Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
.super Ljava/lang/Object;
.source "BioMetaInfo.java"


# static fields
.field public static final SAMPLE_MODE_ENROLL:I = 0x12c

.field public static final SAMPLE_MODE_FACE_LOGIN:I = 0x12f

.field public static final SAMPLE_MODE_FACE_SAMPLE:I = 0x12e

.field public static final SAMPLE_MODE_VERIFY:I = 0x12d

.field public static final TYPE_EYE:I = 0x65

.field public static final TYPE_FACE:I = 0x64

.field public static final TYPE_FACE_EYE:I = 0xc9

.field public static final TYPE_FACE_VOICE:I = 0xca

.field public static final TYPE_HANDWRITING:I = 0x67

.field public static final TYPE_IDCARD:I = 0x6c

.field public static final TYPE_IDFACE:I = 0xc8

.field public static final TYPE_IDPAPERS:I = 0x6b

.field public static final TYPE_PAPERS:I = 0x6d

.field public static final TYPE_VOICE:I = 0x66


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioAppDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->a:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addApplication(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V
    .locals 1
    .param p1, "app"    # Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V
    .locals 1
    .param p1, "description"    # Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public getApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioAppDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->b:Ljava/util/List;

    return-object v0
.end method

.method public getExtServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioServiceDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->a:Ljava/util/List;

    return-object v0
.end method
