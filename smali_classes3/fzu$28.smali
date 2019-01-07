.class final Lfzu$28;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lgiy;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lgiy;

.field final synthetic d:J

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(ZZLgiy;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 2957
    iput-boolean p1, p0, Lfzu$28;->a:Z

    iput-boolean p2, p0, Lfzu$28;->b:Z

    iput-object p3, p0, Lfzu$28;->c:Lgiy;

    iput-wide p4, p0, Lfzu$28;->d:J

    iput-object p6, p0, Lfzu$28;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 2957
    check-cast p1, Ljava/lang/Long;

    .line 3960
    if-nez p1, :cond_2

    move-wide v2, v0

    .line 3961
    :goto_0
    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    .line 3962
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v4, p0, Lfzu$28;->a:Z

    invoke-virtual {v0, v1, v4}, Lfzv;->a(Ljava/lang/Long;Z)V

    .line 3963
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v4, p0, Lfzu$28;->b:Z

    invoke-virtual {v0, v1, v4}, Lfzv;->b(Ljava/lang/Long;Z)V

    .line 3964
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lfzu$28;->c:Lgiy;

    iget-object v4, v4, Lgiy;->l:Ljava/lang/Long;

    invoke-static {v4}, Lgpt;->a(Ljava/lang/Long;)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lfzv;->a(Ljava/lang/String;Z)V

    .line 3965
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lfzu$28;->d:J

    invoke-virtual {v0, v1, v4, v5}, Lfzv;->a(Ljava/lang/String;J)V

    .line 3966
    iget-object v0, p0, Lfzu$28;->c:Lgiy;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 4176
    if-nez v0, :cond_3

    .line 4177
    const-string/jumbo v0, "updateConversationSpaceId(BaseConversationModel, ...)"

    const-string/jumbo v1, "null conversation"

    invoke-static {v0, v1}, Lgps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    :cond_0
    :goto_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$28;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/read_only_setting.html"

    .line 3968
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lfzu$28$1;

    invoke-direct {v5, p0, v2, v3}, Lfzu$28$1;-><init>(Lfzu$28;J)V

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    :cond_1
    :goto_2
    return-void

    .line 3960
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 4180
    :cond_3
    iget-object v4, v0, Lgiy;->f:Ljava/util/Map;

    if-nez v4, :cond_4

    .line 4181
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lgiy;->f:Ljava/util/Map;

    .line 4183
    :cond_4
    iget-object v0, v0, Lgiy;->f:Ljava/util/Map;

    .line 4346
    if-eqz v0, :cond_0

    .line 4349
    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Lgps;->a(ZI)Lgps$a;

    move-result-object v4

    .line 5064
    iget-object v5, v4, Lgps$a;->d:Ljava/lang/String;

    .line 4350
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6064
    iget-object v5, v4, Lgps$a;->d:Ljava/lang/String;

    .line 4353
    const-string/jumbo v6, "newCSpaceIdIM"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4354
    const-string/jumbo v4, "newCSpaceIdIM"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4355
    const-string/jumbo v4, "cSpaceId"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7064
    :cond_5
    iget-object v4, v4, Lgps$a;->d:Ljava/lang/String;

    .line 4357
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3978
    :cond_6
    iget-object v0, p0, Lfzu$28;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 3979
    iget-object v0, p0, Lfzu$28;->e:Landroid/content/Context;

    sget v1, Lfzs$h;->dt_cspace_server_busy_respone_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2990
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "generate space id error code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "des is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    iget-object v0, p0, Lfzu$28;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2992
    iget-object v0, p0, Lfzu$28;->e:Landroid/content/Context;

    sget v1, Lfzs$h;->dt_cspace_server_busy_respone_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2993
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2986
    return-void
.end method
