.class final Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;
.super Ljava/lang/Object;
.source "MailContactService.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/lookup/MailContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/sdk/lookup/MailContactService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/sdk/lookup/MailContactService;)V
    .locals 1
    .param p1, "service"    # Lcom/alibaba/alimei/sdk/lookup/MailContactService;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;->a:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/sdk/lookup/MailContactService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/sdk/lookup/MailContactService;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;-><init>(Lcom/alibaba/alimei/sdk/lookup/MailContactService;)V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 10
    .param p2, "dataGroupModel"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    const/4 v2, 0x0

    .line 67
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/lookup/MailContactService$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/lookup/MailContactService;

    .line 68
    .local v0, "service":Lcom/alibaba/alimei/sdk/lookup/MailContactService;
    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v1, "mailContactService is null, so return"

    invoke-static {v1}, Lzb;->e(Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/lookup/MailContactService;->a(Lcom/alibaba/alimei/sdk/lookup/MailContactService;)Lajd;

    move-result-object v3

    .line 2112
    invoke-static {}, Laio;->a()J

    move-result-wide v4

    .line 2113
    iget-wide v6, v3, Lajd;->e:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-gtz v1, :cond_3

    .line 2114
    iget v1, v3, Lajd;->d:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v3, Lajd;->d:I

    .line 2115
    iget v1, v3, Lajd;->d:I

    iget v6, v3, Lajd;->c:I

    if-lt v1, v6, :cond_2

    .line 2116
    iget v1, v3, Lajd;->c:I

    iput v1, v3, Lajd;->d:I

    .line 2124
    :cond_2
    :goto_1
    iput-wide v4, v3, Lajd;->e:J

    .line 3100
    iget-object v1, v3, Lajd;->f:Lajd$a;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 1132
    :goto_2
    if-nez v1, :cond_0

    .line 1136
    new-instance v1, Lajd$a;

    invoke-direct {v1, v3, v2}, Lajd$a;-><init>(Lajd;B)V

    iput-object v1, v3, Lajd;->f:Lajd$a;

    .line 1137
    iget-object v1, v3, Lajd;->a:Ljava/util/Timer;

    iget-object v2, v3, Lajd;->f:Lajd$a;

    iget v3, v3, Lajd;->d:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 2120
    :cond_3
    iget v1, v3, Lajd;->b:I

    iput v1, v3, Lajd;->d:I

    goto :goto_1

    :cond_4
    move v1, v2

    .line 3100
    goto :goto_2
.end method
