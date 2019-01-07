.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48$1;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;JLcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;

    .prologue
    .line 3058
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48$1;->c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48$1;->a:J

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3061
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48$1;->c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3062
    const-string/jumbo v0, "intent_key_time_stamp"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48$1;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3063
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3064
    return-object p1
.end method
