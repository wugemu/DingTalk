.class final Libj$6;
.super Ljava/lang/Object;
.source "GroupNickServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libj;->listGroupNicks(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Libj;


# direct methods
.method constructor <init>(Libj;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Libj;

    .prologue
    .line 160
    iput-object p1, p0, Libj$6;->b:Libj;

    iput-object p2, p0, Libj$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 172
    const-string/jumbo v0, "WKLog"

    const-string/jumbo v1, "[groupNick]bulk fetch group nick fail."

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Libj$6;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Libj$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 160
    check-cast p1, Ljava/util/List;

    .line 1163
    iget-object v1, p0, Libj$6;->b:Libj;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Libj;->updateLocalGroupNicks(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V

    .line 1164
    const-string/jumbo v1, "WKLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[groupNick]bulk fetch group nick. result size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2018
    const-string/jumbo v2, "im"

    invoke-static {v1, v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Libj$6;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Libj$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 160
    :cond_1
    return-void
.end method
