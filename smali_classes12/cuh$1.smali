.class final Lcuh$1;
.super Ljava/lang/Object;
.source "CombinedPraiseViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuh;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcuh;


# direct methods
.method constructor <init>(Lcuh;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcuh;

    .prologue
    .line 61
    iput-object p1, p0, Lcuh$1;->b:Lcuh;

    iput-object p2, p0, Lcuh$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "userProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcuh$1;->a:Landroid/app/Activity;

    .line 67
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v3}, Ldjl;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    .line 66
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Z)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcuh$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method
