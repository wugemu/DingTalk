.class public final Lftl;
.super Lfsd;
.source "NameCardEditPrivacyViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 16
    check-cast p1, Lfsn;

    .line 1023
    if-eqz p1, :cond_0

    .line 1025
    sget v0, Lezg$h;->toggle_device_security:I

    invoke-virtual {p0, v0}, Lftl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 1026
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1028
    new-instance v1, Lftl$1;

    invoke-direct {v1, p0, p1}, Lftl$1;-><init>(Lftl;Lfsn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    :cond_0
    return-void
.end method
