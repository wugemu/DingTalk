.class final Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;
.super Ljava/lang/Object;
.source "DocScanForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->onError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqt;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;Lgqt;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->a:Lgqt;

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
    .line 212
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    new-instance v0, Lgrc;

    invoke-direct {v0}, Lgrc;-><init>()V

    .line 215
    .local v0, "param":Lgrc;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1084
    iput-object v1, v0, Lgrc;->d:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1116
    iput-object v1, v0, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 217
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->b:Z

    .line 1124
    iput-boolean v1, v0, Lgrc;->i:Z

    .line 218
    const/4 v1, 0x1

    .line 2092
    iput-boolean v1, v0, Lgrc;->e:Z

    .line 219
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->b:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;->a:Lgqt;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    .line 222
    .end local v0    # "param":Lgrc;
    :cond_0
    return-void
.end method
