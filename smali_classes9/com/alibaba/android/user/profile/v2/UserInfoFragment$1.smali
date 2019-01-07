.class final Lcom/alibaba/android/user/profile/v2/UserInfoFragment$1;
.super Landroid/os/Handler;
.source "UserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserInfoFragment;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
