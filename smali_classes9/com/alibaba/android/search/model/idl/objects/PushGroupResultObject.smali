.class public Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;
.super Ljava/lang/Object;
.source "PushGroupResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64a0402fae84fc6fL


# instance fields
.field public objectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;",
            ">;"
        }
    .end annotation
.end field

.field public size:I

.field public updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Leov;)Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;
    .locals 4
    .param p0, "model"    # Leov;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;-><init>()V

    .line 28
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;
    iget-object v1, p0, Leov;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 28
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->updateTime:J

    .line 29
    iget-object v1, p0, Leov;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 29
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->size:I

    .line 30
    iget-object v1, p0, Leov;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->objectList:Ljava/util/List;

    goto :goto_0
.end method
