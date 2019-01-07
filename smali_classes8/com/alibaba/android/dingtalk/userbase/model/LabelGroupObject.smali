.class public Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
.super Ljava/lang/Object;
.source "LabelGroupObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x299d705c00a948c6L


# instance fields
.field public color:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public labels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lceb;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    .locals 6
    .param p0, "model"    # Lceb;

    .prologue
    .line 54
    if-nez p0, :cond_1

    .line 55
    const/4 v1, 0x0

    .line 70
    :cond_0
    return-object v1

    .line 58
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;-><init>()V

    .line 59
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    iget-object v2, p0, Lceb;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 59
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    .line 60
    iget-object v2, p0, Lceb;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lceb;->c:Ljava/lang/Integer;

    .line 2033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 61
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->color:I

    .line 63
    iget-object v2, p0, Lceb;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    .line 65
    iget-object v2, p0, Lceb;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcec;

    .line 66
    .local v0, "labelModel":Lcec;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->fromIDLModel(Lcec;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;)Lceb;
    .locals 5
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .prologue
    .line 75
    if-nez p0, :cond_1

    .line 76
    const/4 v1, 0x0

    .line 91
    :cond_0
    return-object v1

    .line 79
    :cond_1
    new-instance v1, Lceb;

    invoke-direct {v1}, Lceb;-><init>()V

    .line 80
    .local v1, "model":Lceb;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lceb;->a:Ljava/lang/Long;

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    iput-object v2, v1, Lceb;->b:Ljava/lang/String;

    .line 82
    iget v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lceb;->c:Ljava/lang/Integer;

    .line 84
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lceb;->d:Ljava/util/List;

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 87
    .local v0, "labelObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    iget-object v3, v1, Lceb;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Lcec;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
