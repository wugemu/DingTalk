.class final Lfyc$1;
.super Ljava/lang/Object;
.source "DeleteButtonViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfyc;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfyc;


# direct methods
.method constructor <init>(Lfyc;)V
    .locals 0
    .param p1, "this$0"    # Lfyc;

    .prologue
    .line 41
    iput-object p1, p0, Lfyc$1;->a:Lfyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lfyc$1;->a:Lfyc;

    iget-object v0, v0, Lfyc;->b:Lfxw;

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lfyc$1;->a:Lfyc;

    iget-object v0, v0, Lfyc;->b:Lfxw;

    invoke-interface {v0}, Lfxw;->b()V

    goto :goto_0
.end method
