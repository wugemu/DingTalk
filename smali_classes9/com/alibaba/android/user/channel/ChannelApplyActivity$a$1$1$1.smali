.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;
.super Ljava/lang/Object;
.source "ChannelApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 1334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 380
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 2334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 380
    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lfbr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 3334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 381
    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->h(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->c:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .line 4334
    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 382
    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lfbr;

    move-result-object v0

    invoke-virtual {v0}, Lfbr;->notifyDataSetChanged()V

    .line 384
    :cond_0
    return-void
.end method
