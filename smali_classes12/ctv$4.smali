.class final Lctv$4;
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
    .line 827
    iput-object p1, p0, Lctv$4;->a:Lctv;

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
    .line 830
    iget-object v2, p0, Lctv$4;->a:Lctv;

    iget-object v2, v2, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    .line 831
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 832
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    iget-object v2, p0, Lctv$4;->a:Lctv;

    iget-object v2, v2, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 833
    .local v1, "userProfileFromCache":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 834
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Lctv$4;->a:Lctv;

    iget-object v3, v3, Lctv;->d:Landroid/app/Activity;

    const-string/jumbo v4, "https://tms.dingtalk.com/markets/dingtalk/drobot?dd_nav_bgcolor=ff2E313D"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v1    # "userProfileFromCache":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    return-void
.end method
