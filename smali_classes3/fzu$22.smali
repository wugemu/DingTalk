.class final Lfzu$22;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2309
    iput-object p1, p0, Lfzu$22;->a:Landroid/content/Context;

    iput-object p2, p0, Lfzu$22;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lfzu$22;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2309
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3312
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3313
    :goto_0
    iget-object v1, p0, Lfzu$22;->a:Landroid/content/Context;

    iget-object v2, p0, Lfzu$22;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, p0, Lfzu$22;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    return-void

    .line 3312
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2322
    iget-object v0, p0, Lfzu$22;->a:Landroid/content/Context;

    iget-object v1, p0, Lfzu$22;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const/4 v2, 0x0

    iget-object v3, p0, Lfzu$22;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2318
    return-void
.end method
