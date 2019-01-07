.class final Lctv$5;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lctv;


# direct methods
.method constructor <init>(Lctv;)V
    .locals 0
    .param p1, "this$0"    # Lctv;

    .prologue
    .line 840
    iput-object p1, p0, Lctv$5;->a:Lctv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 843
    iget-object v3, p0, Lctv$5;->a:Lctv;

    iget-object v3, v3, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_0

    .line 844
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v3, v4}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 845
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    iget-object v3, p0, Lctv$5;->a:Lctv;

    iget-object v3, v3, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 846
    .local v2, "userProfileFromCache":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 858
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v2    # "userProfileFromCache":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    :goto_0
    return-void

    .line 850
    .restart local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .restart local v2    # "userProfileFromCache":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 853
    iget-object v3, p0, Lctv$5;->a:Lctv;

    iget-object v3, v3, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v2, v3}, Ldjl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v1

    .line 854
    .local v1, "orgInfo":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->corpId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 855
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lctv$5;->a:Lctv;

    iget-object v4, v4, Lctv;->d:Landroid/app/Activity;

    const-string/jumbo v5, "imchatMessage"

    invoke-virtual {v3, v4, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V

    goto :goto_0
.end method
