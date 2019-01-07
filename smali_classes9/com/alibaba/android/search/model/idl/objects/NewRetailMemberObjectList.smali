.class public Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;
.super Ljava/lang/Object;
.source "NewRetailMemberObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leps;",
            ">;"
        }
    .end annotation
.end field

.field public logMap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextCursor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public total:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lepj;)Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;
    .locals 11
    .param p0, "modelList"    # Lepj;

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return-object v3

    .line 50
    :cond_0
    new-instance v1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;-><init>()V

    .line 51
    .local v1, "object":Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;
    iget-object v2, p0, Lepj;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->list:Ljava/util/List;

    .line 53
    iget-object v2, p0, Lepj;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepi;

    .line 54
    .local v0, "memberModel":Lepi;
    iget-object v5, v1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->list:Ljava/util/List;

    .line 1042
    if-nez v0, :cond_1

    move-object v2, v3

    .line 54
    :goto_2
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1046
    :cond_1
    new-instance v2, Leps;

    invoke-direct {v2}, Leps;-><init>()V

    .line 1047
    iget-object v6, v0, Lepi;->a:Ljava/lang/String;

    iput-object v6, v2, Leps;->a:Ljava/lang/String;

    .line 1048
    iget-object v6, v0, Lepi;->b:Ljava/lang/Long;

    .line 2044
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 1048
    iput-wide v6, v2, Leps;->b:J

    .line 1049
    iget-object v6, v0, Lepi;->c:Ljava/lang/String;

    iput-object v6, v2, Leps;->c:Ljava/lang/String;

    .line 1050
    iget-object v6, v0, Lepi;->d:Ljava/lang/String;

    iput-object v6, v2, Leps;->d:Ljava/lang/String;

    .line 1051
    iget-object v6, v0, Lepi;->e:Ljava/lang/String;

    iput-object v6, v2, Leps;->e:Ljava/lang/String;

    goto :goto_2

    .line 57
    .end local v0    # "memberModel":Lepi;
    :cond_2
    iget-object v2, p0, Lepj;->b:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 57
    iput v2, v1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->total:I

    .line 58
    iget-object v2, p0, Lepj;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->nextCursor:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lepj;->e:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v2, v10}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 59
    iput-boolean v2, v1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->hasMore:Z

    .line 60
    iget-object v2, p0, Lepj;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->logMap:Ljava/lang/String;

    move-object v3, v1

    .line 62
    goto :goto_0
.end method
