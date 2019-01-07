.class final Lgli$7$1$1;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgli$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lgli$7$1;


# direct methods
.method constructor <init>(Lgli$7$1;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$2"    # Lgli$7$1;

    .prologue
    .line 294
    iput-object p1, p0, Lgli$7$1$1;->b:Lgli$7$1;

    iput-object p2, p0, Lgli$7$1$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Lgli$7$1$1;->b:Lgli$7$1;

    iget-object v0, v0, Lgli$7$1;->b:Lgli$7;

    iget-object v0, v0, Lgli$7;->b:Lgli;

    .line 1040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 297
    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lgli$7$1$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lgli$7$1$1;->b:Lgli$7$1;

    iget-object v0, v0, Lgli$7$1;->b:Lgli$7;

    iget-object v0, v0, Lgli$7;->b:Lgli;

    .line 2040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 301
    iget-object v1, p0, Lgli$7$1$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lgli$7$1$1;->b:Lgli$7$1;

    iget-object v0, v0, Lgli$7$1;->b:Lgli$7;

    iget-object v0, v0, Lgli$7;->b:Lgli;

    .line 3040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 303
    const-string/jumbo v1, ""

    iget-object v2, p0, Lgli$7$1$1;->b:Lgli$7$1;

    iget-object v2, v2, Lgli$7$1;->b:Lgli$7;

    iget-object v2, v2, Lgli$7;->b:Lgli;

    .line 4040
    iget-object v2, v2, Lgli;->a:Landroid/content/Context;

    .line 303
    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
