.class final Lflx$1;
.super Landroid/os/Handler;
.source "OrgHomePageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflx;


# direct methods
.method constructor <init>(Lflx;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lflx;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 42
    iput-object p1, p0, Lflx$1;->a:Lflx;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v2, p0, Lflx$1;->a:Lflx;

    .line 1111
    iget v0, v2, Lflx;->c:I

    mul-int/lit8 v3, v0, 0x1e

    .line 1113
    add-int/lit8 v0, v3, 0x1e

    .line 1114
    iget-object v1, v2, Lflx;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1115
    iget-object v0, v2, Lflx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1116
    const/4 v1, 0x2

    .line 1121
    :goto_1
    iget-object v4, v2, Lflx;->d:Ljava/util/List;

    invoke-interface {v4, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 1123
    new-instance v0, Lflx$3;

    invoke-direct {v0, v2, v1}, Lflx$3;-><init>(Lflx;I)V

    .line 1149
    const-class v1, Lcma;

    iget-object v2, v2, Lflx;->e:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1150
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lezs;->a(Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 1118
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 51
    :pswitch_1
    iget-object v0, p0, Lflx$1;->a:Lflx;

    .line 2154
    iget-object v1, v0, Lflx;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2158
    iget-object v1, v0, Lflx;->f:Lcma;

    if-eqz v1, :cond_0

    .line 2159
    iget-object v1, v0, Lflx;->f:Lcma;

    iget-object v0, v0, Lflx;->g:Ljava/util/List;

    invoke-static {v0}, Lfrq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
