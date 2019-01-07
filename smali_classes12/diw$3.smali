.class final Ldiw$3;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Ldiw$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldiw$3;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    iget-object v0, p0, Ldiw$3;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiw$3;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldiw$3;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Ldiw$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Ldiw$3;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    iget-object v2, p0, Ldiw$3;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1, v2}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    .line 470
    const-string/jumbo v0, "chat_later_clock_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 472
    :cond_0
    return-void
.end method
