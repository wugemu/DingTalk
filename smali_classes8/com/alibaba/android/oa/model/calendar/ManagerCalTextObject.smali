.class public Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
.super Ljava/lang/Object;
.source "ManagerCalTextObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3be8b247171aadb2L


# instance fields
.field public mContent:Ljava/lang/String;

.field public mTextColor:Ljava/lang/String;

.field public mTextSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lefo;)Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    .locals 3
    .param p0, "model"    # Lefo;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    .end local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    invoke-direct {v0}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;-><init>()V

    .line 40
    .restart local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    iget-object v1, p0, Lefo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mContent:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lefo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mTextColor:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lefo;->c:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 42
    iput v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->mTextSize:I

    .line 44
    :cond_0
    return-object v0
.end method

.method public static fromIDLModel(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lefo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lefo;>;"
    const/4 v2, 0x0

    .line 49
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;>;"
    if-eqz p0, :cond_1

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .restart local v2    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefo;

    .line 52
    .local v0, "model":Lefo;
    invoke-static {v0}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->fromIDLModel(Lefo;)Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    move-result-object v1

    .line 53
    .local v1, "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v0    # "model":Lefo;
    .end local v1    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;
    :cond_1
    return-object v2
.end method
