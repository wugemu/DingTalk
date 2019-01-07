.class final Lfzu$21;
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
        "Lgic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2280
    iput-object p1, p0, Lfzu$21;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p2, p0, Lfzu$21;->b:Landroid/content/Context;

    iput-object p3, p0, Lfzu$21;->c:Ljava/lang/String;

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
    .line 2280
    check-cast p1, Lgic;

    .line 3283
    if-nez p1, :cond_0

    .line 3284
    const-string/jumbo v0, "null"

    const-string/jumbo v1, "(result is null)"

    invoke-virtual {p0, v0, v1}, Lfzu$21;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    :goto_0
    return-void

    .line 3287
    :cond_0
    iget-object v0, p0, Lfzu$21;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 4109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3287
    invoke-static {v0, v1, p1}, Lgpr;->a(JLgic;)V

    .line 3288
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    .line 3289
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v1, p0, Lfzu$21;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lfzu$21;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v1, v2}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3288
    invoke-virtual {v0, v1}, Lgqd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3290
    iget-object v1, p0, Lfzu$21;->b:Landroid/content/Context;

    iget-object v2, p0, Lfzu$21;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, p0, Lfzu$21;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 2299
    iget-object v0, p0, Lfzu$21;->b:Landroid/content/Context;

    iget-object v1, p0, Lfzu$21;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const/4 v2, 0x0

    iget-object v3, p0, Lfzu$21;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2295
    return-void
.end method
