.class final Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;
.super Ljava/lang/Object;
.source "CheckVersionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    iput p2, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)Ljba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "update_tag"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "checkFailure:"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->a:I

    .line 110
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "mode:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    .line 111
    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->b(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 109
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->b(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)Ljba;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v5, v1}, Ljba;->a(Ljay;I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->b:Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)Ljba;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;->a:I

    invoke-interface {v0, v5, v1}, Ljba;->a(Ljay;I)V

    goto :goto_0
.end method
