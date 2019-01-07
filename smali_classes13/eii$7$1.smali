.class final Leii$7$1;
.super Ljava/lang/Object;
.source "ConfigEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leii$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Leii$7;


# direct methods
.method constructor <init>(Leii$7;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Leii$7;

    .prologue
    .line 375
    iput-object p1, p0, Leii$7$1;->b:Leii$7;

    iput-object p2, p0, Leii$7$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    iget-object v2, p0, Leii$7$1;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leii$7$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    :cond_0
    return-void

    .line 383
    :cond_1
    const-string/jumbo v2, "ConfigEngine"

    const-string/jumbo v3, "ConfigEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getConf onDataReceived datasize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Leii$7$1;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Leii$7$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    .line 385
    .local v0, "configObject":Lcom/alibaba/android/rimet/biz/object/CsConfigObject;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    .line 386
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Leii$7$1;->b:Leii$7;

    iget-object v3, v3, Leii$7;->a:Leii;

    .line 387
    invoke-static {v3}, Leii;->c(Leii;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->data:Ljava/lang/String;

    .line 388
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 392
    iget-object v3, p0, Leii$7$1;->b:Leii$7;

    iget-object v3, v3, Leii$7;->a:Leii;

    invoke-static {v3}, Leii;->c(Leii;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leij;

    .line 393
    .local v1, "handler":Leij;
    iget-object v3, p0, Leii$7$1;->b:Leii$7;

    iget-object v3, v3, Leii$7;->a:Leii;

    new-instance v4, Leii$7$1$1;

    invoke-direct {v4, p0, v0}, Leii$7$1$1;-><init>(Leii$7$1;Lcom/alibaba/android/rimet/biz/object/CsConfigObject;)V

    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->data:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5}, Leii;->a(Leii;Lcma;Leij;Ljava/lang/String;)V

    goto :goto_0
.end method
