.class public interface abstract Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;
.super Ljava/lang/Object;
.source "PoolStatsTracker.java"


# static fields
.field public static final BUCKETS_USED_PREFIX:Ljava/lang/String; = "buckets_used_"

.field public static final FREE_BYTES:Ljava/lang/String; = "free_bytes"

.field public static final FREE_COUNT:Ljava/lang/String; = "free_count"

.field public static final HARD_CAP:Ljava/lang/String; = "hard_cap"

.field public static final SOFT_CAP:Ljava/lang/String; = "soft_cap"

.field public static final USED_BYTES:Ljava/lang/String; = "used_bytes"

.field public static final USED_COUNT:Ljava/lang/String; = "used_count"


# virtual methods
.method public abstract onAlloc(I)V
.end method

.method public abstract onFree(I)V
.end method

.method public abstract onHardCapReached()V
.end method

.method public abstract onSoftCapReached()V
.end method

.method public abstract onValueRelease(I)V
.end method

.method public abstract onValueReuse(I)V
.end method

.method public abstract setBasePool(Lcom/alibaba/doraemon/image/memory/BasePool;)V
.end method
