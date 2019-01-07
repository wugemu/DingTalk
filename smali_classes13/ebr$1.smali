.class final Lebr$1;
.super Ljava/lang/Object;
.source "VideoUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebr;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Message;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lebr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lebr$1;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lebr$1;->a:Lcom/alibaba/wukong/im/Message;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->delete(Lcom/alibaba/wukong/Callback;)V

    .line 86
    :cond_0
    return-void
.end method
