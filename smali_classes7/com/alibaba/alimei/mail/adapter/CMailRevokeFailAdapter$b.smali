.class final Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$b;
.super Ljava/lang/Object;
.source "CMailRevokeFailAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 97
    sget v0, Laxo$g;->cmail_revoke_fail_item:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 93
    check-cast p2, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;

    .line 1107
    sget v0, Laxo$f;->avatar:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1107
    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1108
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;->email:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;->email:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1110
    const v0, 0x1020014

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;->email:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1111
    const v0, 0x1020015

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1112
    sget v0, Laxo$f;->fail_reason:I

    .line 3096
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 1112
    iget v2, p2, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;->errCode:I

    invoke-static {v1, v2}, Lrx;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 93
    return-void
.end method
