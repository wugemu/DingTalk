.class abstract Lacw$a;
.super Ljava/lang/Object;
.source "CMailUserDefineFolderTypeAdaper.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "selectFolderType"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p1, p0, Lacw$a;->a:I

    .line 201
    return-void
.end method


# virtual methods
.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 195
    check-cast p2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1205
    sget v0, Laxo$f;->icon:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1205
    check-cast v0, Landroid/widget/TextView;

    .line 1206
    sget v1, Laxo$f;->name:I

    .line 3100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1206
    check-cast v1, Landroid/widget/TextView;

    .line 1207
    sget v2, Laxo$f;->new_mail_count:I

    .line 4100
    invoke-virtual {p1, v2}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1208
    sget v5, Laxo$f;->switch_btn:I

    .line 5100
    invoke-virtual {p1, v5}, Lrr;->a(I)Landroid/view/View;

    move-result-object v5

    .line 1209
    sget v6, Laxo$f;->unread_count_layout:I

    .line 6100
    invoke-virtual {p1, v6}, Lrr;->a(I)Landroid/view/View;

    move-result-object v6

    .line 1210
    sget v7, Laxo$f;->check_icon_view:I

    .line 7100
    invoke-virtual {p1, v7}, Lrr;->a(I)Landroid/view/View;

    move-result-object v7

    .line 1211
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 8096
    iget-object v2, p1, Lrr;->a:Landroid/content/Context;

    .line 1215
    iget v5, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lrx;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget v2, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v2}, Lrx;->a(I)I

    move-result v2

    .line 1217
    if-gez v2, :cond_0

    .line 1218
    sget v2, Laxo$i;->icon_file:I

    .line 1220
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1223
    if-eqz p3, :cond_7

    array-length v2, p3

    if-le v2, v3, :cond_7

    .line 1224
    aget-object v2, p3, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 1225
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/String;

    .line 1227
    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1228
    if-eqz v5, :cond_7

    move v2, v3

    .line 1244
    :goto_0
    if-eqz v2, :cond_3

    .line 1245
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Laxo$c;->ui_common_theme_bg_color:I

    invoke-static {v3, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1246
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_bg_color:I

    invoke-static {v1, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1255
    :goto_1
    if-eqz v2, :cond_6

    .line 1256
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 1231
    :cond_1
    if-nez v5, :cond_7

    .line 1232
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1233
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    .line 1234
    goto :goto_0

    .line 1237
    :cond_2
    iget v2, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget v5, p0, Lacw$a;->a:I

    if-ne v2, v5, :cond_7

    move v2, v3

    .line 1238
    goto :goto_0

    .line 1247
    :cond_3
    iget v5, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    if-eq v5, v3, :cond_4

    iget v3, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget v5, p0, Lacw$a;->a:I

    if-ne v3, v5, :cond_5

    .line 1248
    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Laxo$c;->alm_cmail_color_191f25:I

    invoke-static {v3, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1249
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_bg_color:I

    invoke-static {v1, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1251
    :cond_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Laxo$c;->cspace_bottom_disable:I

    invoke-static {v3, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1252
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_icon_disabled_bg_color:I

    invoke-static {v1, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1258
    :cond_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v2, v4

    goto/16 :goto_0
.end method
