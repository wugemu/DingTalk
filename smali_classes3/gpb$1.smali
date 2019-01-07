.class final Lgpb$1;
.super Ljava/lang/Object;
.source "SpaceTasksManager.java"

# interfaces
.implements Lgpf$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpb;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpb;


# direct methods
.method constructor <init>(Lgpb;)V
    .locals 0
    .param p1, "this$0"    # Lgpb;

    .prologue
    .line 56
    iput-object p1, p0, Lgpb$1;->a:Lgpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 65
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
