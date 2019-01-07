.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$3;
.super Ljava/lang/Object;
.source "AlbumPreviewActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->dismissLoadingDialog()V

    .line 241
    const-string/jumbo v0, "img"

    const-string/jumbo v1, "AlbumActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "compress video error "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 227
    check-cast p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->dismissLoadingDialog()V

    .line 1231
    if-eqz p1, :cond_0

    .line 1232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;Ljava/util/ArrayList;)V

    .line 227
    :cond_0
    return-void
.end method
