.class public Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;
.super Ljava/lang/Object;
.source "PushUserResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x24bc03bcbdbe0b0dL


# instance fields
.field public objectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserObject;",
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

.method public static fromIdl(Leox;)Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;
    .locals 4
    .param p0, "result"    # Leox;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;-><init>()V

    .line 26
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;
    iget-object v1, p0, Leox;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 26
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->updateTime:J

    .line 27
    iget-object v1, p0, Leox;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 27
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->size:I

    .line 28
    iget-object v1, p0, Leox;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    goto :goto_0
.end method
