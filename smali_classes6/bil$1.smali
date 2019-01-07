.class public final Lbil$1;
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
.field final synthetic a:Lchg;

.field final synthetic b:Lbil;


# direct methods
.method public constructor <init>(Lbil;Lchg;)V
    .locals 0
    .param p1, "this$0"    # Lbil;

    .prologue
    .line 107
    iput-object p1, p0, Lbil$1;->b:Lbil;

    iput-object p2, p0, Lbil$1;->a:Lchg;

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
    .line 110
    iget-object v0, p0, Lbil$1;->b:Lbil;

    .line 1027
    iget-object v0, v0, Lbil;->f:Landroid/widget/CheckBox;

    .line 110
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lbil$1;->b:Lbil;

    .line 2027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 2099
    iget-object v0, v0, Layb;->c:Ljava/util/HashSet;

    .line 111
    iget-object v1, p0, Lbil$1;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lbil$1;->b:Lbil;

    .line 3027
    iget-object v0, v0, Lbil;->a:Landroid/view/View;

    .line 112
    iget-object v1, p0, Lbil$1;->b:Lbil;

    .line 4027
    iget-object v1, v1, Lbil;->i:Landroid/app/Activity;

    .line 112
    sget v2, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    :goto_0
    iget-object v0, p0, Lbil$1;->b:Lbil;

    .line 7027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 7078
    iget-object v0, v0, Layb;->e:Lbhw;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lbil$1;->b:Lbil;

    .line 8027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 8078
    iget-object v0, v0, Layb;->e:Lbhw;

    .line 119
    invoke-interface {v0}, Lbhw;->a()V

    .line 121
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lbil$1;->b:Lbil;

    .line 5027
    iget-object v0, v0, Lbil;->j:Layb;

    .line 5099
    iget-object v0, v0, Layb;->c:Ljava/util/HashSet;

    .line 114
    iget-object v1, p0, Lbil$1;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lbil$1;->b:Lbil;

    .line 6027
    iget-object v0, v0, Lbil;->a:Landroid/view/View;

    .line 115
    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
