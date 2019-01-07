.class final Lcom/alibaba/android/user/channel/ChannelInviteActivity$3;
.super Ljava/lang/Object;
.source "ChannelInviteActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelInviteActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelInviteActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelInviteActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelInviteActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity$3;->b:Lcom/alibaba/android/user/channel/ChannelInviteActivity;

    iput p2, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 173
    const-string/jumbo v0, "intent_key_channel_external_people"

    iget v1, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity$3;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity$3;->b:Lcom/alibaba/android/user/channel/ChannelInviteActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->a(Lcom/alibaba/android/user/channel/ChannelInviteActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    return-object p1
.end method
