.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$1$1;
.super Ljava/lang/Object;
.source "ChannelApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lfbr;

    move-result-object v0

    invoke-virtual {v0}, Lfbr;->notifyDataSetChanged()V

    .line 91
    return-void
.end method
