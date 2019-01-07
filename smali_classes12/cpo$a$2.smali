.class final Lcpo$a$2;
.super Ljava/lang/Object;
.source "RollbackManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcpo$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcpo$a;


# direct methods
.method constructor <init>(Lcpo$a;)V
    .locals 0
    .param p1, "this$0"    # Lcpo$a;

    .prologue
    .line 83
    iput-object p1, p0, Lcpo$a$2;->a:Lcpo$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcpo$a$2;->a:Lcpo$a;

    .line 1110
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 1112
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "intent_action_rollback"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1113
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v0, v0, Lcpo$a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    const-string/jumbo v1, "dingtalkbase"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "registerReceiver rollback error"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1116
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1115
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcpo$a$2;->a:Lcpo$a;

    .line 2121
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 2123
    :try_start_0
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v0, v0, Lcpo$a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    :goto_0
    return-void

    .line 2124
    :catch_0
    move-exception v0

    .line 2125
    const-string/jumbo v1, "dingtalkbase"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "unregisterReceiver rollback error"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2126
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 2125
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
