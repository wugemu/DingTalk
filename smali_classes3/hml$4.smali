.class public final Lhml$4;
.super Ljava/lang/Object;
.source "MiniAppInfoSPAccessor.java"

# interfaces
.implements Lhml$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhml;


# direct methods
.method public constructor <init>(Lhml;)V
    .locals 0
    .param p1, "this$0"    # Lhml;

    .prologue
    .line 171
    iput-object p1, p0, Lhml$4;->a:Lhml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .param p1, "miniAppModelList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Lhml$4;->a:Lhml;

    .line 1151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    new-instance v1, Lhml$3;

    invoke-direct {v1, v0, p1}, Lhml$3;-><init>(Lhml;Ljava/util/List;)V

    .line 2044
    const-string/jumbo v2, "MiniAppInfoSPAccessor"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lhml$1;

    invoke-direct {v3, v0, v1}, Lhml$1;-><init>(Lhml;Lhmf;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
