.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;
.super Lrq;
.source "CMailSettingsMySubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Lzt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutRes"    # I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    .line 134
    invoke-direct {p0, p2, p3}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 135
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 132
    check-cast p2, Lzt;

    .line 1139
    sget v0, Laxo$f;->category_item_icon:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1139
    check-cast v1, Landroid/widget/ImageView;

    .line 1141
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Lcom/alibaba/doraemon/image/ImageMagician;)Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v2, p2, Lzt;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)Landroid/widget/ListView;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v7, 0x0

    move v6, v5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1146
    sget v0, Laxo$f;->category_name_tv:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    check-cast v0, Landroid/widget/TextView;

    .line 1147
    sget v1, Laxo$f;->item_unsubscribe:I

    .line 4100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1147
    check-cast v1, Landroid/widget/TextView;

    .line 1149
    iget-object v2, p2, Lzt;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;Lzt;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method
