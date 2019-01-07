.class public final Lelj$2;
.super Lcom/alibaba/wukong/im/StatusNotifyListener;
.source "BackgroundTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lelj;


# direct methods
.method public constructor <init>(Lelj;)V
    .locals 0
    .param p1, "this$0"    # Lelj;

    .prologue
    .line 92
    iput-object p1, p0, Lelj$2;->a:Lelj;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/StatusNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Lcom/alibaba/wukong/im/IMStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/alibaba/wukong/im/IMStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/StatusNotifyListener;->onStatusChanged(Lcom/alibaba/wukong/im/IMStatus;)V

    .line 96
    iget-object v0, p1, Lcom/alibaba/wukong/im/IMStatus;->mStatus:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    sget-object v1, Lcom/alibaba/wukong/im/IMStatus$StatusType;->STORAGE_FULL:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lelj$2;->a:Lelj;

    .line 1038
    const/4 v1, 0x1

    iput-boolean v1, v0, Lelj;->b:Z

    .line 99
    :cond_0
    return-void
.end method
