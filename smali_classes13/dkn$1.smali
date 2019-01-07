.class final Ldkn$1;
.super Ljava/lang/Object;
.source "SendNameAppenderImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkn;->getSendName(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
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
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ldkn;


# direct methods
.method constructor <init>(Ldkn;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Ldkn;

    .prologue
    .line 30
    iput-object p1, p0, Ldkn$1;->b:Ldkn;

    iput-object p2, p0, Ldkn$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Ldkn$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    check-cast p1, Lckl;

    .line 1033
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Ldkn$1;->a:Lcom/alibaba/wukong/Callback;

    .line 1039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1034
    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Ldkn$1;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
