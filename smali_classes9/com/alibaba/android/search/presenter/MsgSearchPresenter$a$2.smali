.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$2;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/search/model/BaseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$2;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 340
    check-cast p1, Lcom/alibaba/android/search/model/BaseModel;

    check-cast p2, Lcom/alibaba/android/search/model/BaseModel;

    .line 1343
    instance-of v1, p1, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v1, :cond_0

    .line 1344
    check-cast p1, Lcom/alibaba/android/search/model/MsgModel;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTimestamp()J

    move-result-wide v2

    .line 1345
    check-cast p2, Lcom/alibaba/android/search/model/MsgModel;

    invoke-virtual {p2}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTimestamp()J

    move-result-wide v4

    .line 1346
    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method
