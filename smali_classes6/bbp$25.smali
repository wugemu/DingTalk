.class public final Lbbp$25;
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1315
    iput-object p1, p0, Lbbp$25;->b:Lbbp;

    iput-object p2, p0, Lbbp$25;->a:Lcom/alibaba/wukong/Callback;

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1318
    iget-object v4, p0, Lbbp$25;->a:Lcom/alibaba/wukong/Callback;

    .line 5802
    invoke-static {}, Lbhl;->a()Lbhl;

    move-result-object v5

    .line 6092
    invoke-virtual {v5}, Lbhl;->b()V

    .line 6093
    const-string/jumbo v0, "sp_isding_reddot_opend"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 6096
    invoke-static {}, Lbju;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 6097
    const-string/jumbo v0, "sp_isding_reddot_opend"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    move v0, v1

    .line 6103
    :goto_0
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[DingInterfaceImpl] isLocalNotExistsOrInvalid invalid="

    aput-object v7, v6, v2

    .line 6104
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    const-string/jumbo v8, ",lastDingRedDotOpen="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x4

    const-string/jumbo v7, ", mDingUnreadCountObject="

    aput-object v7, v6, v3

    const/4 v7, 0x5

    iget-object v3, v5, Lbhl;->b:Lbfb;

    if-eqz v3, :cond_4

    iget-object v3, v5, Lbhl;->b:Lbfb;

    .line 6105
    invoke-virtual {v3}, Lbfb;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v7

    .line 6103
    invoke-static {v6}, Lbkd;->a([Ljava/lang/String;)V

    .line 6106
    if-nez v0, :cond_0

    iget-object v0, v5, Lbhl;->b:Lbfb;

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    .line 5802
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1319
    return-void

    .line 6099
    :cond_2
    invoke-static {}, Lbju;->u()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    .line 6100
    const-string/jumbo v0, "sp_isding_reddot_opend"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    :cond_3
    move v0, v2

    goto :goto_0

    .line 6105
    :cond_4
    const-string/jumbo v3, "null"

    goto :goto_1
.end method
