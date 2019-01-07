.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:J

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:J

.field final synthetic f:Landroid/os/Bundle;

.field final synthetic g:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLandroid/app/Activity;JLandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->g:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-wide p4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->c:J

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->d:Landroid/app/Activity;

    iput-wide p7, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->e:J

    iput-object p9, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 378
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->c:J

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->e:J

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->f:Landroid/os/Bundle;

    invoke-static/range {v0 .. v8}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->e:J

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->f:Landroid/os/Bundle;

    invoke-static/range {v0 .. v8}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V

    goto :goto_0
.end method
