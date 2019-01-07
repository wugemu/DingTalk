.class public Lcom/ali/user/enterprise/base/data/AliUserResponseData;
.super Ljava/lang/Object;
.source "AliUserResponseData.java"


# instance fields
.field public alipayHid:J

.field public autoLoginToken:Ljava/lang/String;

.field public cookies:[Ljava/lang/String;

.field public ecode:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public expires:J

.field public extendAttribute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public externalCookies:[Ljava/lang/String;

.field public havanaId:J

.field public havanaSsoToken:Ljava/lang/String;

.field public havanaSsoTokenExpiredTime:J

.field public headPicLink:Ljava/lang/String;

.field public loginPhone:Ljava/lang/String;

.field public loginServiceExt:Ljava/util/Map;
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

.field public loginTime:J

.field public nick:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public ssoToken:Ljava/lang/String;

.field public uidDigest:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
