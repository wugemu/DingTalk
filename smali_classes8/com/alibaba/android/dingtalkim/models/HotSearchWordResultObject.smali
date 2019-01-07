.class public Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
.super Ljava/lang/Object;
.source "HotSearchWordResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1339cba54cdf59a7L


# instance fields
.field public hotSearchWords:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hotSearchWords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;",
            ">;"
        }
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "version"
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

.method public static fromIdl(Ldtu;)Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    .locals 4
    .param p0, "model"    # Ldtu;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;-><init>()V

    .line 28
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    iget-object v1, p0, Ldtu;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 28
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->version:J

    .line 29
    iget-object v1, p0, Ldtu;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/idl/HotSearchWordObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;-><init>()V

    .line 35
    .local v0, "copiedObject":Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->version:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->version:J

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    .line 39
    :cond_0
    return-object v0
.end method
