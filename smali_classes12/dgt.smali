.class public final Ldgt;
.super Ljava/lang/Object;
.source "ChatListDetailViewHolderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;Z)Ldgl;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "viewType"    # Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 14
    sget-object v0, Ldgt$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ldgr;

    invoke-direct {v0, p0, p2}, Ldgr;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Ldgo;

    invoke-direct {v0, p0, p2}, Ldgo;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 18
    :pswitch_1
    new-instance v0, Ldgn;

    invoke-direct {v0, p0, p2}, Ldgn;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 20
    :pswitch_2
    new-instance v0, Ldgm;

    invoke-direct {v0, p0, p2}, Ldgm;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 22
    :pswitch_3
    new-instance v0, Ldgp;

    invoke-direct {v0, p0, p2}, Ldgp;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 24
    :pswitch_4
    new-instance v0, Ldgq;

    invoke-direct {v0, p0, p2}, Ldgq;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
