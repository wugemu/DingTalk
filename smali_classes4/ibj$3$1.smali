.class final Libj$3$1;
.super Ljava/lang/Object;
.source "GroupNickServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libj$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/GroupNickObject;

.field final synthetic b:Libj$3;


# direct methods
.method constructor <init>(Libj$3;Lcom/alibaba/wukong/im/GroupNickObject;)V
    .locals 0
    .param p1, "this$1"    # Libj$3;

    .prologue
    .line 107
    iput-object p1, p0, Libj$3$1;->b:Libj$3;

    iput-object p2, p0, Libj$3$1;->a:Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Libj$3$1;->b:Libj$3;

    iget-object v0, v0, Libj$3;->b:Libj;

    invoke-static {v0}, Libj;->a(Libj;)Libf;

    move-result-object v0

    iget-object v1, p0, Libj$3$1;->a:Lcom/alibaba/wukong/im/GroupNickObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Libf;->a(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/Callback;Z)V

    .line 111
    const-string/jumbo v1, "WKLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[groupNick]update group nick. result name:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Libj$3$1;->a:Lcom/alibaba/wukong/im/GroupNickObject;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 112
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "result tag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Libj$3$1;->a:Lcom/alibaba/wukong/im/GroupNickObject;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 114
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v1, v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Libj$3$1;->b:Libj$3;

    iget-object v0, v0, Libj$3;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v3}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 116
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Libj$3$1;->a:Lcom/alibaba/wukong/im/GroupNickObject;

    .line 112
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Libj$3$1;->a:Lcom/alibaba/wukong/im/GroupNickObject;

    .line 114
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method
