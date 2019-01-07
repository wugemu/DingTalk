.class final Ladc$3;
.super Ljava/lang/Object;
.source "MailSignListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladc;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laca;

.field final synthetic b:Ladc;


# direct methods
.method constructor <init>(Ladc;Laca;)V
    .locals 0
    .param p1, "this$0"    # Ladc;

    .prologue
    .line 218
    iput-object p1, p0, Ladc$3;->b:Ladc;

    iput-object p2, p0, Ladc$3;->a:Laca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Ladc$3;->b:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Ladc$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Ladc$3;->b:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Ladc$c;

    move-result-object v0

    invoke-interface {v0}, Ladc$c;->a()V

    .line 224
    :cond_0
    return-void
.end method
