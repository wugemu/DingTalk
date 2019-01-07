.class final Lbgy$2;
.super Ljava/lang/Object;
.source "DataSourceDraftImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgy;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbgy;


# direct methods
.method constructor <init>(Lbgy;I)V
    .locals 0
    .param p1, "this$0"    # Lbgy;

    .prologue
    .line 153
    iput-object p1, p0, Lbgy$2;->b:Lbgy;

    iput p2, p0, Lbgy$2;->a:I

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
    .line 157
    :try_start_0
    iget-object v0, p0, Lbgy$2;->b:Lbgy;

    invoke-static {v0}, Lbgy;->b(Lbgy;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDraft;

    const-string/jumbo v3, "tb_ding_draft_v2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "draft_type"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "=?"

    aput-object v7, v4, v5

    .line 160
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lbgy$2;->a:I

    .line 161
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v6

    .line 163
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "[DataSourceDraft]delete draft by type failed"

    invoke-static {v0, v6}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
