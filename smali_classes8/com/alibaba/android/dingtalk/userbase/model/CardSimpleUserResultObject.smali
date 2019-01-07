.class public Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;
.super Ljava/lang/Object;
.source "CardSimpleUserResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xdb202d088f50bd6L


# instance fields
.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public offset:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public total:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lchc;)Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;
    .locals 7
    .param p0, "model"    # Lchc;

    .prologue
    const/4 v6, 0x0

    .line 34
    if-nez p0, :cond_1

    .line 35
    const/4 v0, 0x0

    .line 47
    :cond_0
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;-><init>()V

    .line 38
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;
    iget-object v2, p0, Lchc;->c:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 38
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;->hasMore:Z

    .line 39
    iget-object v2, p0, Lchc;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 39
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;->offset:J

    .line 40
    iget-object v2, p0, Lchc;->d:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 40
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;->total:I

    .line 41
    iget-object v2, p0, Lchc;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lchc;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;->userList:Ljava/util/List;

    .line 43
    iget-object v2, p0, Lchc;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchb;

    .line 44
    .local v1, "userModel":Lchb;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserResultObject;->userList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->fromIdl(Lchb;)Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
