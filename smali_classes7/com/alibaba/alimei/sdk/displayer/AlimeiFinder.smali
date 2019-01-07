.class public Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;
.super Ljava/lang/Object;
.source "AlimeiFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;
    }
.end annotation


# instance fields
.field private isLookuping:Z

.field private mAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->mAccountName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->isLookuping:Z

    .line 29
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->mAccountName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->mAccountName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->isLookuping:Z

    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->mAccountName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->isLookuping:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->mAccountName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public startLookup(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->isLookuping:Z

    if-eqz v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;->isLookuping:Z

    .line 51
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;

    invoke-static {}, Lafv;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;Landroid/os/Handler;Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;)V

    .line 94
    .local v0, "task":Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/api/InnerApiAsyncTask;->execute()V

    goto :goto_0
.end method
