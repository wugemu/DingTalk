.class final Lbwv$6;
.super Lbyi$a;
.source "FullPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwv;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lbwv;


# direct methods
.method constructor <init>(Lbwv;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lbwv;

    .prologue
    .line 567
    iput-object p1, p0, Lbwv$6;->b:Lbwv;

    iput-object p2, p0, Lbwv$6;->a:Landroid/view/View;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 567
    .line 1570
    iget-object v0, p0, Lbwv$6;->b:Lbwv;

    invoke-static {v0}, Lbwv;->g(Lbwv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lbwv$6;->b:Lbwv;

    iget-object v1, p0, Lbwv$6;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lbwv;->b(Lbwv;Landroid/view/View;)V

    .line 567
    :cond_0
    return-void
.end method