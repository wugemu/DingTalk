.class public final Lfto;
.super Lfsd;
.source "NameCardInfosHeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 14
    check-cast p1, Lfsq;

    .line 1021
    sget v0, Lezg$h;->name_card_infos_ll_scan:I

    invoke-virtual {p0, v0}, Lfto;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1023
    if-eqz p1, :cond_0

    .line 1024
    new-instance v1, Lfto$1;

    invoke-direct {v1, p0, p1}, Lfto$1;-><init>(Lfto;Lfsq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 1033
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
