.class public abstract Ldmd;
.super Ljava/lang/Object;
.source "BaseSceneRender.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender;


# instance fields
.field a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

.field protected b:Ldiz;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 31
    iput-object p1, p0, Ldmd;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 32
    iget-object v0, p0, Ldmd;->d:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ldmd;->c:Ljava/lang/String;

    .line 33
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Ldmd;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ldiz;)V
    .locals 0
    .param p1, "chatMessageSender"    # Ldiz;

    .prologue
    .line 23
    iput-object p1, p0, Ldmd;->b:Ldiz;

    .line 24
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 0
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;->a()V

    .line 47
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;->b()V

    .line 53
    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected final w_()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;->c()V

    .line 59
    :cond_0
    return-void
.end method

.method protected final x_()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;->d()V

    .line 65
    :cond_0
    return-void
.end method
