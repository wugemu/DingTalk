.class public Lcom/alibaba/doraemon/impl/request/NoCache;
.super Ljava/lang/Object;
.source "NoCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/Cache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/Cache$Entry;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    .prologue
    .line 34
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method
