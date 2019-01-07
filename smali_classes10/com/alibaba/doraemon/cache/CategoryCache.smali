.class public abstract Lcom/alibaba/doraemon/cache/CategoryCache;
.super Ljava/lang/Object;
.source "CategoryCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/cache/Cache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hasCategorys(Ljava/lang/String;)[I
.end method

.method public read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/cache/CategoryCache;->read(Ljava/lang/String;I)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v0

    return-object v0
.end method

.method public abstract read(Ljava/lang/String;I)Lcom/alibaba/doraemon/cache/CacheEntity;
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/cache/CategoryCache;->remove(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public abstract remove(Ljava/lang/String;I)Z
.end method

.method public abstract write(Ljava/lang/String;I[B[B)Z
.end method

.method public write(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/alibaba/doraemon/cache/CategoryCache;->write(Ljava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/String;[B[B)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "description"    # [B

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/doraemon/cache/CategoryCache;->write(Ljava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method
