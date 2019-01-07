.class final Lcam$a$2;
.super Ljava/lang/Object;
.source "RedPacketsReceiverListAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcam$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcgc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcam$a;


# direct methods
.method constructor <init>(Lcam$a;)V
    .locals 0
    .param p1, "this$1"    # Lcam$a;

    .prologue
    .line 93
    iput-object p1, p0, Lcam$a$2;->a:Lcam$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 93
    check-cast p1, Lcgc;

    .line 1096
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcgc;->b:Lcet;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    iget-object v0, v0, Lcam$a;->c:Lcam;

    invoke-static {v0}, Lcam;->a(Lcam;)Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p1, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1098
    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v1}, Lcam$a;->b(Lcam$a;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v4}, Lcam$a;->b(Lcam$a;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-static {v4}, Lcam;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcam$a$2$1;

    invoke-direct {v1, p0, p1}, Lcam$a$2$1;-><init>(Lcam$a$2;Lcgc;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    .line 1108
    :cond_2
    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v1}, Lcam$a;->b(Lcam$a;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v1}, Lcam$a;->b(Lcam$a;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    invoke-static {v1}, Lcam;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v1}, Lcam$a;->b(Lcam$a;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v0}, Lcam$a;->a(Lcam$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcam$a$2;->a:Lcam$a;

    invoke-static {v1}, Lcam$a;->b(Lcam$a;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    invoke-static {v1}, Lcam;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 117
    return-void
.end method
