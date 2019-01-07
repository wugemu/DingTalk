.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;
.super Ljava/lang/Object;
.source "FCRemindManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;->run()V
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
        "Lhhd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    check-cast p1, Ljava/util/List;

    .line 1273
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;->a:Lcma;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1275
    :goto_0
    return-void

    .line 1277
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

    check-cast v0, Lhhd;

    .line 1278
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1279
    new-instance v2, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;

    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;-><init>(Ljava/lang/String;Z)V

    .line 1280
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1283
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;->a:Lcma;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3;->a:Lcma;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$3$1;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 289
    return-void
.end method
