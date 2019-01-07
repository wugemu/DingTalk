.class public final Lbil$2;
.super Ljava/lang/Object;
.source "DingMeetingStatusViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lchg;

.field final synthetic c:Lbil;


# direct methods
.method public constructor <init>(Lbil;ILchg;)V
    .locals 0
    .param p1, "this$0"    # Lbil;

    .prologue
    .line 151
    iput-object p1, p0, Lbil$2;->c:Lbil;

    iput p2, p0, Lbil$2;->a:I

    iput-object p3, p0, Lbil$2;->b:Lchg;

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
    .line 154
    const/4 v0, 0x2

    iget v1, p0, Lbil$2;->a:I

    if-eq v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 1027
    iget-object v1, v0, Lbil;->f:Landroid/widget/CheckBox;

    .line 155
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 2027
    iget-object v0, v0, Lbil;->f:Landroid/widget/CheckBox;

    .line 155
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 3027
    iget-object v0, v0, Lbil;->f:Landroid/widget/CheckBox;

    .line 156
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 4027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 4099
    iget-object v0, v0, Layb;->c:Ljava/util/HashSet;

    .line 157
    iget-object v1, p0, Lbil$2;->b:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 5027
    iget-object v0, v0, Lbil;->a:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lbil$2;->c:Lbil;

    .line 6027
    iget-object v1, v1, Lbil;->i:Landroid/app/Activity;

    .line 158
    sget v2, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    :goto_1
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 9027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 9078
    iget-object v0, v0, Layb;->e:Lbhw;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 10027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 10078
    iget-object v0, v0, Layb;->e:Lbhw;

    .line 164
    invoke-interface {v0}, Lbhw;->a()V

    .line 169
    :cond_0
    :goto_2
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 7027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 7099
    iget-object v0, v0, Layb;->c:Ljava/util/HashSet;

    .line 160
    iget-object v1, p0, Lbil$2;->b:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 8027
    iget-object v0, v0, Lbil;->a:Landroid/view/View;

    .line 161
    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 167
    :cond_3
    iget-object v0, p0, Lbil$2;->c:Lbil;

    .line 11027
    iget-object v0, v0, Lbil;->i:Landroid/app/Activity;

    .line 167
    iget-object v1, p0, Lbil$2;->b:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    goto :goto_2
.end method
