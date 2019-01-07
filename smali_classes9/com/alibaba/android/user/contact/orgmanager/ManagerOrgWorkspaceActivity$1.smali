.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$1;
.super Ljava/lang/Object;
.source "ManagerOrgWorkspaceActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x4

    .line 150
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 151
    .local v0, "length":I
    if-lez v0, :cond_0

    if-le v0, v5, :cond_1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    sget v2, Lezg$l;->profile_nick_hint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 154
    :cond_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 142
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 146
    return-void
.end method
