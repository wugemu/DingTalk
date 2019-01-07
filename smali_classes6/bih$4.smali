.class public final Lbih$4;
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
.field final synthetic a:I

.field final synthetic b:Lchg;

.field final synthetic c:Lbih;


# direct methods
.method public constructor <init>(Lbih;ILchg;)V
    .locals 0
    .param p1, "this$0"    # Lbih;

    .prologue
    .line 227
    iput-object p1, p0, Lbih$4;->c:Lbih;

    iput p2, p0, Lbih$4;->a:I

    iput-object p3, p0, Lbih$4;->b:Lchg;

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
    .line 230
    const/4 v0, 0x2

    iget v1, p0, Lbih$4;->a:I

    if-eq v0, v1, :cond_3

    .line 231
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 1031
    iget-object v1, v0, Lbih;->f:Landroid/widget/CheckBox;

    .line 231
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 2031
    iget-object v0, v0, Lbih;->f:Landroid/widget/CheckBox;

    .line 231
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 3031
    iget-object v0, v0, Lbih;->f:Landroid/widget/CheckBox;

    .line 232
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 4031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 4115
    iget-object v0, v0, Laxx;->c:Ljava/util/HashSet;

    .line 233
    iget-object v1, p0, Lbih$4;->b:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    :goto_1
    iget-object v0, p0, Lbih$4;->c:Lbih;

    iget-object v1, p0, Lbih$4;->b:Lchg;

    iget v2, p0, Lbih$4;->a:I

    .line 6031
    invoke-virtual {v0, v1, v2}, Lbih;->a(Lchg;I)V

    .line 238
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 7031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 7090
    iget-object v0, v0, Laxx;->f:Lbhw;

    .line 238
    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 8031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 8090
    iget-object v0, v0, Laxx;->f:Lbhw;

    .line 239
    invoke-interface {v0}, Lbhw;->a()V

    .line 250
    :cond_0
    :goto_2
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 5031
    iget-object v0, v0, Lbih;->l:Laxx;

    .line 5115
    iget-object v0, v0, Laxx;->c:Ljava/util/HashSet;

    .line 235
    iget-object v1, p0, Lbih$4;->b:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_3
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 9031
    iget-boolean v0, v0, Lbih;->n:Z

    .line 242
    if-eqz v0, :cond_4

    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 10031
    iget-boolean v0, v0, Lbih;->o:Z

    .line 242
    if-nez v0, :cond_4

    .line 243
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 11031
    iget-object v0, v0, Lbih;->j:Lbih$a;

    .line 243
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 12031
    iget-object v0, v0, Lbih;->m:Lbff;

    .line 243
    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 13031
    iget-object v0, v0, Lbih;->j:Lbih$a;

    .line 244
    iget-object v1, p0, Lbih$4;->c:Lbih;

    .line 14031
    iget-object v1, v1, Lbih;->m:Lbff;

    .line 244
    invoke-interface {v0, v1}, Lbih$a;->onClick(Lbff;)V

    goto :goto_2

    .line 247
    :cond_4
    iget-object v0, p0, Lbih$4;->c:Lbih;

    .line 15031
    iget-object v0, v0, Lbih;->k:Landroid/app/Activity;

    .line 247
    iget-object v1, p0, Lbih$4;->b:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    goto :goto_2
.end method
