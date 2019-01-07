.class final Lacv$c;
.super Landroid/os/Handler;
.source "CMailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lacv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lacv;)V
    .locals 1
    .param p1, "adapter"    # Lacv;

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacv$c;->a:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1138
    iget-object v2, p0, Lacv$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacv;

    .line 145
    .local v0, "adapter":Lacv;
    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    .line 150
    .local v1, "what":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-virtual {v0}, Lacv;->e()V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
