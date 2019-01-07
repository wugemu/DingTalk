.class final Lfay$3$1;
.super Ljava/lang/Object;
.source "OrgScoreAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfay$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/OrgScoreDataObject;

.field final synthetic b:Lfay$3;


# direct methods
.method constructor <init>(Lfay$3;Lcom/alibaba/android/user/model/OrgScoreDataObject;)V
    .locals 0
    .param p1, "this$1"    # Lfay$3;

    .prologue
    .line 133
    iput-object p1, p0, Lfay$3$1;->b:Lfay$3;

    iput-object p2, p0, Lfay$3$1;->a:Lcom/alibaba/android/user/model/OrgScoreDataObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lfay$3$1;->b:Lfay$3;

    iget-object v0, v0, Lfay$3;->b:Lcma;

    iget-object v1, p0, Lfay$3$1;->a:Lcom/alibaba/android/user/model/OrgScoreDataObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
