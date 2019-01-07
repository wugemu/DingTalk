.class final Ldpl$2;
.super Ljava/lang/Object;
.source "MenuShieldHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ldpl;


# direct methods
.method constructor <init>(Ldpl;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Ldpl;

    .prologue
    .line 90
    iput-object p1, p0, Ldpl$2;->b:Ldpl;

    iput-object p2, p0, Ldpl$2;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_group_msg_block_frame_cancel_btn_click"

    iget-object v2, p0, Ldpl$2;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    return-void
.end method
