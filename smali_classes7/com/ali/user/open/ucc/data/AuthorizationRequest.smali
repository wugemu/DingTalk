.class public Lcom/ali/user/open/ucc/data/AuthorizationRequest;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# instance fields
.field public appName:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public ext:Ljava/util/Map;
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

.field public localSite:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public targetSite:Ljava/lang/String;

.field public userToken:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
