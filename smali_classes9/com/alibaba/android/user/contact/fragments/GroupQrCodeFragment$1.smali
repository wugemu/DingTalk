.class final Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$1;
.super Ljava/lang/Object;
.source "GroupQrCodeFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 216
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 192
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1200
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->a(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->a(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->b(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;)V

    goto :goto_0
.end method
