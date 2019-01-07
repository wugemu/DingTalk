.class final Lcal$1$1;
.super Ljava/lang/Object;
.source "MyRedPacketsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcal$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcal$1;


# direct methods
.method constructor <init>(Lcal$1;)V
    .locals 0
    .param p1, "this$1"    # Lcal$1;

    .prologue
    .line 166
    .local p0, "this":Lcal$1$1;, "Lcal$1$1;"
    iput-object p1, p0, Lcal$1$1;->a:Lcal$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    .local p0, "this":Lcal$1$1;, "Lcal$1$1;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcal$1$1$1;

    invoke-direct {v2, p0}, Lcal$1$1$1;-><init>(Lcal$1$1;)V

    iget-object v1, p0, Lcal$1$1;->a:Lcal$1;

    iget-object v1, v1, Lcal$1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->cid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 259
    return-void
.end method
