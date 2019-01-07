.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lckl;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lckl;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->b:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->c:Lckl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 650
    .line 1653
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;->c:Lckl;

    .line 2039
    iget-object v1, v1, Lckl;->d:Ljava/lang/String;

    .line 1656
    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 650
    :cond_0
    return-void
.end method
