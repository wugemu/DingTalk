.class final Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;
.super Ljava/lang/Object;
.source "RedPacketsInterfaceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/widget/EditText;Lcom/alibaba/wukong/Callback;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->d:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 945
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "inputPwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->b:Lcom/alibaba/wukong/Callback;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 972
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcbw;->a(Landroid/app/Activity;)V

    .line 952
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;)V

    .line 970
    .local v1, "listener":Lcma;
    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;->c:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;
    check-cast v1, Lcma;

    .line 971
    .restart local v1    # "listener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
