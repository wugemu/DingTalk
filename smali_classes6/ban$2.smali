.class final Lban$2;
.super Lckm$a;
.source "DingMeetingMinutesPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lban;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Lbfv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lban;


# direct methods
.method constructor <init>(Lban;)V
    .locals 0
    .param p1, "this$0"    # Lban;

    .prologue
    .line 58
    iput-object p1, p0, Lban$2;->a:Lban;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 58
    check-cast p1, Lbfv;

    .line 1061
    if-eqz p1, :cond_0

    .line 1062
    iget-object v0, p0, Lban$2;->a:Lban;

    .line 2036
    iget-object v1, v0, Lban;->a:Lbam$b;

    .line 1062
    invoke-virtual {p1}, Lbfv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v2

    .line 1063
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    .line 3036
    iget-wide v6, p1, Lbfv;->d:J

    .line 1063
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1062
    :goto_0
    invoke-interface {v1, v2, v0}, Lbam$b;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    .line 58
    :cond_0
    return-void

    .line 1063
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
