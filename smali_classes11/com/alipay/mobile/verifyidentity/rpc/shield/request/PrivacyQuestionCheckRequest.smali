.class public Lcom/alipay/mobile/verifyidentity/rpc/shield/request/PrivacyQuestionCheckRequest;
.super Ljava/lang/Object;
.source "PrivacyQuestionCheckRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7c9b8555675dcc22L


# instance fields
.field public privacyQuestionAnswerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/verifyidentity/rpc/shield/request/PrivacyQuestionAnswerView;",
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/shield/request/PrivacyQuestionCheckRequest;->privacyQuestionAnswerViews:Ljava/util/List;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
