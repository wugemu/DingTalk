.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1$1;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;

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
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;->a:Lhac;

    .line 1035
    iget-object v0, v0, Lhac;->a:Lhag;

    .line 1071
    iget-object v0, v0, Lhag;->b:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;->a:Lhac;

    .line 2035
    iget-object v1, v1, Lhac;->a:Lhag;

    .line 2083
    iget-object v1, v1, Lhag;->c:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;->a:Lhac;

    .line 3035
    iget-object v2, v2, Lhac;->a:Lhag;

    .line 3095
    iget-object v2, v2, Lhag;->d:Landroid/graphics/Bitmap;

    .line 243
    invoke-static {v0, v1, v2}, Lhbb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 244
    return-void
.end method
