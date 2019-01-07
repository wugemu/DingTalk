.class final Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$1;
.super Landroid/os/Handler;
.source "BusinessUserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
