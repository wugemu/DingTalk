.class final Libi$a$1$1;
.super Ljava/lang/Object;
.source "GroupNickFetchTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libi$a$1;->run()V
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
.field final synthetic a:Libi$a$1;


# direct methods
.method constructor <init>(Libi$a$1;)V
    .locals 0
    .param p1, "this$2"    # Libi$a$1;

    .prologue
    .line 93
    iput-object p1, p0, Libi$a$1$1;->a:Libi$a$1;

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
    .line 102
    const-string/jumbo v0, "WKLog"

    const-string/jumbo v1, "[groupNick]bulkFetch: fail."

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    check-cast p1, Ljava/util/List;

    .line 1096
    const-string/jumbo v1, "WKLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[groupNick]bulkFetch. result num:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2018
    const-string/jumbo v2, "im"

    invoke-static {v1, v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Libj;->a()Lcom/alibaba/wukong/im/GroupNickService;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Libi$a$1$1;->a:Libi$a$1;

    iget-object v2, v2, Libi$a$1;->c:Libi$a;

    iget-object v2, v2, Libi$a;->a:Libi;

    invoke-static {v2}, Libi;->d(Libi;)Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/alibaba/wukong/im/GroupNickService;->updateLocalGroupNicks(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V

    .line 93
    return-void

    .line 1096
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
