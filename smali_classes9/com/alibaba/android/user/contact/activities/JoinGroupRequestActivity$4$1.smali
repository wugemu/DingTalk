.class final Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;
.super Ljava/lang/Object;
.source "JoinGroupRequestActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->dismissLoadingDialog()V

    .line 176
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 162
    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->dismissLoadingDialog()V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->f(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->g(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Lfgn;

    move-result-object v0

    invoke-virtual {v0}, Lfgn;->notifyDataSetChanged()V

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->h(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V

    .line 162
    return-void
.end method
