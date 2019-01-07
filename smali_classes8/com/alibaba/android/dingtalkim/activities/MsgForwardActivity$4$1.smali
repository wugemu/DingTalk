.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "forward cmail get msg fail code,"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason,"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    sget v1, Lctk$i;->im_encrypt_message_forward_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1654
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1631
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1631
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 2634
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    if-nez p1, :cond_1

    .line 2638
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "forward cmail get msg null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    sget v1, Lctk$i;->im_encrypt_message_forward_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2640
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2643
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2644
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 2645
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    goto :goto_0
.end method
