.class final Lftr$1;
.super Ljava/lang/Object;
.source "NameCardInfosSelectViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfst;

.field final synthetic b:Lftr;


# direct methods
.method constructor <init>(Lftr;Lfst;)V
    .locals 0
    .param p1, "this$0"    # Lftr;

    .prologue
    .line 50
    iput-object p1, p0, Lftr$1;->b:Lftr;

    iput-object p2, p0, Lftr$1;->a:Lfst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lftr$1;->a:Lfst;

    iget-object v0, v0, Lfst;->e:Lftb$b;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lftr$1;->a:Lfst;

    iget-object v0, v0, Lfst;->e:Lftb$b;

    invoke-interface {v0}, Lftb$b;->a()V

    .line 56
    :cond_0
    return-void
.end method
