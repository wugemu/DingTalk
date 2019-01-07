.class final Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;
.super Landroid/widget/BaseAdapter;
.source "CMailSignMottoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 237
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 212
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 218
    if-nez p2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_fragment_mail_motto_select_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 220
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;Landroid/view/View;)V

    .line 221
    .local v0, "holder":Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 234
    :cond_0
    :goto_1
    return-object p2

    .line 223
    .end local v0    # "holder":Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;

    .restart local v0    # "holder":Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;
    goto :goto_0

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "itemLabel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_2
.end method
