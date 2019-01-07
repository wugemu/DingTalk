.class final Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;
.super Ljava/lang/Object;
.source "RedPacketsInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 952
    check-cast p1, Ljava/lang/Boolean;

    .line 1955
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcbw;->b(Landroid/app/Activity;)V

    .line 1956
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 952
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcbw;->b(Landroid/app/Activity;)V

    .line 967
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 962
    return-void
.end method
