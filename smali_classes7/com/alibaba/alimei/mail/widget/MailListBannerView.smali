.class public Lcom/alibaba/alimei/mail/widget/MailListBannerView;
.super Lcom/alibaba/alimei/mail/widget/ListViewForScrollView;
.source "MailListBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;,
        Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lafa$a;

.field private c:Lrz;

.field private d:Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/ListViewForScrollView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lrz;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v2, v3}, Lrz;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->c:Lrz;

    .line 111
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/widget/ListViewForScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lrz;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v2, v3}, Lrz;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->c:Lrz;

    .line 116
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/widget/ListViewForScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Lrz;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v2, v3}, Lrz;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->c:Lrz;

    .line 121
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->d:Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->d:Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/MailListBannerView;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailListBannerView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    .line 3152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3158
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 3162
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView$2;-><init>(Lcom/alibaba/alimei/mail/widget/MailListBannerView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/MailListBannerView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailListBannerView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lafl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "adses":Ljava/util/List;, "Ljava/util/List<Lafl;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->d:Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->d:Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->b(Ljava/util/List;)V

    .line 177
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 178
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 204
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->c:Lrz;

    invoke-virtual {v5}, Lrz;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->c:Lrz;

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lrz;->a:J

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafl;

    .line 214
    .local v3, "obj":Lafl;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 220
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Laxo$f;->banner_title:I

    if-ne v5, v6, :cond_4

    .line 222
    if-eqz v0, :cond_0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2482
    const-string/jumbo v5, "mail_list_notificationbanner_click"

    invoke-static {v5}, Lafe;->a(Ljava/lang/String;)V

    .line 228
    iget-object v5, v3, Lafl;->g:Lafl$a;

    if-eqz v5, :cond_3

    .line 229
    iget-object v5, v3, Lafl;->g:Lafl$a;

    invoke-interface {v5, v0}, Lafl$a;->a(Landroid/app/Activity;)V

    .line 243
    :cond_2
    :goto_1
    invoke-static {}, Lafa;->a()Lafa;

    move-result-object v2

    .line 244
    .local v2, "mailListBannerHelper":Lafa;
    invoke-virtual {v2, v3}, Lafa;->a(Lafl;)V

    goto :goto_0

    .line 231
    .end local v2    # "mailListBannerHelper":Lafa;
    :cond_3
    iget-object v4, v3, Lafl;->c:Ljava/lang/String;

    .line 232
    .local v4, "url":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1

    .line 236
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Laxo$f;->banner_close:I

    if-ne v5, v6, :cond_2

    .line 237
    iget-object v5, v3, Lafl;->g:Lafl$a;

    if-eqz v5, :cond_2

    .line 238
    iget-object v5, v3, Lafl;->g:Lafl$a;

    invoke-interface {v5, v0}, Lafl$a;->b(Landroid/app/Activity;)V

    goto :goto_1
.end method
