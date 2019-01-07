.class final Lcye$1;
.super Ljava/lang/Object;
.source "UserDingAnnounceFromViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcye;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcye;


# direct methods
.method constructor <init>(Lcye;)V
    .locals 0
    .param p1, "this$0"    # Lcye;

    .prologue
    .line 26
    iput-object p1, p0, Lcye$1;->a:Lcye;

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
    .line 29
    iget-object v0, p0, Lcye$1;->a:Lcye;

    iget-object v0, v0, Lcye;->P:Lcts$b;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcye$1;->a:Lcye;

    iget-object v0, v0, Lcye;->P:Lcts$b;

    iget-object v1, p0, Lcye$1;->a:Lcye;

    iget-object v1, v1, Lcye;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcts$b;->f(Lcom/alibaba/wukong/im/Message;)V

    .line 32
    :cond_0
    return-void
.end method
