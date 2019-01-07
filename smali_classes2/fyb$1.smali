.class final Lfyb$1;
.super Ljava/lang/Object;
.source "AddButtonViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfyb;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfyb;


# direct methods
.method constructor <init>(Lfyb;)V
    .locals 0
    .param p1, "this$0"    # Lfyb;

    .prologue
    .line 41
    iput-object p1, p0, Lfyb$1;->a:Lfyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lfyb$1;->a:Lfyb;

    iget-object v0, v0, Lfyb;->b:Lfxw;

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lfyb$1;->a:Lfyb;

    iget-object v0, v0, Lfyb;->b:Lfxw;

    invoke-interface {v0}, Lfxw;->a()V

    goto :goto_0
.end method
