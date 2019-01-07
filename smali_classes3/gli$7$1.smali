.class final Lgli$7$1;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgli$7;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgli$7;


# direct methods
.method constructor <init>(Lgli$7;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lgli$7;

    .prologue
    .line 284
    iput-object p1, p0, Lgli$7$1;->b:Lgli$7;

    iput-object p2, p0, Lgli$7$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 287
    iget-object v1, p0, Lgli$7$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lgoc;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 288
    .local v0, "newSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lgli$7$1;->b:Lgli$7;

    iget-object v1, v1, Lgli$7;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 291
    :cond_0
    iget-object v1, p0, Lgli$7$1;->b:Lgli$7;

    iget-object v1, v1, Lgli$7;->b:Lgli;

    .line 1040
    iget-object v1, v1, Lgli;->d:Lcma;

    .line 291
    if-nez v1, :cond_1

    .line 307
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgli$7$1$1;

    invoke-direct {v2, p0, v0}, Lgli$7$1$1;-><init>(Lgli$7$1;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
