.class final Lczf$1;
.super Ljava/lang/Object;
.source "UserNamecardViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lczf;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lczf;


# direct methods
.method constructor <init>(Lczf;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lczf;

    .prologue
    .line 64
    iput-object p1, p0, Lczf$1;->b:Lczf;

    iput-object p2, p0, Lczf$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x5

    .line 67
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8df3\u8f6c\u7528\u6237\uff1auid\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lczf$1;->b:Lczf;

    invoke-static {v1}, Lczf;->a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lczf$1;->b:Lczf;

    iget-object v1, v1, Lczf;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v7

    .line 72
    .local v7, "userProfileFromCache":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v7, :cond_1

    iget v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    if-ne v0, v4, :cond_1

    .line 73
    iget-object v0, p0, Lczf$1;->b:Lczf;

    iget-object v1, p0, Lczf$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lczf$1;->b:Lczf;

    invoke-static {v2}, Lczf;->a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    invoke-static {v0, v1, v2, v3}, Lczf;->a(Lczf;Landroid/app/Activity;J)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lczf$1;->b:Lczf;

    invoke-static {v0}, Lczf;->a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->type:I

    if-ne v0, v4, :cond_2

    .line 77
    iget-object v0, p0, Lczf$1;->b:Lczf;

    iget-object v1, p0, Lczf$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lczf$1;->b:Lczf;

    invoke-static {v2}, Lczf;->a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    invoke-static {v0, v1, v2, v3}, Lczf;->a(Lczf;Landroid/app/Activity;J)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lczf$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lczf$1;->b:Lczf;

    invoke-static {v2}, Lczf;->a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    iget-object v4, p0, Lczf$1;->b:Lczf;

    invoke-static {v4}, Lczf;->a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->phone:Ljava/lang/String;

    iget-object v5, p0, Lczf$1;->b:Lczf;

    invoke-static {v5}, Lczf;->a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
