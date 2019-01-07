.class public Lcom/ali/user/enterprise/base/data/MemberRequestBase;
.super Ljava/lang/Object;
.source "MemberRequestBase.java"


# instance fields
.field public appName:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public ext:Ljava/util/Map;
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

.field public locale:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public site:I

.field public sysExt:Ljava/util/Map;
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

.field public ttid:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
