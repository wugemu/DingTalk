.class final Lfla$2;
.super Ljava/lang/Object;
.source "CreateOrgV3Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfla;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfla;


# direct methods
.method constructor <init>(Lfla;)V
    .locals 0
    .param p1, "this$0"    # Lfla;

    .prologue
    .line 352
    iput-object p1, p0, Lfla$2;->a:Lfla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lfla$2;->a:Lfla;

    invoke-static {v0}, Lfla;->e(Lfla;)Lfla$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lfla$2;->a:Lfla;

    invoke-static {v0}, Lfla;->e(Lfla;)Lfla$d;

    move-result-object v0

    invoke-interface {v0}, Lfla$d;->a()V

    .line 358
    :cond_0
    return-void
.end method
