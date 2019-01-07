.class public Lcom/alibaba/android/user/model/RealVerifyStepItemObject;
.super Ljava/lang/Object;
.source "RealVerifyStepItemObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x20caee7254ba8708L


# instance fields
.field public code:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public properties:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lfqc;)Lcom/alibaba/android/user/model/RealVerifyStepItemObject;
    .locals 6
    .param p0, "model"    # Lfqc;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "object":Lcom/alibaba/android/user/model/RealVerifyStepItemObject;
    if-eqz p0, :cond_0

    .line 50
    new-instance v1, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;

    .end local v1    # "object":Lcom/alibaba/android/user/model/RealVerifyStepItemObject;
    invoke-direct {v1}, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;-><init>()V

    .line 51
    .restart local v1    # "object":Lcom/alibaba/android/user/model/RealVerifyStepItemObject;
    iget-object v2, p0, Lfqc;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 51
    iput-wide v2, v1, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->code:J

    .line 52
    iget-object v2, p0, Lfqc;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->name:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lfqc;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->desc:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lfqc;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->properties:Ljava/util/List;

    .line 57
    iget-object v2, p0, Lfqc;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqe;

    .line 58
    .local v0, "model1":Lfqe;
    iget-object v3, v1, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->properties:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->fromIDL(Lfqe;)Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v0    # "model1":Lfqe;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public toIDL()Lfqc;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    new-instance v0, Lfqc;

    invoke-direct {v0}, Lfqc;-><init>()V

    .line 67
    .local v0, "model":Lfqc;
    iget-wide v2, p0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->code:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lfqc;->a:Ljava/lang/Long;

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->name:Ljava/lang/String;

    iput-object v2, v0, Lfqc;->b:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->desc:Ljava/lang/String;

    iput-object v2, v0, Lfqc;->c:Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->properties:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lfqc;->d:Ljava/util/List;

    .line 73
    iget-object v2, p0, Lcom/alibaba/android/user/model/RealVerifyStepItemObject;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;

    .line 74
    .local v1, "object":Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;
    iget-object v3, v0, Lfqc;->d:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;->toIDL()Lfqe;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v1    # "object":Lcom/alibaba/android/user/model/RealVerifyStepPropertyObject;
    :cond_0
    return-object v0
.end method
