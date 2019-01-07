.class public Lcom/alipay/mobile/security/bio/bean/FaceConstant;
.super Ljava/lang/Object;
.source "FaceConstant.java"


# static fields
.field public static ClientVersion:Ljava/lang/String;

.field public static FaceSDK_Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "c:6.9;d:6.8;v:6.8"

    sput-object v0, Lcom/alipay/mobile/security/bio/bean/FaceConstant;->ClientVersion:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "2.4.1"

    sput-object v0, Lcom/alipay/mobile/security/bio/bean/FaceConstant;->FaceSDK_Version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
