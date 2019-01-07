.class public final Lhkn;
.super Ljava/lang/Object;
.source "OAFastCheckScheduleContextObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhkn;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lhju;)Lhkn;
    .locals 4
    .param p0, "model"    # Lhju;

    .prologue
    .line 36
    if-nez p0, :cond_1

    .line 37
    const/4 v1, 0x0

    .line 49
    :cond_0
    return-object v1

    .line 40
    :cond_1
    new-instance v1, Lhkn;

    invoke-direct {v1}, Lhkn;-><init>()V

    .line 41
    .local v1, "object":Lhkn;
    iget-object v2, p0, Lhju;->a:Ljava/lang/String;

    iput-object v2, v1, Lhkn;->a:Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lhju;->b:Ljava/lang/Boolean;

    .line 1022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 42
    iput-boolean v2, v1, Lhkn;->b:Z

    .line 43
    iget-object v2, p0, Lhju;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lhju;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 45
    iget-object v3, v1, Lhkn;->c:Ljava/util/List;

    iget-object v2, p0, Lhju;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhjs;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->fromIDLModel(Lhjs;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
