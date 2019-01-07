.class final Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;
.super Ljava/lang/Object;
.source "DocScanForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->d:Ljava/lang/String;

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
    .line 133
    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->a:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v3, "taskes":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v5}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 136
    .local v0, "isEncrypt":Z
    new-instance v2, Lgrc;

    invoke-direct {v2}, Lgrc;-><init>()V

    .line 137
    .local v2, "param":Lgrc;
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1084
    iput-object v4, v2, Lgrc;->d:Ljava/lang/String;

    .line 138
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1116
    iput-object v4, v2, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 1124
    iput-boolean v0, v2, Lgrc;->i:Z

    .line 140
    const/4 v4, 0x1

    .line 2092
    iput-boolean v4, v2, Lgrc;->e:Z

    .line 142
    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;

    invoke-direct {v1, p0, v3, v0}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;Ljava/util/LinkedList;Z)V

    .line 234
    .local v1, "listener":Lgqt;
    const-class v4, Lgqt;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lgqt;
    check-cast v1, Lgqt;

    .line 235
    .restart local v1    # "listener":Lgqt;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v4, v5, v2, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    .line 236
    return-void
.end method
