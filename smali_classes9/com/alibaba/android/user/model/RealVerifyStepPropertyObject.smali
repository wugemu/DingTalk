.class public Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;
.super Ljava/lang/Object;
.source "RealVerifyStepPropertyObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x24459ed70a36b7e5L


# instance fields
.field public code:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public optional:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lfqe;)Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;
    .locals 4
    .param p0, "model"    # Lfqe;

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "object":Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;
    if-eqz p0, :cond_0

    .line 44
    new-instance v0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;

    .end local v0    # "object":Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;
    invoke-direct {v0}, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;-><init>()V

    .line 45
    .restart local v0    # "object":Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;
    iget-object v1, p0, Lfqe;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 45
    iput-wide v2, v0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->code:J

    .line 46
    iget-object v1, p0, Lfqe;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->name:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lfqe;->c:Ljava/lang/Boolean;

    .line 2022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 47
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->optional:Z

    .line 49
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toIDL()Lfqe;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    new-instance v0, Lfqe;

    invoke-direct {v0}, Lfqe;-><init>()V

    .line 54
    .local v0, "model":Lfqe;
    iget-wide v2, p0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->code:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfqe;->a:Ljava/lang/Long;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfqe;->b:Ljava/lang/String;

    .line 56
    iget-boolean v1, p0, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->optional:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lfqe;->c:Ljava/lang/Boolean;

    .line 57
    return-object v0
.end method
