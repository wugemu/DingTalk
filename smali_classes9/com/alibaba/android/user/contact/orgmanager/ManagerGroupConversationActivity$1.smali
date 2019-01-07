.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$1;
.super Ljava/lang/Object;
.source "ManagerGroupConversationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b()V
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
    .line 103
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    if-eqz p2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->c(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    goto :goto_0
.end method
