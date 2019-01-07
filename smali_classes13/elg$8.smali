.class final Lelg$8;
.super Ljava/lang/Object;
.source "InvitationListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lelg;


# direct methods
.method constructor <init>(Lelg;)V
    .locals 0
    .param p1, "this$0"    # Lelg;

    .prologue
    .line 406
    iput-object p1, p0, Lelg$8;->a:Lelg;

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
    .line 410
    iget-object v0, p0, Lelg$8;->a:Lelg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lelg;->a(Lelg;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lelg$8;->a:Lelg;

    invoke-static {v0}, Lelg;->f(Lelg;)V

    .line 412
    return-void
.end method
