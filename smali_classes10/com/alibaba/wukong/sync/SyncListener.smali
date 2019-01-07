.class public abstract Lcom/alibaba/wukong/sync/SyncListener;
.super Ljava/lang/Object;
.source "SyncListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mParamsType:[Ljava/lang/reflect/Type;

.field private mResultType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 4
    .param p1, "paramsType"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 15
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncListener;, "Lcom/alibaba/wukong/sync/SyncListener<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .local v1, "superType":Ljava/lang/reflect/Type;
    move-object v0, v1

    .line 17
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 18
    .local v0, "pt":Ljava/lang/reflect/ParameterizedType;
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncListener;->mParamsType:[Ljava/lang/reflect/Type;

    .line 19
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/alibaba/wukong/sync/SyncListener;->mResultType:Ljava/lang/reflect/Type;

    .line 20
    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 0
    .param p1, "paramsType"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncListener;, "Lcom/alibaba/wukong/sync/SyncListener<TResult;>;"
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncListener;->mParamsType:[Ljava/lang/reflect/Type;

    .line 24
    iput-object p2, p0, Lcom/alibaba/wukong/sync/SyncListener;->mResultType:Ljava/lang/reflect/Type;

    .line 25
    return-void
.end method


# virtual methods
.method public getParamsType()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncListener;, "Lcom/alibaba/wukong/sync/SyncListener<TResult;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncListener;->mParamsType:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getResultType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncListener;, "Lcom/alibaba/wukong/sync/SyncListener<TResult;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncListener;->mResultType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public abstract onResult(Lcom/alibaba/wukong/sync/SyncResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/sync/SyncResult",
            "<TResult;>;)V"
        }
    .end annotation
.end method
