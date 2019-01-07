.class public final Lgag;
.super Ljava/lang/Object;
.source "CsOrgLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgag$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static a(Lgag$a;Lcma;)V
    .locals 2
    .param p0, "request"    # Lgag$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgag$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsOrg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsOrg;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgag$1;

    invoke-direct {v1, p1, p0}, Lgag$1;-><init>(Lcma;Lgag$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method
