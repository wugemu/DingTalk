.class final Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;
.super Landroid/os/Handler;
.source "CMailAllSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    .line 83
    .local v0, "what":I
    sparse-switch v0, :sswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 85
    :sswitch_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;I)I

    .line 86
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;I)I

    .line 90
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V

    goto :goto_0

    .line 93
    :sswitch_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;I)I

    .line 94
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V

    goto :goto_0

    .line 97
    :sswitch_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x800

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 100
    :sswitch_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Lacu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Lacu;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->e(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacu;->e(Ljava/util/List;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Lacu;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->f(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacu;->f(Ljava/util/List;)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Lacu;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacu;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x400 -> :sswitch_3
        0x800 -> :sswitch_4
    .end sparse-switch
.end method
