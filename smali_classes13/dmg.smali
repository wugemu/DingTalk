.class public final Ldmg;
.super Ljava/lang/Object;
.source "ChaosSceneRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldmg$a;
    }
.end annotation


# instance fields
.field public a:Ldmd;

.field public b:Ldmd;

.field c:Ljava/lang/Runnable;

.field d:Ldmg$a;

.field private e:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

.field private f:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;


# direct methods
.method public constructor <init>(Ldmd;Ldmd;Ldmg$a;)V
    .locals 2
    .param p1, "quickPraiseRender"    # Ldmd;
    .param p2, "chatSceneRender"    # Ldmd;
    .param p3, "listener"    # Ldmg$a;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ldmg$1;

    invoke-direct {v0, p0}, Ldmg$1;-><init>(Ldmg;)V

    iput-object v0, p0, Ldmg;->e:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    .line 97
    new-instance v0, Ldmg$2;

    invoke-direct {v0, p0}, Ldmg$2;-><init>(Ldmg;)V

    iput-object v0, p0, Ldmg;->f:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    .line 25
    iput-object p1, p0, Ldmg;->a:Ldmd;

    .line 26
    iput-object p2, p0, Ldmg;->b:Ldmd;

    .line 27
    iput-object p3, p0, Ldmg;->d:Ldmg$a;

    .line 28
    iget-object v0, p0, Ldmg;->a:Ldmd;

    iget-object v1, p0, Ldmg;->e:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    .line 1040
    iput-object v1, v0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    .line 29
    iget-object v0, p0, Ldmg;->b:Ldmd;

    iget-object v1, p0, Ldmg;->f:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    .line 2040
    iput-object v1, v0, Ldmd;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$a;

    .line 30
    return-void
.end method

.method static synthetic a(Ldmg;)V
    .locals 1
    .param p0, "x0"    # Ldmg;

    .prologue
    .line 14
    .line 2090
    iget-object v0, p0, Ldmg;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Ldmg;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2092
    const/4 v0, 0x0

    iput-object v0, p0, Ldmg;->c:Ljava/lang/Runnable;

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ldmg;->a:Ldmd;

    invoke-virtual {v0}, Ldmd;->j()V

    .line 143
    iget-object v0, p0, Ldmg;->b:Ldmd;

    invoke-virtual {v0}, Ldmd;->j()V

    .line 144
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p1, :cond_0

    .line 39
    iget-object v0, p0, Ldmg;->a:Ldmd;

    invoke-virtual {v0, v1}, Ldmd;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 40
    iget-object v0, p0, Ldmg;->b:Ldmd;

    invoke-virtual {v0, v1}, Ldmd;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Ldmg;->a:Ldmd;

    invoke-virtual {v0, p1}, Ldmd;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 43
    invoke-static {p1}, Ldiz;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Ldmg;->b:Ldmd;

    invoke-virtual {v0, v1}, Ldmd;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Ldmg;->b:Ldmd;

    invoke-virtual {v0, p1}, Ldmd;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final a(Ldiz;)V
    .locals 1
    .param p1, "messageSender"    # Ldiz;

    .prologue
    .line 33
    iget-object v0, p0, Ldmg;->a:Ldmd;

    invoke-virtual {v0, p1}, Ldmd;->a(Ldiz;)V

    .line 34
    iget-object v0, p0, Ldmg;->b:Ldmd;

    invoke-virtual {v0, p1}, Ldmd;->a(Ldiz;)V

    .line 35
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
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
    .line 156
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Ldmg;->a:Ldmd;

    invoke-virtual {v0, p1}, Ldmd;->a(Ljava/util/List;)V

    .line 157
    iget-object v0, p0, Ldmg;->b:Ldmd;

    invoke-virtual {v0, p1}, Ldmd;->a(Ljava/util/List;)V

    .line 158
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 1
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
    .line 151
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Ldmg;->a:Ldmd;

    invoke-virtual {v0, p1, p2}, Ldmd;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 152
    iget-object v0, p0, Ldmg;->b:Ldmd;

    invoke-virtual {v0, p1, p2}, Ldmd;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 153
    return-void
.end method
