.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Ldru$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 674
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->supportInvalidateOptionsMenu()V

    .line 675
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Z)V

    .line 676
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b()V

    .line 677
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->f()V

    .line 678
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .line 4599
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v1, :cond_0

    .line 4600
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .line 680
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 667
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZLdru;)V

    .line 670
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->supportInvalidateOptionsMenu()V

    .line 699
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .line 700
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "anim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 684
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A:Ldrk;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A:Ldrk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldrk;->c(Z)V

    .line 687
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
    .line 691
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A:Ldrk;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A:Ldrk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldrk;->d(Z)V

    .line 694
    :cond_0
    return-void
.end method
