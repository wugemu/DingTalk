.class public final Lzq$1;
.super Ljava/lang/Object;
.source "VideoHelper.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzq;


# direct methods
.method public constructor <init>(Lzq;)V
    .locals 0
    .param p1, "this$0"    # Lzq;

    .prologue
    .line 73
    iput-object p1, p0, Lzq$1;->a:Lzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 130
    const-string/jumbo v0, "VideoHelper"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lzq$1$2;

    invoke-direct {v1, p0, p1, p2}, Lzq$1$2;-><init>(Lzq$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 73
    .line 1142
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "compress progress"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 73
    .line 2078
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "MediaEncode"

    new-instance v2, Lzq$1$1;

    invoke-direct {v2, p0}, Lzq$1$1;-><init>(Lzq$1;)V

    invoke-virtual {v0, v1, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 73
    return-void
.end method
