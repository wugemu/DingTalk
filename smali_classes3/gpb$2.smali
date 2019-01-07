.class final Lgpb$2;
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
    .line 88
    iput-object p1, p0, Lgpb$2;->a:Lgpb;

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
    .line 92
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p1

    .line 96
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 98
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
