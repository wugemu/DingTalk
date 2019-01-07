.class public Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;
.super Ljava/lang/Exception;
.source "RegistrationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/RegistrationResponse;
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
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Missing mandatory registration field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;->mMissingField:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public getMissingField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lnet/openid/appauth/RegistrationResponse$MissingArgumentException;->mMissingField:Ljava/lang/String;

    return-object v0
.end method
