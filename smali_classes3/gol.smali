.class public final Lgol;
.super Ljava/lang/Object;
.source "CSpaceSyncListener.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "CSpaceSyncListener"

    iput-object v0, p0, Lgol;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 5
    .param p1, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 29
    const-string/jumbo v1, "CSpace"

    iget-object v2, p0, Lgol;->a:Ljava/lang/String;

    const-string/jumbo v3, "CSpaceSyncListener onTooLong2"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lgam;->a()Lgam;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lgam;->a(Ljava/util/List;Ljava/util/List;)V

    .line 34
    const-string/jumbo v1, "pref_key_ads_new_show"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.ads.new"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 38
    return-void
.end method
