.class final Lcom/alibaba/android/rimet/RimetDDContext$54;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->ctrlClickedAdvertisingId(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 4324
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$54;->b:Lcom/alibaba/android/rimet/RimetDDContext;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$54;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4327
    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$54;->a:Landroid/content/Context;

    invoke-static {v2}, Lcnb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4328
    .local v0, "advertisingId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4329
    .local v1, "dataMap":Ljava/util/Map;
    const-string/jumbo v2, "advertisingId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4330
    const-string/jumbo v2, "currentUid"

    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext$54;->b:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4331
    const-string/jumbo v2, "RimetDDContext"

    const-string/jumbo v3, "advertisingId"

    invoke-static {v2, v3, v1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4332
    return-void
.end method
