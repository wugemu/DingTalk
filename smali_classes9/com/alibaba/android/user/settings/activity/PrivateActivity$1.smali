.class final Lcom/alibaba/android/user/settings/activity/PrivateActivity$1;
.super Ljava/lang/Object;
.source "PrivateActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/PrivateActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$1;->a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 136
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    invoke-static {p1, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1140
    invoke-static {v0}, Lflw;->a(Z)V

    .line 1141
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$1;->a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1143
    const-string/jumbo v0, "match_contact"

    const-string/jumbo v1, "PrivateActivity checkPhonebookMatch success, phonebookMatchSwitch=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    const-string/jumbo v0, "match_contact"

    const-string/jumbo v1, "PrivateActivity checkPhonebookMatch exception, code=%s, reason=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 149
    return-void
.end method
