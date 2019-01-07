.class final Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$2;
.super Ljava/lang/Object;
.source "ActiveInviteActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$2;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$2;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$2;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$2;->a:Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Lffx;

    move-result-object v0

    const/4 v1, 0x1

    .line 1093
    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lffx;->a(ZI)V

    .line 112
    :cond_1
    return-void
.end method
