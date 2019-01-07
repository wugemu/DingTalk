.class final Ldwt$a;
.super Ljava/lang/Object;
.source "RecruitmentExtraInfoFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ldwz;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldwt;


# direct methods
.method private constructor <init>(Ldwt;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Ldwt$a;->a:Ldwt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldwt;B)V
    .locals 0
    .param p1, "x0"    # Ldwt;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Ldwt$a;-><init>(Ldwt;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    check-cast p1, Ljava/util/List;

    .line 4160
    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 5040
    iget-boolean v0, v0, Ldwt;->f:Z

    .line 4160
    if-nez v0, :cond_3

    .line 4164
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 6040
    iget-object v0, v0, Ldwt;->c:Ljava/util/Map;

    .line 4164
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4165
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4167
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwz;

    .line 4169
    if-eqz v0, :cond_0

    .line 4170
    iget-wide v4, v0, Ldwz;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4172
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4177
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Ldwt$a;->a:Ldwt;

    .line 7040
    iget-object v2, v2, Ldwt;->c:Ljava/util/Map;

    .line 4177
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4178
    iget-object v2, p0, Ldwt$a;->a:Ldwt;

    .line 8040
    iget-object v2, v2, Ldwt;->d:Ljava/util/Set;

    .line 4178
    iget-object v3, p0, Ldwt$a;->a:Ldwt;

    .line 9040
    iget-object v3, v3, Ldwt;->c:Ljava/util/Map;

    .line 4178
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4179
    iget-object v2, p0, Ldwt$a;->a:Ldwt;

    .line 10040
    iget-object v2, v2, Ldwt;->c:Ljava/util/Map;

    .line 4179
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 4181
    iget-object v2, p0, Ldwt$a;->a:Ldwt;

    .line 11040
    iget-object v2, v2, Ldwt;->b:Ljava/util/Map;

    .line 4181
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4182
    iget-object v2, p0, Ldwt$a;->a:Ldwt;

    .line 12040
    iget-object v2, v2, Ldwt;->a:Landroid/os/Handler;

    .line 4182
    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4185
    :cond_2
    iget-object v2, p0, Ldwt$a;->a:Ldwt;

    .line 13040
    iget-object v2, v2, Ldwt;->a:Landroid/os/Handler;

    .line 4185
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4186
    iget-object v2, p0, Ldwt$a;->a:Ldwt;

    .line 14040
    iget-object v2, v2, Ldwt;->a:Landroid/os/Handler;

    .line 4186
    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4188
    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 15040
    iget-object v0, v0, Ldwt;->e:Ldwq;

    .line 4188
    if-eqz v0, :cond_3

    .line 4189
    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 16040
    iget-object v0, v0, Ldwt;->e:Ldwq;

    .line 4189
    invoke-interface {v0, p1, v1}, Ldwq;->a(Ljava/util/List;Ljava/util/Set;)V

    .line 155
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 1040
    iget-boolean v0, v0, Ldwt;->f:Z

    .line 202
    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 2040
    iget-object v0, v0, Ldwt;->c:Ljava/util/Map;

    .line 205
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 3040
    iget-object v0, v0, Ldwt;->b:Ljava/util/Map;

    .line 206
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Ldwt$a;->a:Ldwt;

    .line 4040
    iget-object v0, v0, Ldwt;->a:Landroid/os/Handler;

    .line 207
    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 196
    return-void
.end method
