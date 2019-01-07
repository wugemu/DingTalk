.class Lcom/ut/mini/UTAnalytics$1;
.super Ljava/lang/Object;
.source "UTAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTAnalytics;->setChannel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTAnalytics;

.field final synthetic val$aChannel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTAnalytics;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/ut/mini/UTAnalytics$1;->this$0:Lcom/ut/mini/UTAnalytics;

    iput-object p2, p0, Lcom/ut/mini/UTAnalytics$1;->val$aChannel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    invoke-static {}, Laju;->a()Laju;

    move-result-object v0

    .line 1042
    iget-object v0, v0, Laju;->a:Landroid/content/Context;

    .line 304
    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/ut/mini/UTAnalytics$1;->val$aChannel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method
