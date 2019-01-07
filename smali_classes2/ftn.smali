.class public final Lftn;
.super Lfsd;
.source "NameCardInfosAvatarViewHolder.java"

# interfaces
.implements Lfsf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsp;",
        ">;",
        "Lfsf",
        "<",
        "Lfse",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 17
    .line 3048
    new-instance v0, Lfse;

    invoke-direct {v0}, Lfse;-><init>()V

    .line 3049
    const-string/jumbo v1, "mediaId"

    iput-object v1, v0, Lfse;->a:Ljava/lang/Object;

    .line 3050
    iget-object v1, p0, Lftn;->b:Ljava/lang/String;

    iput-object v1, v0, Lfse;->b:Ljava/lang/Object;

    .line 17
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 17
    check-cast p1, Lfsp;

    .line 1027
    sget v0, Lezg$h;->name_card_infos_iv_avatar:I

    invoke-virtual {p0, v0}, Lftn;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1029
    if-eqz p1, :cond_0

    .line 1030
    iget-object v1, p1, Lfsp;->b:Ljava/lang/String;

    iput-object v1, p0, Lftn;->b:Ljava/lang/String;

    .line 1031
    iget-object v1, p1, Lfsp;->c:Ljava/lang/String;

    iget-object v2, p0, Lftn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    iget-object v0, p0, Lfsd;->a:Landroid/view/View;

    .line 1032
    new-instance v1, Lftn$1;

    invoke-direct {v1, p0, p1}, Lftn$1;-><init>(Lftn;Lfsp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 1041
    :cond_0
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    iget-object v0, p0, Lfsd;->a:Landroid/view/View;

    .line 1042
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
