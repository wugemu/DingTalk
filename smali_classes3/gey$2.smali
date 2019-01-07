.class final Lgey$2;
.super Ljava/lang/Object;
.source "SpaceLinkSharePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgey;->a()V
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgey;


# direct methods
.method constructor <init>(Lgey;)V
    .locals 0
    .param p1, "this$0"    # Lgey;

    .prologue
    .line 127
    iput-object p1, p0, Lgey$2;->a:Lgey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 127
    check-cast p1, Ljava/util/List;

    .line 2130
    iget-object v0, p0, Lgey$2;->a:Lgey;

    .line 3035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 2130
    invoke-interface {v0}, Lgex$b;->i()V

    .line 2131
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2140
    iget-object v2, p0, Lgey$2;->a:Lgey;

    .line 4035
    iget-object v2, v2, Lgey;->c:Ljava/util/Map;

    .line 2140
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 2141
    iget-object v2, p0, Lgey$2;->a:Lgey;

    .line 5035
    iget-object v2, v2, Lgey;->b:Ljava/util/List;

    .line 2141
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2144
    :cond_3
    iget-object v0, p0, Lgey$2;->a:Lgey;

    .line 6035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 2144
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgex$b;->b(I)V

    .line 2145
    iget-object v0, p0, Lgey$2;->a:Lgey;

    .line 7035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 2145
    iget-object v1, p0, Lgey$2;->a:Lgey;

    .line 8035
    iget-object v1, v1, Lgey;->b:Ljava/util/List;

    .line 2145
    const/4 v2, 0x0

    iget-object v3, p0, Lgey$2;->a:Lgey;

    .line 9035
    iget-boolean v3, v3, Lgey;->e:Z

    .line 2145
    invoke-interface {v0, v1, v2, v3}, Lgex$b;->a(Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lgey$2;->a:Lgey;

    .line 1035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 155
    invoke-interface {v0, p1, p2}, Lgex$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lgey$2;->a:Lgey;

    .line 2035
    iget-object v0, v0, Lgey;->a:Lgex$b;

    .line 156
    invoke-interface {v0}, Lgex$b;->i()V

    .line 157
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 151
    return-void
.end method
