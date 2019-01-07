.class final Lgey$1;
.super Ljava/lang/Object;
.source "SpaceLinkSharePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgey;->a(IZ)V
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
        "Lgod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgey;


# direct methods
.method constructor <init>(Lgey;)V
    .locals 0
    .param p1, "this$0"    # Lgey;

    .prologue
    .line 58
    iput-object p1, p0, Lgey$1;->a:Lgey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 58
    check-cast p1, Lgod;

    .line 1061
    if-nez p1, :cond_0

    .line 1062
    iget-object v0, p0, Lgey$1;->a:Lgey;

    .line 2035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 1062
    iget-object v2, p0, Lgey$1;->a:Lgey;

    .line 3035
    iget-object v2, v2, Lgey;->b:Ljava/util/List;

    .line 1062
    invoke-interface {v0, v2, v3, v1}, Lgex$b;->a(Ljava/util/List;Ljava/util/List;Z)V

    .line 1070
    :goto_0
    return-void

    .line 4029
    :cond_0
    iget-object v2, p1, Lgod;->a:Ljava/util/List;

    .line 1068
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    :cond_1
    iget-object v0, p0, Lgey$1;->a:Lgey;

    .line 4035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 1069
    iget-object v2, p0, Lgey$1;->a:Lgey;

    .line 5035
    iget-object v2, v2, Lgey;->b:Ljava/util/List;

    .line 1069
    invoke-interface {v0, v2, v3, v1}, Lgex$b;->a(Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_0

    .line 1073
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 1074
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1078
    iget-object v4, p0, Lgey$1;->a:Lgey;

    .line 6035
    iget-object v4, v4, Lgey;->c:Ljava/util/Map;

    .line 1078
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShortLink()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1081
    :cond_4
    iget-object v0, p0, Lgey$1;->a:Lgey;

    .line 7035
    iget-object v0, v0, Lgey;->b:Ljava/util/List;

    .line 1081
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1083
    iget-object v3, p0, Lgey$1;->a:Lgey;

    .line 7037
    iget-wide v4, p1, Lgod;->b:J

    .line 1083
    iget-object v0, p0, Lgey$1;->a:Lgey;

    .line 8035
    iget-object v0, v0, Lgey;->b:Ljava/util/List;

    .line 1083
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 9035
    :goto_2
    iput-boolean v0, v3, Lgey;->e:Z

    .line 1085
    iget-object v0, p0, Lgey$1;->a:Lgey;

    iget-object v1, p0, Lgey$1;->a:Lgey;

    .line 10035
    iget v1, v1, Lgey;->d:I

    .line 1085
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 11035
    iput v1, v0, Lgey;->d:I

    .line 1086
    iget-object v0, p0, Lgey$1;->a:Lgey;

    .line 12035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 1086
    iget-object v1, p0, Lgey$1;->a:Lgey;

    .line 13035
    iget-object v1, v1, Lgey;->b:Ljava/util/List;

    .line 1086
    iget-object v3, p0, Lgey$1;->a:Lgey;

    .line 14035
    iget-boolean v3, v3, Lgey;->e:Z

    .line 1086
    invoke-interface {v0, v1, v2, v3}, Lgex$b;->a(Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1083
    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lgey$1;->a:Lgey;

    .line 1035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 96
    invoke-interface {v0, p1, p2}, Lgex$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 92
    return-void
.end method
