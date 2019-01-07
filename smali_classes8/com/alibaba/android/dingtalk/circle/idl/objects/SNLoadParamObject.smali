.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
.super Ljava/lang/Object;
.source "SNLoadParamObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ADMIN_LOAD_COUNT:I = 0xa

.field public static final FIRST_CURSOR:J = 0x7fffffffffffffffL

.field private static final serialVersionUID:J = -0x7d56095ae2e3ff81L


# instance fields
.field public count:I

.field public cursor:J

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static firstParam(J)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .locals 4
    .param p0, "uid"    # J

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;-><init>()V

    .line 49
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 50
    const/16 v1, 0xa

    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->count:I

    .line 51
    iput-wide p0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->uid:J

    .line 52
    return-object v0
.end method

.method public static fromIdl(Lbpl;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .locals 6
    .param p0, "model"    # Lbpl;

    .prologue
    const-wide/16 v4, 0x0

    .line 27
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;-><init>()V

    .line 29
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    iget-object v1, p0, Lbpl;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 29
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 30
    iget-object v1, p0, Lbpl;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 30
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->count:I

    .line 31
    iget-object v1, p0, Lbpl;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 31
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->uid:J

    goto :goto_0
.end method


# virtual methods
.method public loadMore(J)V
    .locals 1
    .param p1, "createAt"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 24
    return-void
.end method

.method public toIdl()Lbpl;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 36
    new-instance v0, Lbpl;

    invoke-direct {v0}, Lbpl;-><init>()V

    .line 37
    .local v0, "result":Lbpl;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbpl;->a:Ljava/lang/Long;

    .line 38
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbpl;->b:Ljava/lang/Integer;

    .line 39
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbpl;->c:Ljava/lang/Long;

    .line 40
    return-object v0
.end method
