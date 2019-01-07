.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, "Get cmail conversation object error: "

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 195
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1199
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1204
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->r(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    const-string/jumbo v0, "CMailAccountsActivity"

    const-string/jumbo v1, "Get a null cmail conversation object"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
