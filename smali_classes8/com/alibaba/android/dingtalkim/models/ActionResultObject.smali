.class public final Lcom/alibaba/android/dingtalkim/models/ActionResultObject;
.super Ljava/lang/Object;
.source "ActionResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x742fc9f00cadb753L


# instance fields
.field public failureActionModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ActionObject;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public success:Z

.field public successActionModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ActionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doConvert(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldsg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ActionObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Ldsg;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 37
    :cond_1
    return-object v1

    .line 32
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/ActionObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsg;

    .line 34
    .local v0, "model":Ldsg;
    if-eqz v0, :cond_3

    .line 35
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ActionObject;->fromModelIDL(Ldsg;)Lcom/alibaba/android/dingtalkim/models/ActionObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromIdl(Ldsh;)Lcom/alibaba/android/dingtalkim/models/ActionResultObject;
    .locals 3
    .param p0, "actionResultModel"    # Ldsh;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;-><init>()V

    .line 23
    .local v0, "result":Lcom/alibaba/android/dingtalkim/models/ActionResultObject;
    iget-object v1, p0, Ldsh;->a:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 23
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->success:Z

    .line 24
    iget-object v1, p0, Ldsh;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->doConvert(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->successActionModels:Ljava/util/List;

    .line 25
    iget-object v1, p0, Ldsh;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->doConvert(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->failureActionModels:Ljava/util/List;

    .line 26
    iget-object v1, p0, Ldsh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->message:Ljava/lang/String;

    goto :goto_0
.end method
