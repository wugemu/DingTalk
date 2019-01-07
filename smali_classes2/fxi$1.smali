.class final Lfxi$1;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxi;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxi;


# direct methods
.method constructor <init>(Lfxi;)V
    .locals 0
    .param p1, "this$0"    # Lfxi;

    .prologue
    .line 53
    iput-object p1, p0, Lfxi$1;->a:Lfxi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "update_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->g()Lfmw;

    move-result-object v0

    .line 60
    .local v0, "quotaDataSource":Lfmw;
    if-eqz v0, :cond_0

    .line 61
    const-string/jumbo v2, "tb_quota_entry"

    invoke-interface {v0, v2, v1, v4, v4}, Lfmw;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method
