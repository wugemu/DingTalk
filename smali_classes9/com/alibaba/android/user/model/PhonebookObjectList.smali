.class public Lcom/alibaba/android/user/model/PhonebookObjectList;
.super Ljava/lang/Object;
.source "PhonebookObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5de92dd26e04eb4dL


# instance fields
.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mPhonebookObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PhonebookObject;",
            ">;"
        }
    .end annotation
.end field

.field public nextCursor:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfpy;)Lcom/alibaba/android/user/model/PhonebookObjectList;
    .locals 6
    .param p0, "model"    # Lfpy;

    .prologue
    .line 30
    new-instance v2, Lcom/alibaba/android/user/model/PhonebookObjectList;

    invoke-direct {v2}, Lcom/alibaba/android/user/model/PhonebookObjectList;-><init>()V

    .line 31
    .local v2, "phoneObjectList":Lcom/alibaba/android/user/model/PhonebookObjectList;
    if-eqz p0, :cond_1

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v1, "phoneObjectArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PhonebookObject;>;"
    iget-object v3, p0, Lfpy;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 34
    iget-object v3, p0, Lfpy;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpx;

    .line 35
    .local v0, "phoneModel":Lfpx;
    invoke-static {v0}, Lcom/alibaba/android/user/model/PhonebookObject;->fromIdl(Lfpx;)Lcom/alibaba/android/user/model/PhonebookObject;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .end local v0    # "phoneModel":Lfpx;
    :cond_0
    iput-object v1, v2, Lcom/alibaba/android/user/model/PhonebookObjectList;->mPhonebookObjectList:Ljava/util/List;

    .line 39
    iget-object v3, p0, Lfpy;->c:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 39
    iput-wide v4, v2, Lcom/alibaba/android/user/model/PhonebookObjectList;->nextCursor:J

    .line 40
    iget-object v3, p0, Lfpy;->b:Ljava/lang/Boolean;

    .line 2022
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 40
    iput-boolean v3, v2, Lcom/alibaba/android/user/model/PhonebookObjectList;->hasMore:Z

    .line 42
    .end local v1    # "phoneObjectArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PhonebookObject;>;"
    :cond_1
    return-object v2
.end method
