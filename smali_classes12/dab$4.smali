.class final Ldab$4;
.super Ljava/lang/Object;
.source "UserThirdPartyViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ldab;


# direct methods
.method constructor <init>(Ldab;Lcom/alibaba/wukong/im/Message;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ldab;

    .prologue
    .line 343
    iput-object p1, p0, Ldab$4;->c:Ldab;

    iput-object p2, p0, Ldab$4;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldab$4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Ldab$4;->c:Ldab;

    iget-object v0, v0, Ldab;->P:Lcts$b;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Ldab$4;->c:Ldab;

    iget-object v0, v0, Ldab;->P:Lcts$b;

    iget-object v1, p0, Ldab$4;->a:Lcom/alibaba/wukong/im/Message;

    new-instance v2, Lcts$a;

    sget v3, Lcts$a;->c:I

    iget-object v4, p0, Ldab$4;->b:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lcts$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lcts$b;->a(Lcom/alibaba/wukong/im/Message;Lcts$a;)V

    .line 349
    :cond_0
    return-void
.end method
