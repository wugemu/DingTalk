.class final Lfzz$2;
.super Ljava/lang/Object;
.source "CSpaceListAdapter.java"

# interfaces
.implements Lfzo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzz;->a(Landroid/widget/TextView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lfzz;


# direct methods
.method constructor <init>(Lfzz;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lfzz;

    .prologue
    .line 686
    iput-object p1, p0, Lfzz$2;->c:Lfzz;

    iput-object p2, p0, Lfzz$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lfzz$2;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "userNick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 689
    iget-object v0, p0, Lfzz$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lfzz$2;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Lfzz$2;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lfzz$2;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
