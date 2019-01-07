.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendLinkMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ldiz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;->a:Ldiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 617
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;->a:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$1000(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$1100(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$1200(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$1300(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 618
    return-void
.end method
