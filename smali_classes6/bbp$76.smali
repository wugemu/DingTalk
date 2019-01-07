.class final Lbbp$76;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->c(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 647
    iput-object p1, p0, Lbbp$76;->c:Lbbp;

    iput-object p2, p0, Lbbp$76;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbp$76;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 650
    iget-object v1, p0, Lbbp$76;->c:Lbbp;

    invoke-static {v1}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$76;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 651
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbbp$76$1;

    invoke-direct {v2, p0, v0}, Lbbp$76$1;-><init>(Lbbp$76;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 657
    return-void
.end method
