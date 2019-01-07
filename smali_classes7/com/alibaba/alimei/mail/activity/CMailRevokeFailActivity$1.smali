.class final Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;
.super Ljava/lang/Object;
.source "CMailRevokeFailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;
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
        "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sget v0, Laxo$i;->network_no_connection:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcBusinessError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    check-cast p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    .line 1104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    if-nez p1, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b()V

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    .line 1114
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b()V

    goto :goto_0

    .line 1119
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->c()V

    .line 1120
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailRevokeFailActivity;)Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;->e(Ljava/util/List;)V

    goto :goto_0
.end method
