.class public Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
.super Ljava/lang/Object;
.source "CircleScopeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SCOPE_INVISIBLE:I = 0x4

.field public static final SCOPE_PRIVATE:I = 0x2

.field public static final SCOPE_PUBLIC:I = 0x1

.field public static final SCOPE_VISIBLE:I = 0x3

.field private static final serialVersionUID:J = -0x7019d8ce0319344fL


# instance fields
.field public orgRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public tagList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uidList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static fromIdl(Lfep;)Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
    .locals 3
    .param p0, "model"    # Lfep;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;-><init>()V

    .line 67
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
    iget-object v1, p0, Lfep;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 67
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    .line 68
    iget-object v1, p0, Lfep;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->tagList:Ljava/util/List;

    .line 69
    iget-object v1, p0, Lfep;->c:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->uidList:Ljava/util/List;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;)Lfep;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lfep;

    invoke-direct {v0}, Lfep;-><init>()V

    .line 56
    .local v0, "model":Lfep;
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfep;->a:Ljava/lang/Integer;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->tagList:Ljava/util/List;

    iput-object v1, v0, Lfep;->b:Ljava/util/List;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->uidList:Ljava/util/List;

    iput-object v1, v0, Lfep;->c:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getOrgId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->orgRanges:Ljava/util/List;

    .line 75
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-wide/16 v2, -0x1

    .line 79
    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method
