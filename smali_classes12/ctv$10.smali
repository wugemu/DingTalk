.class final Lctv$10;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lctv;


# direct methods
.method constructor <init>(Lctv;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lctv;

    .prologue
    .line 483
    iput-object p1, p0, Lctv$10;->d:Lctv;

    iput-object p2, p0, Lctv$10;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lctv$10;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object p4, p0, Lctv$10;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 486
    iget-object v1, p0, Lctv$10;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lctv$10;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.msg.at"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "user"

    iget-object v2, p0, Lctv$10;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 489
    iget-object v1, p0, Lctv$10;->c:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 491
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
