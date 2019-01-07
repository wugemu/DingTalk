.class abstract Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$a;
.super Ljava/lang/Object;
.source "CMailMovetoFolderAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter;
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/adapter/CMailMovetoFolderAdapter$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 210
    check-cast p2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1213
    sget v0, Laxo$f;->icon:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1213
    check-cast v0, Landroid/widget/TextView;

    .line 1214
    sget v1, Laxo$f;->name:I

    .line 3100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1214
    check-cast v1, Landroid/widget/TextView;

    .line 1215
    sget v2, Laxo$f;->new_mail_count:I

    .line 4100
    invoke-virtual {p1, v2}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1216
    sget v3, Laxo$f;->switch_btn:I

    .line 5100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1217
    sget v4, Laxo$f;->unread_count_layout:I

    .line 6100
    invoke-virtual {p1, v4}, Lrr;->a(I)Landroid/view/View;

    move-result-object v4

    .line 1218
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 7096
    iget-object v2, p1, Lrr;->a:Landroid/content/Context;

    .line 1222
    iget v3, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget v2, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v2}, Lrx;->a(I)I

    move-result v2

    .line 1224
    if-gez v2, :cond_0

    .line 1225
    sget v2, Laxo$i;->icon_file:I

    .line 1227
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1228
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 1229
    const/4 v2, 0x0

    aget-object v2, p3, v2

    .line 1230
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v3, :cond_1

    .line 1231
    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1232
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1233
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxo$c;->cspace_bottom_disable:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1234
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_theme_icon_disabled_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void

    .line 1236
    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxo$c;->alm_cmail_color_191f25:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1237
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_theme_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
