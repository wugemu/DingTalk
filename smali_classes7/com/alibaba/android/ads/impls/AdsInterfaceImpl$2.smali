.class final Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$2;
.super Ljava/lang/Object;
.source "AdsInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;->update(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$2;->b:Lcom/alibaba/android/ads/impls/AdsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 129
    const-string/jumbo v0, "intfc"

    const-string/jumbo v1, "update"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ads/impls/AdsInterfaceImpl$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lanm;->a(Ljava/lang/String;Z)V

    .line 131
    return-void
.end method
