.class public interface abstract Lcom/alibaba/doraemon/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final CACHE_ARTIFACT:Ljava/lang/String; = "CACHE"


# virtual methods
.method public abstract appendHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z
.end method

.method public abstract clear()Z
.end method

.method public abstract close()V
.end method

.method public abstract getCacheSize()J
.end method

.method public abstract has(Ljava/lang/String;)Z
.end method

.method public abstract read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract setAppCacheFactor(F)V
.end method

.method public abstract setCacheDir(Ljava/lang/String;)V
.end method

.method public abstract setSdcardFactor(F)V
.end method

.method public abstract wirteHuge(Ljava/lang/String;JLjava/io/InputStream;Z[B)Z
.end method

.method public abstract wirteHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z
.end method

.method public abstract write(Ljava/lang/String;[BI[B)Z
.end method

.method public abstract write(Ljava/lang/String;[B[B)Z
.end method
