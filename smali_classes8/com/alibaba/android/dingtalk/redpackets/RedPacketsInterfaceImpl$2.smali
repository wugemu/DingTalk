.class final Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;
.super Ljava/lang/Object;
.source "RedPacketsInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;->f:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 753
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 731
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 731
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1734
    if-eqz p1, :cond_0

    .line 1735
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/red_packets/send.html"

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 731
    :cond_0
    return-void
.end method
