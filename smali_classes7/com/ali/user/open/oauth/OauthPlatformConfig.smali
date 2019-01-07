.class public Lcom/ali/user/open/oauth/OauthPlatformConfig;
.super Ljava/lang/Object;
.source "OauthPlatformConfig.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/oauth/AppCredential;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ali/user/open/oauth/OauthPlatformConfig;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOauthConfigByPlatform(Ljava/lang/String;)Lcom/ali/user/open/oauth/AppCredential;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ali/user/open/oauth/OauthPlatformConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/AppCredential;

    return-object v0
.end method

.method public static setOauthConfig(Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;)V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/ali/user/open/oauth/OauthPlatformConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method
