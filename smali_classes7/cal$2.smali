.class final Lcal$2;
.super Ljava/lang/Object;
.source "MyRedPacketsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcal;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcal;


# direct methods
.method constructor <init>(Lcal;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcal;

    .prologue
    .line 308
    .local p0, "this":Lcal$2;, "Lcal$2;"
    iput-object p1, p0, Lcal$2;->b:Lcal;

    iput-object p2, p0, Lcal$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 311
    .local p0, "this":Lcal$2;, "Lcal$2;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcal$2$1;

    invoke-direct {v2, p0}, Lcal$2$1;-><init>(Lcal$2;)V

    iget-object v1, p0, Lcal$2;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->cid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 327
    return-void
.end method
