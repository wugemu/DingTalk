.class public Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;
.super Ljava/lang/Object;
.source "SuggestionGuideObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6b3403d3bab827f5L


# instance fields
.field public hasMore:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
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

.field public suggestionGuideModels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lepl;)Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;
    .locals 6
    .param p0, "model"    # Lepl;

    .prologue
    const/4 v5, 0x0

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;-><init>()V

    .line 56
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;
    iget-object v2, p0, Lepl;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->suggestionGuideModels:Ljava/util/List;

    .line 58
    iget-object v2, p0, Lepl;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lepk;

    .line 59
    .local v1, "suggestionGuideModel":Lepk;
    iget-object v3, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->suggestionGuideModels:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->fromIDLModel(Lepk;)Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    .end local v1    # "suggestionGuideModel":Lepk;
    :cond_1
    iget-object v2, p0, Lepl;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->totalCount:Ljava/lang/Integer;

    .line 63
    iget-object v2, p0, Lepl;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->nextCursor:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lepl;->e:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->hasMore:Ljava/lang/Boolean;

    .line 65
    iget-object v2, p0, Lepl;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;->logMap:Ljava/lang/String;

    goto :goto_0
.end method
