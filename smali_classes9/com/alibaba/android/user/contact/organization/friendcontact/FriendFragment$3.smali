.class final Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "FriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$3;->a:Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$3;->a:Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->a(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)Lfjg;

    move-result-object v0

    invoke-virtual {v0}, Lfjg;->a()V

    .line 200
    return-void
.end method
