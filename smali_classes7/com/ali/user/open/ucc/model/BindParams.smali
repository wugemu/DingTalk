.class public Lcom/ali/user/open/ucc/model/BindParams;
.super Ljava/lang/Object;
.source "BindParams.java"


# instance fields
.field public bindSite:Ljava/lang/String;

.field public bindUserToken:Ljava/lang/String;

.field public bindUserTokenType:Ljava/lang/String;

.field public createBindSiteSession:Z

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

.field public ivToken:Ljava/lang/String;

.field public requestToken:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public site:Ljava/lang/String;

.field public userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
