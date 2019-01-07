.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;->onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqt;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;Lgqt;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->a:Lgqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 708
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 709
    new-instance v0, Lgrc;

    invoke-direct {v0}, Lgrc;-><init>()V

    .line 710
    .local v0, "param":Lgrc;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1084
    iput-object v1, v0, Lgrc;->d:Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1116
    iput-object v1, v0, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 712
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;->b:Z

    .line 1124
    iput-boolean v1, v0, Lgrc;->i:Z

    .line 713
    const/4 v1, 0x1

    .line 2092
    iput-boolean v1, v0, Lgrc;->e:Z

    .line 714
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1$1;->a:Lgqt;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    .line 716
    .end local v0    # "param":Lgrc;
    :cond_0
    return-void
.end method
