.class public final Lbii$2;
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
    .line 122
    iput-object p1, p0, Lbii$2;->b:Lbii;

    iput-object p2, p0, Lbii$2;->a:Lchg;

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
    .line 125
    const/4 v0, 0x2

    iget-object v1, p0, Lbii$2;->b:Lbii;

    .line 1025
    iget-object v1, v1, Lbii;->b:Laxy;

    .line 1087
    iget v1, v1, Laxy;->b:I

    .line 125
    if-eq v0, v1, :cond_3

    .line 126
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 2025
    iget-object v1, v0, Lbii;->h:Landroid/widget/CheckBox;

    .line 126
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 3025
    iget-object v0, v0, Lbii;->h:Landroid/widget/CheckBox;

    .line 126
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 4025
    iget-object v0, v0, Lbii;->h:Landroid/widget/CheckBox;

    .line 127
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 5025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 5091
    iget-object v0, v0, Laxy;->c:Ljava/util/HashSet;

    .line 128
    iget-object v1, p0, Lbii$2;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 6025
    iget-object v0, v0, Lbii;->c:Landroid/view/View;

    .line 129
    iget-object v1, p0, Lbii$2;->b:Lbii;

    .line 7025
    iget-object v1, v1, Lbii;->a:Landroid/app/Activity;

    .line 129
    sget v2, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    :goto_1
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 10025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 10099
    iget-object v0, v0, Laxy;->f:Lbhw;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 11025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 11099
    iget-object v0, v0, Laxy;->f:Lbhw;

    .line 136
    invoke-interface {v0}, Lbhw;->a()V

    .line 141
    :cond_0
    :goto_2
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 8025
    iget-object v0, v0, Lbii;->b:Laxy;

    .line 8091
    iget-object v0, v0, Laxy;->c:Ljava/util/HashSet;

    .line 131
    iget-object v1, p0, Lbii$2;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 9025
    iget-object v0, v0, Lbii;->c:Landroid/view/View;

    .line 132
    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, p0, Lbii$2;->b:Lbii;

    .line 12025
    iget-object v0, v0, Lbii;->a:Landroid/app/Activity;

    .line 139
    iget-object v1, p0, Lbii$2;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    goto :goto_2
.end method
