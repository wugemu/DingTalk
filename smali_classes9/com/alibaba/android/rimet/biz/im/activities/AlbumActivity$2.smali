.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;
.super Lhae;
.source "AlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p2, "x0"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-direct {p0, p2}, Lhae;-><init>(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    return-void
.end method


# virtual methods
.method public final exec(Lhac;)V
    .locals 4
    .param p1, "event"    # Lhac;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 1035
    iget-object v1, p1, Lhac;->a:Lhag;

    .line 228
    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 1043
    iget-object v2, p1, Lhac;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 230
    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2035
    :try_start_0
    iget-object v1, p1, Lhac;->a:Lhag;

    .line 2071
    iget-object v1, v1, Lhag;->b:Ljava/lang/String;

    .line 3035
    iget-object v2, p1, Lhac;->a:Lhag;

    .line 3083
    iget-object v2, v2, Lhag;->c:Ljava/lang/String;

    .line 4035
    iget-object v3, p1, Lhac;->a:Lhag;

    .line 4095
    iget-object v3, v3, Lhag;->d:Landroid/graphics/Bitmap;

    .line 233
    invoke-static {v1, v2, v3}, Lhbb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 236
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;Lhac;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
