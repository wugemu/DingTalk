.class final Lacv$e$2;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field final synthetic b:Lacv$e;


# direct methods
.method constructor <init>(Lacv$e;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 0
    .param p1, "this$0"    # Lacv$e;

    .prologue
    .line 1213
    iput-object p1, p0, Lacv$e$2;->b:Lacv$e;

    iput-object p2, p0, Lacv$e$2;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1216
    .line 2257
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->y:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lacv$e$2;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2258
    const/4 v0, 0x1

    .line 1216
    :goto_0
    if-nez v0, :cond_1

    .line 1220
    :goto_1
    return-void

    .line 2260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1219
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1213
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    .line 3223
    if-eqz p1, :cond_0

    .line 3226
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->mailServerId:Ljava/lang/String;

    .line 3227
    iget-object v1, p0, Lacv$e$2;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 3230
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3241
    :cond_0
    :goto_0
    return-void

    .line 3234
    :cond_1
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lacv$e$2;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3235
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3236
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v1, v1, Lacv$e;->c:Lacv;

    invoke-static {v1}, Lacv;->p(Lacv;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3237
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-static {v0}, Lacv;->q(Lacv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lrx;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)Ljava/lang/String;

    move-result-object v0

    .line 3238
    iget-object v1, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v1, v1, Lacv$e;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3239
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-static {v0}, Lacv;->o(Lacv;)Lacv$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-virtual {v0}, Lacv;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3241
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->x:Landroid/widget/TextView;

    new-instance v1, Lacv$e$2$1;

    invoke-direct {v1, p0}, Lacv$e$2$1;-><init>(Lacv$e$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3251
    :cond_2
    iget-object v0, p0, Lacv$e$2;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
