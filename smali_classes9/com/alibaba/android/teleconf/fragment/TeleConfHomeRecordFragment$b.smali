.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Z)V
    .locals 2
    .param p3, "recordItem"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .param p4, "confRecord"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
            ">;",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3040
    .local p2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->b:Ljava/lang/String;

    .line 3037
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->e:J

    .line 3041
    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->c:Ljava/util/List;

    .line 3042
    if-eqz p3, :cond_0

    .line 3043
    iput-object p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->d:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 3044
    iget-object v0, p3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->b:Ljava/lang/String;

    .line 3045
    iget-wide v0, p3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->e:J

    .line 3047
    :cond_0
    iput-boolean p4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->f:Z

    .line 3048
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    .prologue
    .line 3033
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->d:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    .prologue
    .line 3033
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3033
    check-cast p1, Ljava/util/List;

    .line 4053
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4056
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4057
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 4058
    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 4059
    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3033
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3184
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "muti req error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 3180
    return-void
.end method
