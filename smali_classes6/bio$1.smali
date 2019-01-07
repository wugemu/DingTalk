.class final Lbio$1;
.super Ljava/lang/Object;
.source "EditMeetingRecorderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbio;-><init>(Landroid/view/View;Lbio$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbio;


# direct methods
.method constructor <init>(Lbio;)V
    .locals 0
    .param p1, "this$0"    # Lbio;

    .prologue
    .line 39
    iput-object p1, p0, Lbio$1;->a:Lbio;

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
    .line 42
    iget-object v0, p0, Lbio$1;->a:Lbio;

    .line 1017
    iget-object v1, v0, Lbio;->c:Landroid/widget/CheckBox;

    .line 42
    iget-object v0, p0, Lbio$1;->a:Lbio;

    .line 2017
    iget-object v0, v0, Lbio;->c:Landroid/widget/CheckBox;

    .line 42
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
