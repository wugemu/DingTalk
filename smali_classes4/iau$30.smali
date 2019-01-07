.class final Liau$30;
.super Ljava/lang/Object;
.source "ConversationEventPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liau;->a(Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Liau$30;->a:Lcom/alibaba/wukong/im/Conversation;

    iput p2, p0, Liau$30;->b:I

    iput-object p3, p0, Liau$30;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 621
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

    .line 622
    .local v0, "listener":Lcom/alibaba/wukong/im/ConversationChangeListener;
    iget-object v2, p0, Liau$30;->a:Lcom/alibaba/wukong/im/Conversation;

    iget v3, p0, Liau$30;->b:I

    iget-object v4, p0, Liau$30;->c:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onMemberRoleChange(Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V

    goto :goto_0

    .line 624
    .end local v0    # "listener":Lcom/alibaba/wukong/im/ConversationChangeListener;
    :cond_0
    return-void
.end method
