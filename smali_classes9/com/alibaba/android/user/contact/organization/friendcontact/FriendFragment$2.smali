.class final Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$2;
.super Ljava/lang/Object;
.source "FriendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k()V
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
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$2;->a:Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$2;->a:Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->a(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)Lfjg;

    move-result-object v0

    .line 1046
    iget-object v0, v0, Lfjg;->b:Ljava/util/List;

    .line 183
    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$2;->a:Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->a(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)Lfjg;

    move-result-object v0

    invoke-virtual {v0}, Lfjg;->a()V

    .line 186
    :cond_0
    return-void
.end method
