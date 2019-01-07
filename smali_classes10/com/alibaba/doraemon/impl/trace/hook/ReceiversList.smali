.class public Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;
.super Ljava/util/ArrayList;
.source "ReceiversList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiversList"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;->mIntent:Landroid/content/Intent;

    .line 22
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/hook/ReceiversList;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.doraemon.TRACEID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "traceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
