.class final Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;
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
        "Lcom/alibaba/wukong/im/CodeInfo;",
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
    .line 282
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 282
    check-cast p1, Lcom/alibaba/wukong/im/CodeInfo;

    .line 1290
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/CodeInfo;->getShortLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/CodeInfo;->getOriginalLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "generate group link empty"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :cond_1
    :goto_0
    return-void

    .line 1298
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/CodeInfo;->getShortLink()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/CodeInfo;->getOriginalLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->b(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
