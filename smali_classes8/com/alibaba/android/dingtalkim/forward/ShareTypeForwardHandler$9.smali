.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendTextMessage(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ldiz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->a:Ldiz;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->a:Ldiz;

    const/4 v1, 0x0

    .line 1131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->a:Ldiz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 384
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->a:Ldiz;

    const/4 v1, 0x0

    .line 2131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->a:Ldiz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 379
    return-void
.end method
