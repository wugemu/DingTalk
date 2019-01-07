.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lekk$a;


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
    .line 573
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->showLoadingDialog()V

    .line 577
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhal;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 581
    .local p1, "convertResults":Ljava/util/List;, "Ljava/util/List<Lhal;>;"
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->dismissLoadingDialog()V

    .line 583
    if-eqz p1, :cond_1

    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhal;

    .line 585
    .local v0, "convertedObject":Lhal;
    if-eqz v0, :cond_0

    .line 589
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->a:Ljava/util/Map;

    .line 1027
    iget-object v4, v0, Lhal;->a:Ljava/lang/String;

    .line 589
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 591
    .local v1, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v1, :cond_0

    .line 1043
    iget-object v3, v0, Lhal;->d:Ljava/lang/String;

    .line 591
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2043
    iget-object v3, v0, Lhal;->d:Ljava/lang/String;

    .line 592
    iput-object v3, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    goto :goto_0

    .line 597
    .end local v0    # "convertedObject":Lhal;
    .end local v1    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->b:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/ArrayList;)V

    .line 598
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;->c:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->dismissLoadingDialog()V

    .line 603
    return-void
.end method
