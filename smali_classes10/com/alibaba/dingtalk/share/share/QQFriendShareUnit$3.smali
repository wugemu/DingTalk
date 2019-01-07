.class final Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$3;
.super Ljava/lang/Object;
.source "QQFriendShareUnit.java"

# interfaces
.implements Ljuc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$3;->a:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qq"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share img cancel"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "to"

    const-string/jumbo v2, "qq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "share_to"

    invoke-interface {v1, v5, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 166
    const-string/jumbo v1, "share"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qq"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share img suc"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget v1, Lgvn$h;->share_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 168
    return-void
.end method

.method public final a(Ljue;)V
    .locals 5
    .param p1, "uiError"    # Ljue;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qq"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share img error:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Ljue;->a:I

    .line 173
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Ljue;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p1, Ljue;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 172
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 175
    return-void
.end method
