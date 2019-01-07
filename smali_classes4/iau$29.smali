.class final Liau$29;
.super Ljava/lang/Object;
.source "ConversationEventPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liau;->A(Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Liau$29;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 609
    invoke-static {}, Liau;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 610
    .local v0, "listener":Lcom/alibaba/wukong/im/ConversationChangeListener;
    iget-object v2, p0, Liau$29;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onGroupOwnerChange(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 612
    .end local v0    # "listener":Lcom/alibaba/wukong/im/ConversationChangeListener;
    :cond_0
    return-void
.end method
