.class final Lfay$5$1;
.super Ljava/lang/Object;
.source "OrgScoreAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfay$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/OrgScoreDataObject;

.field final synthetic b:Lfay$5;


# direct methods
.method constructor <init>(Lfay$5;Lcom/alibaba/android/user/model/OrgScoreDataObject;)V
    .locals 0
    .param p1, "this$1"    # Lfay$5;

    .prologue
    .line 172
    iput-object p1, p0, Lfay$5$1;->b:Lfay$5;

    iput-object p2, p0, Lfay$5$1;->a:Lcom/alibaba/android/user/model/OrgScoreDataObject;

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
    .line 175
    iget-object v0, p0, Lfay$5$1;->b:Lfay$5;

    iget-object v0, v0, Lfay$5;->b:Lcma;

    iget-object v1, p0, Lfay$5$1;->a:Lcom/alibaba/android/user/model/OrgScoreDataObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 176
    return-void
.end method
