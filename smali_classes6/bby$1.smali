.class final Lbby$1;
.super Ljava/lang/Object;
.source "CommentDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbcg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lcma;

.field final synthetic c:Lbby;


# direct methods
.method constructor <init>(Lbby;Ljava/lang/Long;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbby;

    .prologue
    .line 30
    iput-object p1, p0, Lbby$1;->c:Lbby;

    iput-object p2, p0, Lbby$1;->a:Ljava/lang/Long;

    iput-object p3, p0, Lbby$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 30
    check-cast p1, Lbcg;

    .line 4033
    if-eqz p1, :cond_0

    .line 4034
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 4324
    iget-object v0, v0, Lbbp;->a:Lbbo;

    .line 4034
    iget-object v1, p0, Lbby$1;->a:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4034
    iget-object v1, p1, Lbcg;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p1, Lbcg;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    .line 5261
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 5262
    if-eqz v0, :cond_0

    .line 5263
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(J)V

    .line 5264
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(J)V

    .line 4036
    :cond_0
    iget-object v0, p0, Lbby$1;->c:Lbby;

    .line 6080
    const/4 v0, 0x0

    .line 6081
    if-eqz p1, :cond_3

    iget-object v1, p1, Lbcg;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 6082
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6083
    iget-object v0, p1, Lbcg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazk;

    .line 6084
    if-eqz v0, :cond_1

    .line 6085
    new-instance v3, Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {v3, v0}, Lcom/alibaba/android/ding/base/objects/CommentObject;-><init>(Lazk;)V

    .line 6086
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 4037
    :cond_3
    if-eqz v0, :cond_4

    .line 4038
    sget-object v1, Lbca;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4040
    :cond_4
    iget-object v1, p0, Lbby$1;->b:Lcma;

    invoke-static {v1, v0}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lbby$1;->b:Lcma;

    invoke-static {v0, p1, p2}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 45
    return-void
.end method
