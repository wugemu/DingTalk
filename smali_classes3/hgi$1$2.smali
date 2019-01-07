.class final Lhgi$1$2;
.super Ljava/lang/Object;
.source "BeaconDetectPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgi$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgi$1;


# direct methods
.method constructor <init>(Lhgi$1;)V
    .locals 0
    .param p1, "this$1"    # Lhgi$1;

    .prologue
    .line 72
    iput-object p1, p0, Lhgi$1$2;->a:Lhgi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lhgi$1$2;->a:Lhgi$1;

    iget-object v0, v0, Lhgi$1;->a:Lhgi;

    .line 1027
    iget-object v0, v0, Lhgi;->a:Lhgd$c;

    .line 75
    const/4 v1, 0x1

    iget-object v2, p0, Lhgi$1$2;->a:Lhgi$1;

    iget-object v2, v2, Lhgi$1;->a:Lhgi;

    .line 2027
    iget-object v2, v2, Lhgi;->b:Lhgd$a;

    .line 75
    invoke-interface {v2}, Lhgd$a;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lhgd$c;->a(ZI)V

    .line 76
    return-void
.end method
