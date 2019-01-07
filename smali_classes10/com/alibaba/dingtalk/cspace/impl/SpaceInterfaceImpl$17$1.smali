.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V
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
        "Lgrh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lgln;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->b:Lgln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 469
    check-cast p1, Lgrh;

    .line 1472
    if-eqz p1, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v2, p1, Lgrh;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    .line 1474
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, p1, Lgrh;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picUrl:Ljava/lang/String;

    .line 1475
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, p1, Lgrh;->e:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    .line 1476
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, p1, Lgrh;->f:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    .line 1477
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, p1, Lgrh;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 1478
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, p1, Lgrh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    .line 1479
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v2, p1, Lgrh;->h:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picSize:J

    .line 1480
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, p1, Lgrh;->g:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->b:Lgln;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v0, v1}, Lgln;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 469
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->b:Lgln;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v0, v1}, Lgln;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 492
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 487
    return-void
.end method
