.class public Lcom/alibaba/android/user/model/OrgEmpMobileObject;
.super Ljava/lang/Object;
.source "OrgEmpMobileObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5b2981022ca667cfL


# instance fields
.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public warnMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfpe;)Lcom/alibaba/android/user/model/OrgEmpMobileObject;
    .locals 2
    .param p0, "model"    # Lfpe;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/OrgEmpMobileObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgEmpMobileObject;-><init>()V

    .line 32
    .local v0, "object":Lcom/alibaba/android/user/model/OrgEmpMobileObject;
    iget-object v1, p0, Lfpe;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lfpe;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->warnMsg:Ljava/lang/String;

    goto :goto_0
.end method
