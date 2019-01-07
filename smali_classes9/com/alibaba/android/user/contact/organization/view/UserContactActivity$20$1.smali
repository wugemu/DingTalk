.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2453
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2435
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2435
    check-cast p1, Ljava/util/List;

    .line 3438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Member;

    .line 3440
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 3441
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 3442
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3444
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setRequestSelectList(Ljava/util/List;)V

    .line 3445
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;I)I

    .line 3446
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChooseLimit(I)V

    .line 3447
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20$1;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Z)V

    .line 2435
    return-void
.end method
