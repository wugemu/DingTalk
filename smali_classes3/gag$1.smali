.class final Lgag$1;
.super Ljava/lang/Object;
.source "CsOrgLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgag;->a(Lgag$a;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgag$a;


# direct methods
.method constructor <init>(Lcma;Lgag$a;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgag$1;->a:Lcma;

    iput-object p2, p0, Lgag$1;->b:Lgag$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 129
    iget-object v1, p0, Lgag$1;->a:Lcma;

    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lgag$1;->b:Lgag$a;

    invoke-virtual {v1}, Lgag$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v0

    .line 133
    .local v0, "csOrg":Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    iget-object v1, p0, Lgag$1;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
