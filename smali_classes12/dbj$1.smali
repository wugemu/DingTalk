.class final Ldbj$1;
.super Ljava/lang/Object;
.source "UserTaoGoodsCardAbsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbj;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldbj;


# direct methods
.method constructor <init>(Ldbj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldbj;

    .prologue
    .line 96
    iput-object p1, p0, Ldbj$1;->c:Ldbj;

    iput-object p2, p0, Ldbj$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldbj$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Ldbj$1;->c:Ldbj;

    iget-boolean v0, v0, Ldbj;->a:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Ldbj$1;->c:Ldbj;

    iget-object v1, p0, Ldbj$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbj;->a(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Ldbj$1;->c:Ldbj;

    iget-object v1, p0, Ldbj$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
