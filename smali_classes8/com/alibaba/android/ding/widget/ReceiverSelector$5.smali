.class final Lcom/alibaba/android/ding/widget/ReceiverSelector$5;
.super Ljava/lang/Object;
.source "ReceiverSelector.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/ReceiverSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/ReceiverSelector;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$5;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 429
    if-nez p1, :cond_0

    .line 430
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[ReceiverSelector] showNameDesc userProfile is null"

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$5;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$5;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$5;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v0, v2, v3}, Lbka;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$5;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ReceiverSelector] showNameDesc failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 446
    return-void
.end method
