.class final Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;
.super Ljava/lang/Object;
.source "MessageRecipientsSelectResultActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;->b:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 209
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1212
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    .line 1213
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 226
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 221
    return-void
.end method
