.class final Lcyw$1;
.super Ljava/lang/Object;
.source "UserLinkHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcyw;


# direct methods
.method constructor <init>(Lcyw;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcyw;

    .prologue
    .line 93
    iput-object p1, p0, Lcyw$1;->c:Lcyw;

    iput-object p2, p0, Lcyw$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcyw$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lcyw$1;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcyw$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    iget-object v1, p0, Lcyw$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcyw$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->read()V

    .line 99
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v1

    iget-object v2, p0, Lcyw$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Lcyw$1;->c:Lcyw;

    iget-wide v4, v3, Lcyw;->V:J

    invoke-virtual {v1, v2, v4, v5}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;J)Ldjz$a;

    move-result-object v0

    .line 100
    .local v0, "timer":Ldjz$a;
    iget-object v1, p0, Lcyw$1;->c:Lcyw;

    invoke-virtual {v1, v0}, Lcyw;->a(Ldjz$a;)V

    .line 103
    .end local v0    # "timer":Ldjz$a;
    :cond_0
    iget-object v1, p0, Lcyw$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lcyw$1;->b:Landroid/app/Activity;

    invoke-static {v1, v2}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    .line 104
    return-void
.end method
