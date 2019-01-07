.class public final Lftj;
.super Lfsd;
.source "NameCardEditDeleteViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 18
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
    check-cast p1, Lfsl;

    .line 1022
    sget v0, Lezg$h;->name_card_edit_btn_delete:I

    invoke-virtual {p0, v0}, Lftj;->a(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lftj$1;

    invoke-direct {v1, p0, p1}, Lftj$1;-><init>(Lftj;Lfsl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    return-void
.end method
