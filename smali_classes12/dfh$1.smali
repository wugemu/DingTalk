.class final Ldfh$1;
.super Ljava/lang/Object;
.source "RedpacketPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfh;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldfh;


# direct methods
.method constructor <init>(Ldfh;)V
    .locals 0
    .param p1, "this$0"    # Ldfh;

    .prologue
    .line 62
    iput-object p1, p0, Ldfh$1;->a:Ldfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    .line 3065
    iget-object v0, p0, Ldfh$1;->a:Ldfh;

    .line 4024
    iget-object v0, v0, Ldfh;->b:Ldfg$b;

    .line 3065
    invoke-interface {v0}, Ldfg$b;->H_()V

    .line 3067
    const-string/jumbo v1, "im"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "RedpacketPresenter"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "fetch festival package success, title:"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    .line 3070
    :goto_0
    aput-object v0, v2, v3

    .line 3068
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3067
    invoke-static {v1, v0}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3073
    const-string/jumbo v1, "intent_key_festival_redpacket_resource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3074
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Ldfh$1;->a:Ldfh;

    .line 5024
    iget-object v2, v2, Ldfh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 3074
    iget-object v3, p0, Ldfh$1;->a:Ldfh;

    .line 6024
    iget-object v3, v3, Ldfh;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 3074
    invoke-virtual {v1, v2, v3, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;)V

    .line 62
    return-void

    .line 3067
    :cond_0
    iget-object v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->title:Ljava/lang/String;

    .line 3070
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Ldfh$1;->a:Ldfh;

    .line 1024
    iget-object v0, v0, Ldfh;->b:Ldfg$b;

    .line 83
    invoke-interface {v0}, Ldfg$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Ldfh$1;->a:Ldfh;

    .line 2024
    iget-object v0, v0, Ldfh;->b:Ldfg$b;

    .line 84
    invoke-interface {v0, p1, p2}, Ldfg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Ldfh$1;->a:Ldfh;

    .line 3024
    iget-object v0, v0, Ldfh;->b:Ldfg$b;

    .line 85
    invoke-interface {v0}, Ldfg$b;->H_()V

    .line 88
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "RedpacketPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "fetch festival package failed. code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 79
    return-void
.end method
