.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 645
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 646
    .local v6, "taskes":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 647
    .local v5, "showSomeNotSupported":Z
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$1400(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 648
    .local v1, "fileUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v8, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$400(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Ldhw;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 650
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 652
    :cond_0
    const/4 v5, 0x1

    .line 654
    goto :goto_0

    .line 655
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "fileUri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 656
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$1500(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 657
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    .line 764
    :cond_2
    :goto_1
    return-void

    .line 660
    :cond_3
    if-eqz v5, :cond_4

    .line 661
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$700(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    .line 665
    :cond_4
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 666
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v7, v8}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    .line 668
    .local v2, "isEncrypt":Z
    new-instance v4, Lgrc;

    invoke-direct {v4}, Lgrc;-><init>()V

    .line 669
    .local v4, "param":Lgrc;
    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1084
    iput-object v7, v4, Lgrc;->d:Ljava/lang/String;

    .line 670
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1116
    iput-object v7, v4, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 1124
    iput-boolean v2, v4, Lgrc;->i:Z

    .line 672
    const/4 v7, 0x1

    .line 2092
    iput-boolean v7, v4, Lgrc;->e:Z

    .line 674
    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;

    invoke-direct {v3, p0, v6, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;Ljava/util/LinkedList;Z)V

    .line 761
    .local v3, "listener":Lgqt;
    const-class v7, Lgqt;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3, v7, v8}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lgqt;
    check-cast v3, Lgqt;

    .line 762
    .restart local v3    # "listener":Lgqt;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$3;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v7, v8, v4, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    goto :goto_1
.end method
