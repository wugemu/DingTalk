.class public final Ldvq;
.super Ldvv;
.source "BusinessBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldvv",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_DOWN:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-direct {p0, p1, v0}, Ldvq;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ldvv;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvq;->d:Z

    .line 40
    return-void
.end method

.method static synthetic a(Ldvq;Z)Z
    .locals 1
    .param p0, "x0"    # Ldvq;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvq;->d:Z

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Ldvq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 47
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->creatorType:I

    sget v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->BUSI_TYPE_SYSTEM:I

    if-ne v1, v2, :cond_0

    .line 48
    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_SYSTEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    .line 52
    :goto_0
    return-object v1

    .line 49
    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->creatorType:I

    sget v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->BUSI_TYPE_ADD:I

    if-ne v1, v2, :cond_1

    .line 50
    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_ADD:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    goto :goto_0

    .line 52
    :cond_1
    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 1057
    iget-boolean v0, p0, Ldvq;->d:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->creatorType:I

    sget v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->BUSI_TYPE_NORMAL:I

    if-ne v0, v1, :cond_0

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldvq;->d:Z

    .line 1064
    if-eqz p1, :cond_0

    iget-wide v0, p0, Ldvq;->c:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    iget-wide v2, p0, Ldvq;->c:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->orgId:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->id:J

    new-instance v0, Ldvq$1;

    invoke-direct {v0, p0}, Ldvq$1;-><init>(Ldvq;)V

    const-class v8, Lcma;

    iget-object v9, p0, Ldvq;->b:Landroid/app/Activity;

    invoke-static {v0, v8, v9}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2076
    cmp-long v8, v2, v10

    if-nez v8, :cond_2

    .line 2077
    const-string/jumbo v1, ""

    const-string/jumbo v2, "openid is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2080
    :cond_2
    new-instance v8, Ldyi$4;

    invoke-direct {v8, v1, v0}, Ldyi$4;-><init>(Ldyi;Lcma;)V

    .line 2086
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 2087
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v8}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->readBusinessItem(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
