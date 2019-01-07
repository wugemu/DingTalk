.class public Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;
.super Ljava/lang/Object;
.source "PushUserResultExObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5b5dca3aabac4008L


# instance fields
.field public hasMore:Z

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

.field public offset:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

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

.method public static fromIdl(Leoy;)Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;
    .locals 5
    .param p0, "result"    # Leoy;

    .prologue
    const/4 v4, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;-><init>()V

    .line 32
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;
    iget-object v1, p0, Leoy;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 32
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->updateTime:J

    .line 33
    iget-object v1, p0, Leoy;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 33
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->size:I

    .line 34
    iget-object v1, p0, Leoy;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->objectList:Ljava/util/List;

    .line 35
    iget-object v1, p0, Leoy;->d:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 35
    iput-boolean v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->hasMore:Z

    .line 36
    iget-object v1, p0, Leoy;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->offset:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Leoy;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->sessionId:Ljava/lang/String;

    goto :goto_0
.end method
