.class final Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;
.super Ljava/lang/Object;
.source "GroupLinkFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1191
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->i(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    goto :goto_0
.end method
