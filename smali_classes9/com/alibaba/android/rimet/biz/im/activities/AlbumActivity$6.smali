.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lekj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->showLoadingDialog()V

    .line 510
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhag;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 514
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lhag;>;"
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->dismissLoadingDialog()V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhag;

    .line 516
    .local v0, "compressedObject":Lhag;
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->a:Ljava/util/Map;

    .line 1071
    iget-object v4, v0, Lhag;->b:Ljava/lang/String;

    .line 516
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 517
    .local v1, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v1, :cond_0

    .line 1083
    iget-object v3, v0, Lhag;->c:Ljava/lang/String;

    .line 518
    iput-object v3, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 1103
    iget-boolean v3, v0, Lhag;->a:Z

    .line 519
    iput-boolean v3, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    goto :goto_0

    .line 522
    .end local v0    # "compressedObject":Lhag;
    .end local v1    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->b:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/ArrayList;)V

    .line 523
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->dismissLoadingDialog()V

    .line 528
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->dismissLoadingDialog()V

    .line 533
    return-void
.end method
