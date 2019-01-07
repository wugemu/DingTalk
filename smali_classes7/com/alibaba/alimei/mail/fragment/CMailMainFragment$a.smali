.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$a;
.super Landroid/os/Handler;
.source "CMailMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$a;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 191
    .line 1186
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 192
    .local v0, "fragment":Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    .line 196
    .local v1, "what":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
