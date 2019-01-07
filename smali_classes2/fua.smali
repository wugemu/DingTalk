.class public final Lfua;
.super Lfsd;
.source "NameCardExchangeViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lftx;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 17
    check-cast p1, Lftx;

    .line 1028
    if-eqz p1, :cond_0

    .line 1029
    iget-object v1, p1, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 1030
    if-eqz v1, :cond_0

    .line 1031
    sget v0, Lezg$h;->iv_avatar:I

    invoke-virtual {p0, v0}, Lfua;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfua;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1032
    iget-object v0, p0, Lfua;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    sget v0, Lezg$h;->tv_name:I

    invoke-virtual {p0, v0}, Lfua;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfua;->c:Landroid/widget/TextView;

    .line 1035
    iget-object v0, p0, Lfua;->c:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lfua;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method
