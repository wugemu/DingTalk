.class final Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;
.super Ljava/lang/Object;
.source "CMailSignMottoListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lzz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 123
    check-cast p1, Lzz;

    .line 1126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->g()V

    .line 1130
    if-eqz p1, :cond_0

    iget-object v0, p1, Lzz;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lzz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1131
    :cond_0
    const-string/jumbo v0, "CMailSignMottoListActivity"

    const-string/jumbo v1, "motto server result empty\uff01"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_1
    :goto_0
    return-void

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1135
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p1, Lzz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1136
    iget-object v0, p1, Lzz;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaa;

    .line 1137
    iget-object v2, v0, Laaa;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1138
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, v0, Laaa;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1141
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->notifyDataSetChanged()V

    .line 1142
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v0, "CMailSignMottoListActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->g()V

    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->notifyDataSetChanged()V

    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 147
    return-void
.end method
