.class Lcom/ta/audid/device/AppUtdid$1;
.super Ljava/lang/Object;
.source "AppUtdid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/audid/device/AppUtdid;->uploadAppUtdid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/audid/device/AppUtdid;


# direct methods
.method constructor <init>(Lcom/ta/audid/device/AppUtdid;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ta/audid/device/AppUtdid;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ta/audid/device/AppUtdid$1;->this$0:Lcom/ta/audid/device/AppUtdid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v1, p0, Lcom/ta/audid/device/AppUtdid$1;->this$0:Lcom/ta/audid/device/AppUtdid;

    invoke-static {v1}, Lcom/ta/audid/device/AppUtdid;->access$000(Lcom/ta/audid/device/AppUtdid;)V

    .line 173
    invoke-static {}, Lcom/ta/audid/upload/AppsResponse;->getInstance()Lcom/ta/audid/upload/AppsResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/upload/AppsResponse;->requestAppList()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "mUploadStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ta/audid/device/AppUtdid$1;->this$0:Lcom/ta/audid/device/AppUtdid;

    invoke-static {v1}, Lcom/ta/audid/device/AppUtdid;->access$100(Lcom/ta/audid/device/AppUtdid;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/audid/store/UtdidContentBuilder;->buildUtdidFp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/ta/audid/store/UtdidContentSqliteStore;->getInstance()Lcom/ta/audid/store/UtdidContentSqliteStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ta/audid/store/UtdidContentSqliteStore;->insertStringList(Ljava/util/List;)V

    .line 181
    new-instance v1, Lcom/ta/audid/upload/UtdidUploadTask;

    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ta/audid/upload/UtdidUploadTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/ta/audid/upload/UtdidUploadTask;->run()V

    .line 182
    return-void
.end method
