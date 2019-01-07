.class public final Lhet;
.super Lhes;
.source "MiniAppListEmptyViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhes",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lheo;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhet;-><init>(Landroid/view/View;Lheo;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lheo;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "hostHandler"    # Lheo;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 31
    iput-object p1, p0, Lhet;->a:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lhet;->e:Lheo;

    .line 33
    iget-object v0, p0, Lhet;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lhet;->a:Landroid/view/View;

    sget v1, Lhdn$h;->mini_apps_empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhet;->f:Landroid/widget/TextView;

    .line 36
    :cond_0
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lhdn$i;->activity_miniapp_list_empty_layout:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 19
    .line 1040
    iget-object v0, p0, Lhet;->e:Lheo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhet;->f:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Lhet;->e:Lheo;

    invoke-interface {v0}, Lheo;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "my_applications"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1046
    iget-object v0, p0, Lhet;->e:Lheo;

    invoke-interface {v0}, Lheo;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "applications_in_chat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1047
    iget-object v0, p0, Lhet;->f:Landroid/widget/TextView;

    sget v1, Lhdn$k;->ll_mini_app_list_in_chat_empty_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1050
    :cond_2
    iget-object v0, p0, Lhet;->f:Landroid/widget/TextView;

    sget v1, Lhdn$k;->ll_mini_app_list_empty_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
