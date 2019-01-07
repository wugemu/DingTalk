.class public final Lfti;
.super Lfsd;
.source "NameCardEditCardViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsk;",
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
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 15
    check-cast p1, Lfsk;

    .line 1023
    if-eqz p1, :cond_0

    .line 1024
    iget-object v0, p0, Lfti;->itemView:Landroid/view/View;

    sget v1, Lezg$h;->name_card_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .line 1025
    iget-object v1, p1, Lfsk;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-boolean v2, p1, Lfsk;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Z)V

    .line 15
    :cond_0
    return-void
.end method
