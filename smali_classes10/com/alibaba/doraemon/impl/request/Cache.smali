.class interface abstract Lcom/alibaba/doraemon/impl/request/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;
.end method

.method public abstract put(Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/Cache$Entry;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract setCacheDir(Ljava/lang/String;)V
.end method
