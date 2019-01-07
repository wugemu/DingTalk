.class public Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;
.super Ljava/lang/Object;
.source "UserRightsVOObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public actionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lepn;)Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;
    .locals 2
    .param p0, "model"    # Lepn;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;-><init>()V

    .line 40
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;
    iget-object v1, p0, Lepn;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;->title:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lepn;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;->content:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lepn;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;->actionTitle:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lepn;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserRightsVOObject;->actionUrl:Ljava/lang/String;

    goto :goto_0
.end method
