.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 2155
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2137
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2137
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 3140
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 3141
    if-eqz p1, :cond_0

    .line 3144
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 3149
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 2137
    :cond_0
    return-void

    .line 3147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
