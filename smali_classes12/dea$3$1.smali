.class final Ldea$3$1;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldea$3;


# direct methods
.method constructor <init>(Ldea$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ldea$3;

    .prologue
    .line 671
    iput-object p1, p0, Ldea$3$1;->b:Ldea$3;

    iput-object p2, p0, Ldea$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 674
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Ldea$3$1;->b:Ldea$3;

    iget-object v1, v1, Ldea$3;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldea$3$1;->b:Ldea$3;

    iget-object v1, v1, Ldea$3;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldea$3$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 677
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    iget-object v2, p0, Ldea$3$1;->b:Ldea$3;

    iget-object v2, v2, Ldea$3;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string/jumbo v1, "to"

    iget-object v2, p0, Ldea$3$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v2, p0, Ldea$3$1;->b:Ldea$3;

    iget-object v2, v2, Ldea$3;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 681
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Ldea$3$1;->b:Ldea$3;

    iget-object v1, v1, Ldea$3;->d:Ldea;

    .line 1095
    invoke-virtual {v1}, Ldea;->a()Ldiz;

    move-result-object v1

    .line 681
    invoke-virtual {v1, p1}, Ldiz;->a(Ljava/lang/Object;)V

    .line 683
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 692
    iget-object v0, p0, Ldea$3$1;->b:Ldea$3;

    iget-object v0, v0, Ldea$3;->d:Ldea;

    .line 2095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 692
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Ldea$3$1;->b:Ldea$3;

    iget-object v0, v0, Ldea$3;->d:Ldea;

    .line 3095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 693
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, p2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 688
    return-void
.end method
