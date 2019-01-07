.class final Laue$2;
.super Ljava/lang/Object;
.source "DataSourceFolderSelectExtraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laue;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Laue;


# direct methods
.method constructor <init>(Laue;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Laue;

    .prologue
    .line 113
    iput-object p1, p0, Laue$2;->b:Laue;

    iput-object p2, p0, Laue$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 117
    :try_start_0
    iget-object v0, p0, Laue$2;->b:Laue;

    invoke-static {v0}, Laue;->b(Laue;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderSelectExtra;

    const-string/jumbo v3, "tb_folder_select_extra"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "c_folder_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "=?"

    aput-object v6, v4, v5

    .line 120
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Laue$2;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[DataSourceFolderSelectExtra] clear failed"

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
