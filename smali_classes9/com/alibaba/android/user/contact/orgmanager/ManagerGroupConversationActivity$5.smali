.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;
.super Ljava/lang/Object;
.source "ManagerGroupConversationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 166
    new-instance v0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;)V

    .line 186
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->f(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)J

    move-result-wide v4

    const-string/jumbo v1, "EVENTBUTLER"

    .line 187
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-interface {v1, v0, v3, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 186
    invoke-virtual {v2, v4, v5, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(JLcma;)V

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    sget v2, Lezg$l;->disbanding_org_group:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->showLoadingDialog(I)V

    .line 189
    return-void
.end method
