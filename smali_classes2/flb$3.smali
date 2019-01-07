.class final Lflb$3;
.super Ljava/lang/Object;
.source "CreateOrgV4Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflb;


# direct methods
.method constructor <init>(Lflb;)V
    .locals 0
    .param p1, "this$0"    # Lflb;

    .prologue
    .line 394
    iput-object p1, p0, Lflb$3;->a:Lflb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 397
    iget-object v0, p0, Lflb$3;->a:Lflb;

    invoke-static {v0}, Lflb;->e(Lflb;)Lflb$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lflb$3;->a:Lflb;

    invoke-static {v0}, Lflb;->e(Lflb;)Lflb$c;

    move-result-object v0

    invoke-interface {v0}, Lflb$c;->a()V

    .line 400
    :cond_0
    return-void
.end method
