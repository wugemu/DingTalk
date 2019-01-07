.class final Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;
.super Lcq;
.source "CMailSearchActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcn;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
    .param p2, "fm"    # Lcn;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .line 267
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 312
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->b:Landroid/view/View$OnClickListener;

    .line 268
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "fragment":Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    if-nez p1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-class v4, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v0

    .line 305
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 306
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;)V

    .line 309
    :cond_2
    return-object v0

    .line 279
    :cond_3
    if-ne p1, v4, :cond_5

    .line 280
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v1

    if-nez v1, :cond_4

    .line 281
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const-class v4, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-static {v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_5
    if-ne p1, v5, :cond_7

    .line 286
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v1

    if-nez v1, :cond_6

    .line 287
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    invoke-static {v2, v5, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .line 290
    :cond_6
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    .line 292
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v1

    if-nez v1, :cond_8

    .line 293
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    invoke-static {v2, v4, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_9
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v1

    if-nez v1, :cond_a

    .line 299
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const-class v4, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-static {v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .line 302
    :cond_a
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x5

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->k(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
