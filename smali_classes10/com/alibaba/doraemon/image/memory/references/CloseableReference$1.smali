.class final Lcom/alibaba/doraemon/image/memory/references/CloseableReference$1;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
        "<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final release(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "value"    # Ljava/io/Closeable;

    .prologue
    .line 69
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/alibaba/doraemon/image/utils/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference$1;->release(Ljava/io/Closeable;)V

    return-void
.end method
