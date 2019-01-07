.class public final Lbii$1;
.super Ljava/lang/Object;
.source "ConfirmMemberHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchg;

.field final synthetic b:Lbii;


# direct methods
.method public constructor <init>(Lbii;Lchg;)V
    .locals 0
    .param p1, "this$0"    # Lbii;

    .prologue
    .line 105
    iput-object p1, p0, Lbii$1;->b:Lbii;

    iput-object p2, p0, Lbii$1;->a:Lchg;

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
    .line 108
    iget-object v0, p0, Lbii$1;->b:Lbii;

    .line 1025
    iget-object v0, v0, Lbii;->h:Landroid/widget/CheckBox;

    .line 108
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lbii$1;->b:Lbii;

    .line 2025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 2091
    iget-object v0, v0, Laxy;->c:Ljava/util/HashSet;

    .line 109
    iget-object v1, p0, Lbii$1;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lbii$1;->b:Lbii;

    .line 3025
    iget-object v0, v0, Lbii;->c:Landroid/view/View;

    .line 110
    iget-object v1, p0, Lbii$1;->b:Lbii;

    .line 4025
    iget-object v1, v1, Lbii;->a:Landroid/app/Activity;

    .line 110
    sget v2, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    :goto_0
    iget-object v0, p0, Lbii$1;->b:Lbii;

    .line 7025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 7099
    iget-object v0, v0, Laxy;->f:Lbhw;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lbii$1;->b:Lbii;

    .line 8025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 8099
    iget-object v0, v0, Laxy;->f:Lbhw;

    .line 117
    invoke-interface {v0}, Lbhw;->a()V

    .line 119
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lbii$1;->b:Lbii;

    .line 5025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 5091
    iget-object v0, v0, Laxy;->c:Ljava/util/HashSet;

    .line 112
    iget-object v1, p0, Lbii$1;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lbii$1;->b:Lbii;

    .line 6025
    iget-object v0, v0, Lbii;->c:Landroid/view/View;

    .line 113
    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
