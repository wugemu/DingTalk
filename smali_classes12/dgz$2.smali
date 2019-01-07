.class final Ldgz$2;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "SubConversationConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldgz;


# direct methods
.method constructor <init>(Ldgz;)V
    .locals 0
    .param p1, "this$0"    # Ldgz;

    .prologue
    .line 132
    iput-object p1, p0, Ldgz$2;->a:Ldgz;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntranceConfigurationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Ldgz$2;->a:Ldgz;

    invoke-static {v0, p1}, Ldgz;->a(Ldgz;Ljava/util/List;)V

    .line 141
    return-void
.end method

.method public final onEntrancedIdChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Ldgz$2;->a:Ldgz;

    invoke-static {v0, p1}, Ldgz;->a(Ldgz;Ljava/util/List;)V

    .line 136
    return-void
.end method
