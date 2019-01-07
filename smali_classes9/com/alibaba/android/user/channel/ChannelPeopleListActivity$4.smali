.class final Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$4;
.super Ljava/lang/Object;
.source "ChannelPeopleListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcfc;

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Lcfc;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$4;->a:Lcfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$4;->b:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$4;->a:Lcfc;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Lcfc;)V

    .line 184
    :cond_0
    return-void
.end method
