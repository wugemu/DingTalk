.class public Lcom/alipay/mobile/verifyidentity/rpc/shield/response/PrivacyQuestionQueryResult;
.super Ljava/lang/Object;
.source "PrivacyQuestionQueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38046021f96b54f7L


# instance fields
.field public privacyQuestionQueryView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/verifyidentity/rpc/shield/response/PrivacyQuestionView;",
            ">;"
        }
    .end annotation
.end field

.field public sceneCode:Ljava/lang/String;

.field public strategyId:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
