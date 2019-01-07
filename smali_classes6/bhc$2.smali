.class final Lbhc$2;
.super Ljava/lang/Object;
.source "DataSourcePegDraftImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhc;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhc;


# direct methods
.method constructor <init>(Lbhc;)V
    .locals 0
    .param p1, "this$0"    # Lbhc;

    .prologue
    .line 80
    iput-object p1, p0, Lbhc$2;->a:Lbhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lbhc$2;->a:Lbhc;

    invoke-static {v0}, Lbhc;->b(Lbhc;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    const-string/jumbo v3, "tbdingpegdraft"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "indicator"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "=?"

    aput-object v7, v4, v5

    .line 87
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "1"

    .line 88
    aput-object v8, v5, v7

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v6

    .line 90
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "[DataSourcePegDraft]clear failed"

    invoke-static {v0, v6}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
