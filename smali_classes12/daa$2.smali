.class final Ldaa$2;
.super Ljava/lang/Object;
.source "UserTextViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaa;->a(Landroid/widget/TextView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldaa;


# direct methods
.method constructor <init>(Ldaa;)V
    .locals 0
    .param p1, "this$0"    # Ldaa;

    .prologue
    .line 210
    iput-object p1, p0, Ldaa$2;->a:Ldaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Ldaa$2;->a:Ldaa;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldaa;->a(Ldaa;Z)Z

    .line 215
    iget-object v0, p0, Ldaa$2;->a:Ldaa;

    invoke-virtual {v0}, Ldaa;->p()V

    .line 216
    const/4 v0, 0x0

    return v0
.end method
