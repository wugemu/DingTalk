.class final Lfzu$27$2;
.super Lgoi;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$27;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$27;


# direct methods
.method constructor <init>(Lfzu$27;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$27;

    .prologue
    .line 2847
    iput-object p1, p0, Lfzu$27$2;->a:Lfzu$27;

    invoke-direct {p0}, Lgoi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v3, 0x0

    .line 2850
    invoke-super {p0, p1}, Lgoi;->a(Ljava/util/List;)V

    .line 2851
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v2, "uploadFile2Space savedb success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2853
    iget-object v1, p0, Lfzu$27$2;->a:Lfzu$27;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1, v0}, Lfzu$27;->a(Lfzu$27;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2855
    :cond_0
    return-void
.end method
