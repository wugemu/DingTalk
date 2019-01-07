.class final Lcwt$1;
.super Ljava/lang/Object;
.source "QuickReplyMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwt;


# direct methods
.method constructor <init>(Lcwt;)V
    .locals 0
    .param p1, "this$0"    # Lcwt;

    .prologue
    .line 69
    iput-object p1, p0, Lcwt$1;->a:Lcwt;

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
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ldry;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 74
    check-cast v0, Ldry;

    .line 75
    .local v0, "messageObject":Ldry;
    iget-object v2, p0, Lcwt$1;->a:Lcwt;

    iget-object v2, v2, Lcwt;->b:Lcwt$b;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcwt$1;->a:Lcwt;

    iget-object v2, v2, Lcwt;->b:Lcwt$b;

    invoke-interface {v2, v0}, Lcwt$b;->onClick(Ldry;)V

    .line 79
    .end local v0    # "messageObject":Ldry;
    :cond_0
    return-void
.end method
