.class public Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
.super Ljava/lang/Object;
.source "CircleLoadParamObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ADMIN_LOAD_COUNT:I = 0xa

.field public static final FIRST_CURSOR:J = 0x7fffffffffffffffL

.field private static final serialVersionUID:J = -0x7d56095ae2e3ff81L


# instance fields
.field public count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cursor:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static firstParam(J)Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .locals 4
    .param p0, "uid"    # J

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;-><init>()V

    .line 57
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 58
    const/16 v1, 0xa

    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->count:I

    .line 59
    iput-wide p0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->uid:J

    .line 60
    return-object v0
.end method

.method public static fromIdl(Lfei;)Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .locals 6
    .param p0, "model"    # Lfei;

    .prologue
    const-wide/16 v4, 0x0

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;-><init>()V

    .line 38
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    iget-object v1, p0, Lfei;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 38
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 39
    iget-object v1, p0, Lfei;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 39
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->count:I

    .line 40
    iget-object v1, p0, Lfei;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 40
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->uid:J

    goto :goto_0
.end method


# virtual methods
.method public loadMore(J)V
    .locals 1
    .param p1, "createAt"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 31
    return-void
.end method

.method public toIdl()Lfei;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 45
    new-instance v0, Lfei;

    invoke-direct {v0}, Lfei;-><init>()V

    .line 46
    .local v0, "result":Lfei;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfei;->a:Ljava/lang/Long;

    .line 47
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfei;->b:Ljava/lang/Integer;

    .line 48
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfei;->c:Ljava/lang/Long;

    .line 49
    return-object v0
.end method
