.class public final Lbom$1;
.super Ljava/lang/Object;
.source "LatestPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

.field final synthetic b:Lbom;


# direct methods
.method public constructor <init>(Lbom;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;)V
    .locals 0
    .param p1, "this$0"    # Lbom;

    .prologue
    .line 35
    iput-object p1, p0, Lbom$1;->b:Lbom;

    iput-object p2, p0, Lbom$1;->a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Long;

    .line 1038
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1039
    :cond_0
    const-string/jumbo v0, "get cursor error!"

    .line 1076
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 1040
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v1, p0, Lbom$1;->b:Lbom;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lbom$1;->a:Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    .line 2050
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v5

    .line 2051
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lbom$2;

    invoke-direct {v6, v1, v4}, Lbom$2;-><init>(Lbom;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;)V

    const-class v4, Lcma;

    iget-object v1, v1, Lbom;->a:Landroid/app/Activity;

    invoke-interface {v0, v6, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2070
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Lbou;->d(Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method
