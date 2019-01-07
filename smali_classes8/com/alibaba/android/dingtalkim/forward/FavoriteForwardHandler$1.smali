.class final Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;
.super Ljava/lang/Object;
.source "FavoriteForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->a:Ldiz;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

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
    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;)V

    .line 87
    .local v0, "eventListener":Lcma;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eventListener":Lcma;
    check-cast v0, Lcma;

    .line 90
    .restart local v0    # "eventListener":Lcma;
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 92
    return-void
.end method
