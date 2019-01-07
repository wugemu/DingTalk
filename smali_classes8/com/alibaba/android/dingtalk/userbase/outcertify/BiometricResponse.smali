.class public Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;
.super Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
.source "BiometricResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x8f4929435d75a5cL


# instance fields
.field private mMovementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->mMovementList:Ljava/util/List;

    return-object v0
.end method

.method public setMovementList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "movementList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->mMovementList:Ljava/util/List;

    .line 23
    return-void
.end method
