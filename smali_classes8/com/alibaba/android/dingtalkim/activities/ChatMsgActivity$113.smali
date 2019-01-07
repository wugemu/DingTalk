.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldru$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3703
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 3714
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    .line 3715
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    .line 3716
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->n()V

    .line 3717
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v()V

    .line 3718
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 8959
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v1, :cond_0

    .line 8960
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    .line 8962
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v1, :cond_1

    .line 8963
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    .line 3719
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(Z)V

    .line 3720
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3708
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZLdru;)V

    .line 3710
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    .line 3739
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(Z)V

    .line 3740
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "anim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A:Ldrk;

    if-eqz v0, :cond_0

    .line 3725
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A:Ldrk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldrk;->c(Z)V

    .line 3727
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "anim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A:Ldrk;

    if-eqz v0, :cond_0

    .line 3732
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A:Ldrk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldrk;->d(Z)V

    .line 3734
    :cond_0
    return-void
.end method
