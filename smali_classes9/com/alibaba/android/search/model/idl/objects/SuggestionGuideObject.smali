.class public final Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;
.super Ljava/lang/Object;
.source "SuggestionGuideObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14c0d0b1bb013559L


# instance fields
.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jumpUrl:Ljava/lang/String;
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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lepk;)Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;
    .locals 4
    .param p0, "model"    # Lepk;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;-><init>()V

    .line 33
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;
    iget-object v1, p0, Lepk;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 33
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->id:J

    .line 34
    iget-object v1, p0, Lepk;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->title:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lepk;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObject;->jumpUrl:Ljava/lang/String;

    goto :goto_0
.end method
