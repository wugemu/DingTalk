.class public Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
.super Ljava/lang/Exception;
.source "AuthorizationServiceDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationServiceDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissingArgumentException"
.end annotation


# instance fields
.field private mMissingField:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Missing mandatory configuration field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;->mMissingField:Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method public getMissingField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;->mMissingField:Ljava/lang/String;

    return-object v0
.end method
