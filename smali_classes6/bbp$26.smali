.class public final Lbbp$26;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1328
    iput-object p1, p0, Lbbp$26;->a:Lbbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1331
    iget-object v0, p0, Lbbp$26;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    .line 4337
    iget-object v1, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->clear()V

    .line 4338
    iget-object v1, v0, Lbbo;->d:Lbhf;

    .line 5191
    iput-object v3, v1, Lbhf;->a:Lbhf$a;

    .line 4339
    iput-boolean v2, v0, Lbbo;->a:Z

    .line 6068
    const-string/jumbo v0, "pref_key_has_no_more_all_dings"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 4341
    invoke-static {}, Lbhl;->a()Lbhl;

    move-result-object v0

    .line 6115
    iput-object v3, v0, Lbhl;->b:Lbfb;

    .line 6116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingUnReadCountManager] clear"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lbbp$26;->a:Lbbp;

    invoke-static {v0}, Lbbp;->b(Lbbp;)Lbbq;

    move-result-object v0

    .line 6296
    new-instance v1, Lbbq$3;

    invoke-direct {v1, v0}, Lbbq$3;-><init>(Lbbq;)V

    .line 7287
    if-eqz v1, :cond_0

    .line 7288
    iget-object v0, v0, Lbbq;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1333
    :cond_0
    return-void
.end method
