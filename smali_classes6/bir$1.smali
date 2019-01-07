.class public final Lbir$1;
.super Ljava/lang/Object;
.source "SelectUserHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbir;


# direct methods
.method public constructor <init>(Lbir;)V
    .locals 0
    .param p1, "this$0"    # Lbir;

    .prologue
    .line 161
    iput-object p1, p0, Lbir$1;->a:Lbir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Lbir$1;->a:Lbir;

    .line 1022
    iget-object v0, v0, Lbir;->f:Landroid/widget/CheckBox;

    .line 164
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lbir$1;->a:Lbir;

    .line 2022
    iget-object v0, v0, Lbir;->f:Landroid/widget/CheckBox;

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lbir$1;->a:Lbir;

    .line 3022
    iget-object v0, v0, Lbir;->a:Laym;

    .line 167
    invoke-virtual {v0}, Laym;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lbir$1;->a:Lbir;

    .line 4022
    iget-object v0, v0, Lbir;->f:Landroid/widget/CheckBox;

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lbir$1;->a:Lbir;

    invoke-virtual {v0}, Lbir;->a()V

    goto :goto_0
.end method
