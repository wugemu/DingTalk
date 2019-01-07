.class final Leic$1;
.super Ljava/lang/Object;
.source "UpLoadLogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Leic$1;->a:Ljava/lang/String;

    iput-object p2, p0, Leic$1;->b:Ljava/lang/String;

    iput-object p3, p0, Leic$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-object v4, p0, Leic$1;->a:Ljava/lang/String;

    invoke-static {v4}, Leic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "logSdk":Ljava/lang/String;
    const-string/jumbo v1, "&ltype=Focus"

    .line 41
    .local v1, "focusIdentity":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 42
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 43
    const-string/jumbo v4, "&log="

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    iget-object v5, p0, Leic$1;->b:Ljava/lang/String;

    invoke-static {v5}, Leic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 44
    const-string/jumbo v4, "&sdkLog="

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-static {v2}, Leic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 45
    const-string/jumbo v4, "&sessionId="

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    iget-object v5, p0, Leic$1;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 46
    const-string/jumbo v4, "&dev=Android"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 47
    new-instance v3, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;-><init>()V

    .line 48
    .local v3, "postLogModel":Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;
    const-string/jumbo v4, "dingding"

    iput-object v4, v3, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;->domain:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;->data:Ljava/lang/String;

    .line 50
    new-instance v4, Leic$1$1;

    invoke-direct {v4, p0}, Leic$1$1;-><init>(Leic$1;)V

    invoke-static {v3, v4}, Liel;->a(Lcom/alibaba/wukong/openav/internal/channel/model/PostLogModel;Liew;)V

    .line 62
    return-void
.end method
