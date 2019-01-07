.class final Lfzu$27$1;
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
    .line 2828
    iput-object p1, p0, Lfzu$27$1;->a:Lfzu$27;

    invoke-direct {p0}, Lgoi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v4, 0x0

    .line 2831
    invoke-super {p0, p1}, Lgoi;->a(Ljava/util/List;)V

    .line 2832
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "uploadFile2Space savedb success"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2835
    iget-object v2, p0, Lfzu$27$1;->a:Lfzu$27;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v1}, Lfzu$27;->a(Lfzu$27;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2842
    :goto_0
    return-void

    .line 2837
    :cond_0
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "uploadFile2Space savedb error"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 2839
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    .line 2840
    iget-object v1, p0, Lfzu$27$1;->a:Lfzu$27;

    iget-object v1, v1, Lfzu$27;->c:Lgpe$b;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3, v0}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method
