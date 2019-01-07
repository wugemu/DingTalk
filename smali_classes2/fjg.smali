.class public Lfjg;
.super Ljava/lang/Object;
.source "FriendPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lfir;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfjg;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfjg;

    .prologue
    .line 33
    iget-object v0, p0, Lfjg;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lfjg;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lfjg;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    iput-object p1, p0, Lfjg;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lfjg;)Lfir;
    .locals 1
    .param p0, "x0"    # Lfjg;

    .prologue
    .line 33
    iget-object v0, p0, Lfjg;->a:Lfir;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 51
    const-class v0, Lfjg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfjg$1;

    invoke-direct {v1, p0}, Lfjg$1;-><init>(Lfjg;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
