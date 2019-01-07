.class final Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "CMailContentSubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Lzt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    .line 126
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 127
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 132
    if-nez p2, :cond_1

    .line 133
    new-instance v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-direct {v8, v0, v5}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;B)V

    .line 134
    .local v8, "viewHolder":Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->cmail_content_subscribe_item_layout:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    sget v0, Laxo$f;->content_icon:I

    invoke-static {p2, v0}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->a:Landroid/widget/ImageView;

    .line 136
    sget v0, Laxo$f;->content_title:I

    invoke-static {p2, v0}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->b:Landroid/widget/TextView;

    .line 137
    sget v0, Laxo$f;->content_desc:I

    invoke-static {p2, v0}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->c:Landroid/widget/TextView;

    .line 138
    sget v0, Laxo$f;->subscribe_button:I

    invoke-static {p2, v0}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->d:Landroid/widget/Button;

    .line 139
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lzt;

    .line 1158
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->e:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1159
    iget-object v1, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->e:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;Lcom/alibaba/doraemon/image/ImageMagician;)Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1161
    :cond_0
    iget-object v0, v9, Lzt;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1162
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->e:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->a:Landroid/widget/ImageView;

    iget-object v2, v9, Lzt;->e:Ljava/lang/String;

    iget-object v3, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->e:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Landroid/widget/ListView;

    move-result-object v3

    const/16 v4, 0x8

    move v6, v5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1167
    :goto_1
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->b:Landroid/widget/TextView;

    iget-object v1, v9, Lzt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->c:Landroid/widget/TextView;

    iget-object v1, v9, Lzt;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v0, v9, Lzt;->b:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    sget-object v1, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_ON:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    if-ne v0, v1, :cond_3

    .line 1170
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1171
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->d:Landroid/widget/Button;

    iget-object v1, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->e:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    sget v2, Laxo$i;->dt_mail_subscribed:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->d:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_2
    return-object p2

    .line 141
    .end local v8    # "viewHolder":Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;

    .restart local v8    # "viewHolder":Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;
    goto :goto_0

    .line 1164
    :cond_2
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->a:Landroid/widget/ImageView;

    sget v1, Laxo$e;->cmail_cainiao_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1174
    :cond_3
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1175
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->d:Landroid/widget/Button;

    iget-object v1, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->e:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    sget v2, Laxo$i;->dt_mail_subscribe:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v0, v8, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b$1;

    invoke-direct {v1, v8, v9}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;Lzt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
