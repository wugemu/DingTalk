.class public Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;
.super Ljava/lang/Object;
.source "QuickMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leux;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->c:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    sget v1, Leuj$l;->dt_conf_quick_reply_menu_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1205
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v0, "menuWrapper":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    new-instance v1, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$3;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$3;-><init>(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;Ljava/lang/Runnable;)V

    .line 3581
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;)Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->d:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;)V
    .locals 6
    .param p1, "callback"    # Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->d:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->b:Ljava/util/List;

    .line 2052
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    if-eqz v0, :cond_0

    .line 2054
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leux;

    .line 3014
    iget-object v4, v0, Leux;->a:Ljava/lang/String;

    .line 2077
    new-instance v5, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;-><init>(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;Leux;)V

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    move-result-object v0

    .line 2055
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3064
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->c:Landroid/content/Context;

    sget v3, Leuj$l;->dt_conf_leave_custom_message:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$1;-><init>(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;)V

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    move-result-object v0

    .line 2058
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    .line 45
    return-void
.end method
