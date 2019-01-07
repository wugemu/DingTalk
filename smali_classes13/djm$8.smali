.class final Ldjm$8;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Ldjm$8;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldjm$8;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldjm$8;->c:Lcom/alibaba/wukong/im/Message;

    iput-object p4, p0, Ldjm$8;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 456
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 457
    add-int/lit8 v3, p2, 0x1

    .line 458
    .local v3, "index":I
    iget-object v0, p0, Ldjm$8;->a:Landroid/app/Activity;

    iget-object v1, p0, Ldjm$8;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldjm$8;->c:Lcom/alibaba/wukong/im/Message;

    const/4 v4, 0x0

    iget-object v5, p0, Ldjm$8;->d:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Ldjm;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZLjava/util/List;)V

    .line 459
    return-void
.end method
