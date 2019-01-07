.class final Ldgj$1;
.super Ljava/lang/Object;
.source "ChatListDetailPresenter.java"

# interfaces
.implements Ldnf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgj;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldgj;


# direct methods
.method constructor <init>(Ldgj;)V
    .locals 0
    .param p1, "this$0"    # Ldgj;

    .prologue
    .line 97
    iput-object p1, p0, Ldgj$1;->a:Ldgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Ldgj$1;->a:Ldgj;

    .line 1050
    iget-object v0, v0, Ldgj;->a:Landroid/app/Activity;

    .line 100
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ldgj$1;->a:Ldgj;

    .line 2050
    iget-object v0, v0, Ldgj;->b:Ldgi$b;

    .line 101
    iget-object v1, p0, Ldgj$1;->a:Ldgj;

    .line 3050
    iget-object v1, v1, Ldgj;->c:Ljava/util/List;

    .line 101
    invoke-interface {v0, v1}, Ldgi$b;->a(Ljava/util/List;)V

    .line 103
    :cond_0
    return-void
.end method
