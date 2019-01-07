.class public Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;
.super Ljava/lang/Object;
.source "CirclePhotoContentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x162606346c8d722cL


# instance fields
.field public photos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfek;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;
    .locals 2
    .param p0, "model"    # Lfek;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;-><init>()V

    .line 30
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;
    iget-object v1, p0, Lfek;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->fromSNPhotoModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->photos:Ljava/util/List;

    goto :goto_0
.end method

.method private static fromSNPhotoModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lfel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 44
    :cond_1
    return-object v1

    .line 38
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfel;

    .line 40
    .local v0, "model":Lfel;
    if-eqz v0, :cond_3

    .line 41
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->fromIdl(Lfel;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;)Lfek;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lfek;

    invoke-direct {v0}, Lfek;-><init>()V

    .line 65
    .local v0, "result":Lfek;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->photos:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->toSNPhotoObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lfek;->a:Ljava/util/List;

    goto :goto_0
.end method

.method private static toSNPhotoObjectList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lfel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 57
    :cond_1
    return-object v1

    .line 51
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lfel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 53
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    if-eqz v0, :cond_3

    .line 54
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lfel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
