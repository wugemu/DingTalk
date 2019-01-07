.class final Lfkw$1;
.super Landroid/os/Handler;
.source "OrgMemberQrcodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkw;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkv$b;Lfkw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfkw;


# direct methods
.method constructor <init>(Lfkw;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lfkw;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 52
    iput-object p1, p0, Lfkw$1;->a:Lfkw;

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
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    return-void

    .line 57
    :pswitch_0
    iget-object v1, p0, Lfkw$1;->a:Lfkw;

    .line 1156
    new-instance v0, Lfkw$4;

    invoke-direct {v0, v1}, Lfkw$4;-><init>(Lfkw;)V

    .line 1176
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    iget-object v4, v1, Lfkw;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1178
    invoke-static {}, Lfax;->a()Lfaa;

    move-result-object v2

    iget-object v1, v1, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->code:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lfaa;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
