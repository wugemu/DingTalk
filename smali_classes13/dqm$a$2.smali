.class final Ldqm$a$2;
.super Ljava/lang/Object;
.source "BurnChatModel.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqm$a;->a(Lcom/alibaba/wukong/im/Conversation;)V
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
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ldqm$a;


# direct methods
.method constructor <init>(Ldqm$a;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Ldqm$a;

    .prologue
    .line 165
    iput-object p1, p0, Ldqm$a$2;->b:Ldqm$a;

    iput-object p2, p0, Ldqm$a$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Ldqm$a$2;->b:Ldqm$a;

    .line 1103
    iget-boolean v0, v0, Ldqm$a;->a:Z

    .line 180
    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Ldqm$a$2;->b:Ldqm$a;

    invoke-virtual {v0, p1, p2}, Ldqm$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 165
    .line 1168
    iget-object v0, p0, Ldqm$a$2;->b:Ldqm$a;

    .line 2103
    iget-boolean v0, v0, Ldqm$a;->a:Z

    .line 1168
    if-nez v0, :cond_0

    .line 1171
    const-wide/16 v0, 0x4

    iget-object v2, p0, Ldqm$a$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1172
    iget-object v0, p0, Ldqm$a$2;->b:Ldqm$a;

    iget-object v1, p0, Ldqm$a$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldqm$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    iget-object v0, p0, Ldqm$a$2;->b:Ldqm$a;

    invoke-virtual {v0, v4, v4}, Ldqm$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
