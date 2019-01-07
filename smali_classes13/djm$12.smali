.class final Ldjm$12;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:I

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Ldjm$12;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldjm$12;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldjm$12;->c:Lcom/alibaba/wukong/im/Message;

    iput p4, p0, Ldjm$12;->d:I

    iput-object p5, p0, Ldjm$12;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 575
    iget-object v0, p0, Ldjm$12;->a:Landroid/app/Activity;

    iget-object v1, p0, Ldjm$12;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldjm$12;->c:Lcom/alibaba/wukong/im/Message;

    iget v3, p0, Ldjm$12;->d:I

    iget-object v5, p0, Ldjm$12;->e:Ljava/util/List;

    .line 1049
    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZLjava/util/List;)V

    .line 576
    return-void
.end method
