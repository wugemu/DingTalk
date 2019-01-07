.class final Lbbp$76$1;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp$76;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbbp$76;


# direct methods
.method constructor <init>(Lbbp$76;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$1"    # Lbbp$76;

    .prologue
    .line 651
    iput-object p1, p0, Lbbp$76$1;->b:Lbbp$76;

    iput-object p2, p0, Lbbp$76$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 654
    iget-object v0, p0, Lbbp$76$1;->b:Lbbp$76;

    iget-object v0, v0, Lbbp$76;->b:Lcma;

    iget-object v1, p0, Lbbp$76$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 655
    return-void
.end method
