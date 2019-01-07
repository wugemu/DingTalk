.class final Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;
.super Ljava/lang/Object;
.source "CheckVersionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a(Ljay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljay;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;Ljay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;->a:Ljay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)Ljba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)Ljba;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;->a:Ljay;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljba;->a(Ljay;I)V

    .line 130
    :cond_0
    return-void
.end method
