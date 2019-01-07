.class final Lhpv$2;
.super Ljava/lang/Object;
.source "DakaPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhpv;


# direct methods
.method constructor <init>(Lhpv;)V
    .locals 0
    .param p1, "this$0"    # Lhpv;

    .prologue
    .line 191
    iput-object p1, p0, Lhpv$2;->a:Lhpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lhpv$2;->a:Lhpv;

    invoke-static {v0}, Lhpv;->b(Lhpv;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lhpv$2;->a:Lhpv;

    invoke-static {v0}, Lhpv;->b(Lhpv;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lhpv$2;->a:Lhpv;

    invoke-virtual {v0}, Lhpv;->dismiss()V

    .line 199
    return-void
.end method
