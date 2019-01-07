.class final Libc$1$1;
.super Ljava/lang/Object;
.source "EntranceUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libc$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

.field final synthetic b:Libc$1;


# direct methods
.method constructor <init>(Libc$1;Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;)V
    .locals 0
    .param p1, "this$0"    # Libc$1;

    .prologue
    .line 38
    iput-object p1, p0, Libc$1$1;->b:Libc$1;

    iput-object p2, p0, Libc$1$1;->a:Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Libc$1$1;->b:Libc$1;

    iget-wide v2, v1, Libc$1;->a:J

    iget-object v1, p0, Libc$1$1;->a:Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    invoke-virtual {v0, v2, v3, v1}, Liar;->a(JLcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;)V

    .line 42
    return-void
.end method
