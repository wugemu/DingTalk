.class public final Lbih$2;
.super Ljava/lang/Object;
.source "CompleteMemberViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchg;

.field final synthetic b:Lbih;


# direct methods
.method public constructor <init>(Lbih;Lchg;)V
    .locals 0
    .param p1, "this$0"    # Lbih;

    .prologue
    .line 170
    iput-object p1, p0, Lbih$2;->b:Lbih;

    iput-object p2, p0, Lbih$2;->a:Lchg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lbih$2;->b:Lbih;

    .line 1031
    iget-object v0, v0, Lbih;->f:Landroid/widget/CheckBox;

    .line 173
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lbih$2;->b:Lbih;

    .line 2031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 2115
    iget-object v0, v0, Laxx;->c:Ljava/util/HashSet;

    .line 174
    iget-object v1, p0, Lbih$2;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lbih$2;->b:Lbih;

    .line 3031
    iget-object v0, v0, Lbih;->a:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lbih$2;->b:Lbih;

    .line 4031
    iget-object v1, v1, Lbih;->k:Landroid/app/Activity;

    .line 175
    sget v2, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    :goto_0
    iget-object v0, p0, Lbih$2;->b:Lbih;

    .line 7031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 7090
    iget-object v0, v0, Laxx;->f:Lbhw;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lbih$2;->b:Lbih;

    .line 8031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 8090
    iget-object v0, v0, Laxx;->f:Lbhw;

    .line 182
    invoke-interface {v0}, Lbhw;->a()V

    .line 184
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lbih$2;->b:Lbih;

    .line 5031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 5115
    iget-object v0, v0, Laxx;->c:Ljava/util/HashSet;

    .line 177
    iget-object v1, p0, Lbih$2;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lbih$2;->b:Lbih;

    .line 6031
    iget-object v0, v0, Lbih;->a:Landroid/view/View;

    .line 178
    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
