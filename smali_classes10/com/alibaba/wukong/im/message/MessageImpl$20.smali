.class final Lcom/alibaba/wukong/im/message/MessageImpl$20;
.super Libp$a;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->doSendByMsgType(Ljava/lang/String;Lcom/alibaba/wukong/im/VideoCompress;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/alibaba/wukong/im/Uploader;

.field final synthetic e:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;JLcom/alibaba/wukong/im/Uploader;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "msgId"    # J

    .prologue
    .line 546
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$20;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$20;->d:Lcom/alibaba/wukong/im/Uploader;

    invoke-direct {p0, p2, p3, p4}, Libp$a;-><init>(Lcom/alibaba/wukong/Callback;J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$20;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$20;->d:Lcom/alibaba/wukong/im/Uploader;

    invoke-static {v0, v1, p1}, Libx;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Uploader;Lcom/alibaba/wukong/Callback;)V

    .line 550
    return-void
.end method
