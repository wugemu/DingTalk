.class final Lhml$3;
.super Ljava/lang/Object;
.source "MiniAppInfoSPAccessor.java"

# interfaces
.implements Lhmf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhml;


# direct methods
.method constructor <init>(Lhml;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lhml;

    .prologue
    .line 155
    iput-object p1, p0, Lhml$3;->b:Lhml;

    iput-object p2, p0, Lhml$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .param p1, "localMiniAppModels"    # Ljava/util/List;
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "localMiniAppModels":Ljava/util/List;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local p1    # "localMiniAppModels":Ljava/util/List;
    :cond_0
    iget-object v0, p0, Lhml$3;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v0, p0, Lhml$3;->b:Lhml;

    .line 1077
    if-eqz p1, :cond_1

    .line 1080
    const-class v1, Lhml;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lhml$2;

    invoke-direct {v2, v0, p1}, Lhml$2;-><init>(Lhml;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 164
    :cond_1
    return-void
.end method
