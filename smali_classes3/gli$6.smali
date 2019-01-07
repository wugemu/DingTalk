.class final Lgli$6;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgli;


# direct methods
.method constructor <init>(Lgli;)V
    .locals 0
    .param p1, "this$0"    # Lgli;

    .prologue
    .line 243
    iput-object p1, p0, Lgli$6;->a:Lgli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    iget-object v0, p0, Lgli$6;->a:Lgli;

    iget-object v1, p0, Lgli$6;->a:Lgli;

    .line 1040
    iget-object v1, v1, Lgli;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 247
    iget-object v2, p0, Lgli$6;->a:Lgli;

    .line 2040
    iget-object v2, v2, Lgli;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3267
    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 3268
    :cond_0
    iget-object v1, v0, Lgli;->d:Lcma;

    if-eqz v1, :cond_1

    .line 3269
    iget-object v1, v0, Lgli;->d:Lcma;

    const-string/jumbo v2, ""

    iget-object v0, v0, Lgli;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    :cond_1
    :goto_0
    return-void

    .line 3274
    :cond_2
    new-instance v3, Lgpa;

    invoke-direct {v3}, Lgpa;-><init>()V

    .line 3275
    iput-object v2, v3, Lgpa;->a:Ljava/lang/Object;

    .line 3276
    const/4 v1, 0x0

    iput-boolean v1, v3, Lgpa;->e:Z

    .line 3277
    new-instance v1, Lgli$7;

    invoke-direct {v1, v0, v2}, Lgli$7;-><init>(Lgli;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 3318
    iget-object v2, v0, Lgli;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 3319
    const-class v2, Lgqr;

    iget-object v0, v0, Lgli;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqr;

    .line 3321
    :goto_1
    invoke-static {}, Lgpc;->a()Lgpc;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lgpc;->a(Landroid/content/Context;Lgpa;Lgqr;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
